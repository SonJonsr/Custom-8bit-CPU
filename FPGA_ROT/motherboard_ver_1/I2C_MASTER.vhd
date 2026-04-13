LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY I2C_MASTER IS
  PORT(
    -- Clock og reset
    CLK         : IN    STD_LOGIC;
    RST_N         : IN    STD_LOGIC;

    -- SCL og SDA porter
    SCL         : OUT   STD_LOGIC := 'Z';
    SDA         : INOUT STD_LOGIC := 'Z';

    -- Fra eeprom_i2c_controller
    EN : IN STD_LOGIC;
    WR_N : IN STD_LOGIC;
    STOPP : IN STD_LOGIC;
    GO_IDLE : IN STD_LOGIC;
    BAUD_RATE : IN STD_LOGIC_VECTOR(7 downto 0);
    WR_BYTE : IN STD_LOGIC_VECTOR(7 downto 0);

    -- Til I2C_MASTER_REG
    IDLE : OUT STD_LOGIC;
    DONE : OUT STD_LOGIC;
    NO_ACK : OUT STD_LOGIC;
    RD_BYTE: OUT STD_LOGIC_VECTOR(7 downto 0)
 
  );
END ENTITY I2C_MASTER;

ARCHITECTURE RTL OF I2C_MASTER IS
  signal SDA_OUT : STD_LOGIC;
  signal SDA_IN : STD_LOGIC;
  signal SDA_OE : STD_LOGIC;

  
  SIGNAL sda_in_sync : STD_LOGIC;

  SIGNAL baud_cnt : integer range 0 to 255 := 0;
  SIGNAL baud_limit : integer range 0 to 255 := 255;
  SIGNAL baud_done : STD_LOGIC;

  SIGNAL stopp_internal : STD_LOGIC;
  SIGNAL go_idle_internal : STD_LOGIC;

  SIGNAL w_byte : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL r_byte : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL ack_n : STD_LOGIC;

  TYPE PHASE_TYPE IS (pIDLE, pFIRST, pMID, pEND);
  TYPE MODE_TYPE IS (mWRITE, mREAD);
  TYPE STATE_TYPE IS (sIDLE, sSTART, sTRANSFER, sACK, sHOLD, sSTOPP);

  SIGNAL PHASE : PHASE_TYPE := pIDLE;
  SIGNAL MODE : MODE_TYPE := mWRITE;
  SIGNAL STATE : STATE_TYPE := sIDLE;

  component dff_synk
    port(
      data_in, clk : in std_logic;
      data_out : out std_logic
    );
  end component dff_synk;

