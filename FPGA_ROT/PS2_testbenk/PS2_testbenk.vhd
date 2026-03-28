LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY PS2_testbenk IS
  PORT ( 
    CLOCK_50  : IN STD_LOGIC;
    PS2_CLK   : IN STD_LOGIC;
    PS2_DAT   : IN STD_LOGIC;
    ERROR_N   : OUT STD_LOGIC := '1';
    DATA      : OUT STD_LOGIC_VECTOR(7 downto 0);
    INFO      : OUT STD_LOGIC_VECTOR(7 downto 0)
  );
END ENTITY;

ARCHITECTURE RTL OF PS2_testbenk IS 

  component dff_synk
    port(
      data_in, clk : in std_logic;
      data_out : out std_logic
    );
  end component dff_synk;

  SIGNAL clk_sync : STD_LOGIC := '1';
  SIGNAL clk_dff  : STD_LOGIC := '1';
  SIGNAL dat_sync : STD_LOGIC := '1';
  SIGNAL dat_dff  : STD_LOGIC := '1';

  SIGNAL new_signal : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

  SIGNAL parity_bit : STD_LOGIC := '0';
  SIGNAL parity_pass : STD_LOGIC := '0';

  TYPE BYTE_ARRAY IS ARRAY (15 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL last_msg_array : BYTE_ARRAY;


  TYPE TILSTANDS_MASKIN IS (IDLE, START, DATA_IN, PARITY, STOP, ERROR);
  SIGNAL ps2_state : TILSTANDS_MASKIN := IDLE;


BEGIN

  parity_pass <= '1' when (parity_bit = dat_sync) else '0';

  DATA <= last_msg_array(0);


  sjekker_prosess : process(CLOCK_50) is
    variable counter : integer range 7 downto 0 := 0;
  begin
    if (rising_edge(CLOCK_50)) then
      clk_dff <= clk_sync;
      dat_dff <= dat_sync;
      case ps2_state is
        when IDLE =>
          if (dat_dff = '1' and dat_sync = '0') then
            ps2_state <= START;
          end if;
        when START =>
          if (clk_dff = '1' and clk_sync = '0') then
            counter := 0;
            parity_bit <= '1';
            ERROR_N <= '1';
            if (dat_sync = '0') then
              ps2_state <= DATA_IN;
            else
              ps2_state <= ERROR;
            end if; 
          end if;

        when DATA_IN =>
          if (clk_dff = '1' and clk_sync = '0') then
            parity_bit <= parity_bit xor dat_sync;
            new_signal <= dat_sync & new_signal(7 downto 1);
            if (counter = 7) then
              ps2_state <= PARITY;
            end if;
            counter := counter + 1;
          end if;

        when PARITY =>
          if (clk_dff = '1' and clk_sync = '0') then
            if (parity_pass = '1') then
              ps2_state <= STOP;
            else
              ps2_state <= ERROR;
            end if;
          end if;

        when STOP =>
          if (clk_dff = '1' and clk_sync = '0') then
            if (dat_sync = '1') then
              last_msg_array <= last_msg_array(14 downto 0) & new_signal;
              ps2_state <= IDLE;
            else
              ps2_state <= ERROR;
            end if;
          end if;
        when ERROR =>

          ERROR_N <= '0';
          ps2_state <= IDLE;

      end case;
    end if;
  end process;

  clk_sync_ps2 : dff_synk
   port map(
      data_in => PS2_CLK,
      clk => CLOCK_50,
      data_out => clk_sync
  );

  dat_sync_ps2: dff_synk
   port map(
      data_in => PS2_DAT,
      clk => CLOCK_50,
      data_out => dat_sync
  );



END RTL;