BEGIN
  --# SDA #--
  SDA <= SDA_OUT when SDA_OE = '1' and SDA_OUT = '0' else 'Z';
  SDA_IN <= sda_in_sync;

  p_BAUD: process(CLK)
  begin
    if rising_edge(CLK) then
      if RST_N = '0' or baud_done = '1' or STATE = sIDLE then
        baud_cnt <= 0;
      else
        baud_cnt <= baud_cnt + 1;
      end if;
    end if;
  end process p_BAUD;

  baud_done <= '1' when (baud_cnt >= baud_limit) else '0';

  p_STATE_MACHINE: process(CLK)
    VARIABLE bit_cnt : integer range 0 to 7 := 7;
  begin
    if rising_edge(CLK) then
      if RST_N = '0' then
        bit_cnt := 7;
        STATE <= sIDLE;
        stopp_internal <= '0';
        go_idle_internal <= '0';
        IDLE <= '1';
        DONE <= '0';
        SDA_OE <= '1';
        SDA_OUT <= '1';
        r_byte <= (others => '0');
        RD_BYTE <= (others => '0');
      else
        case STATE is

          --# sIDLE #--
          when sIDLE =>
            IDLE <= '1';
            SDA_OUT <= '1';
            SDA_OE <= '1';
            if EN = '1' then
              NO_ACK <= '0';
              ack_n <= '0';
              STATE <= sSTART;
              baud_limit <= to_integer(unsigned(BAUD_RATE));
              w_byte <= WR_BYTE;
              stopp_internal <= STOPP;
              go_idle_internal <= GO_IDLE;
              if WR_N = '0' then
                MODE <= mWRITE;
              else
                MODE <= mREAD;
              end if;

            end if;

            --# sSTART #--
          when sSTART =>
            IDLE <= '0';
            DONE <= '0';
            SDA_OE <= '1';
            SDA_OUT <= '1';
            case PHASE is
              when pIDLE =>

              -- pFIRST
              when pFIRST =>
                SDA_OUT <= '1';

                -- pMID
              when pMID =>
                SDA_OUT <= '0';

                -- pEND
              when pEND =>
                SDA_OUT <= '0';
                if baud_done = '1' then
                  STATE <= sTRANSFER;
                end if;
            end case;

            --# sTRANSFER #--
          when sTRANSFER =>
            case PHASE is
              when pIDLE =>

              -- pFIRST
              when pFIRST =>
                case MODE is
                  when mREAD =>
                    SDA_OE <= '0';
                  when mWRITE =>
                    SDA_OE <= '1';
                    SDA_OUT <= w_byte(bit_cnt);
                end case;

                -- pMID
              when pMID =>
                case MODE is

                  when mREAD =>
                    if baud_cnt = baud_limit/2 then
                      r_byte(bit_cnt) <= sda_in_sync;
                    end if;

                  when mWRITE =>
                    SDA_OUT <= w_byte(bit_cnt);
                end case;

                -- pEND
              when pEND =>
                if baud_done = '1' and bit_cnt = 0 then
                  STATE <= sACK;
                  bit_cnt := 7;
                elsif baud_done = '1' then
                  bit_cnt := bit_cnt - 1;
                end if;
            end case;

            --# sACK #--
          when sACK =>
            case PHASE is
              when pIDLE =>

              -- pFIRST
              when pFIRST =>
                case MODE is
                  when mWRITE =>
                    SDA_OE <= '0';
                  when mREAD =>
                    SDA_OE <= '1';
                    ack_n <= '0';
                    if stopp_internal = '1' then
                      -- setter ack høy så slave forstår at vi er ferdig
                      SDA_OUT <= '1';
                    else 
                      SDA_OUT <= '0';
                    end if;
                end case;

                -- pMID
              when pMID =>
                case MODE is
                  when mWRITE =>
                    if baud_cnt = baud_limit/2 then
                      ack_n <= sda_in_sync;
                    end if;
                  when mREAD =>
                    
                end case;

                -- pEND
              when pEND =>
                RD_BYTE <= r_byte;
                if baud_done = '1' then
                  DONE <= '1';
                  NO_ACK <= ack_n;
                  if stopp_internal = '1' then
                    STATE <= sSTOPP;
                  elsif go_idle_internal = '1' then
                    STATE <= sIDLE;
                  else
                    STATE <= sHOLD;
                  end if;
                end if;
            end case;

            --# sHOLD #--
          when sHOLD =>
            if MODE = mWRITE and ack_n = '1' then
              STATE <= sIDLE;
            elsif EN = '1' then
              DONE <= '0';
              STATE <= sTRANSFER;
              baud_limit <= to_integer(unsigned(BAUD_RATE));
              w_byte <= WR_BYTE;
              stopp_internal <= STOPP;
              go_idle_internal <= GO_IDLE;
              if WR_N = '0' then
                MODE <= mWRITE;
              else
                MODE <= mREAD;
              end if;

           end if;

            --# sSTOPP #--
          when sSTOPP =>
            SDA_OE <= '1';
            case PHASE is
              when pIDLE =>

              when pFIRST =>
                SDA_OUT <= '0';

              when pMID =>
                SDA_OUT <= '0';

              when pEND =>
                SDA_OUT <= '1';
                if baud_done = '1' then
                  STATE <= sIDLE;
                end if;
            end case;

        end case;
        
      end if;
    end if;
  end process p_STATE_MACHINE;

  
  p_PHASE: process(CLK)
  begin
    if rising_edge(CLK) then
      if RST_N = '0' then
        PHASE <= pIDLE;
        SCL <= 'Z';
      else
        case PHASE is
          when pIDLE =>
            SCL <= 'Z';

          when pFIRST =>
            if STATE = sSTART then
              SCL <= 'Z';
            else
              SCL <= '0';
            end if;

          when pMID =>
            SCL <= 'Z';

          when pEND =>
            if STATE = sSTOPP then
              SCL <= 'Z';
            else
              SCL <= '0';
            end if;
        end case;

        if baud_done = '1' and PHASE = pEND and STATE = sSTOPP then
          PHASE <= pIDLE;
        elsif STATE = sSTART and PHASE = pIDLE then
          PHASE <= pFIRST;
        elsif baud_done = '1' then
          case PHASE is
            when pIDLE =>
            when pFIRST =>
              PHASE <= pMID;
            when pMID =>
              PHASE <= pEND;
            when pEND =>
              PHASE <= pFIRST;
          end case;
        end if;
      end if;
    end if;
  end process p_PHASE;

  c_dff_synk : dff_synk
    port map(
      data_in => SDA,
      clk => CLK,
      data_out => sda_in_sync
    );

END ARCHITECTURE RTL;


