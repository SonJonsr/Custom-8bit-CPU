LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY VGA_PS2_MINNE_TESTBRETT IS
  PORT ( 
    -- Inputs from clk & rst_n
    CLOCK_50  : IN STD_LOGIC; 
		SW			  : IN	STD_LOGIC_VECTOR(17 DOWNTO 0);
		KEY			  : IN	STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Inputs from PS/2
    PS2_CLK : IN STD_LOGIC;
    PS2_DAT : IN STD_LOGIC;

    -- Outputs to Led
		LEDR	: OUT	STD_LOGIC_VECTOR(17 DOWNTO 0);
		LEDG	: OUT	STD_LOGIC_VECTOR(8 downto 0);

    -- Outputs to Hex
		HEX0, HEX1, HEX2, HEX3,
		HEX4, HEX5, HEX6, HEX7	: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);

    VGA_CLK         : OUT STD_LOGIC;
    VGA_BLANK_N,
    VGA_SYNC_N      : OUT STD_LOGIC;
    VGA_HS, VGA_VS  : OUT STD_LOGIC;
    VGA_R,
    VGA_G, VGA_B : OUT STD_LOGIC_VECTOR(7 downto 0)

  );
END VGA_PS2_MINNE_TESTBRETT;

ARCHITECTURE RTL OF VGA_PS2_MINNE_TESTBRETT IS
  COMPONENT SKJERMKORT IS
    PORT ( 
      pixel_clk   : IN STD_LOGIC;
      rst_n       : IN STD_LOGIC;
      dat         : IN  STD_LOGIC_VECTOR(15 downto 0);
      adr         : OUT STD_LOGIC_VECTOR(14 downto 0);
      VGA_CLK     : OUT STD_LOGIC;
      VGA_BLANK_N : OUT STD_LOGIC;
      VGA_SYNC_N  : OUT STD_LOGIC;
      VGA_HS      : OUT STD_LOGIC;
      VGA_VS      : OUT STD_LOGIC;
      VGA_R       : OUT STD_LOGIC_VECTOR(7 downto 0);
      VGA_G       : OUT STD_LOGIC_VECTOR(7 downto 0);
      VGA_B       : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
  END COMPONENT;
  COMPONENT pixel_clk IS
    PORT
    (
      areset	: IN STD_LOGIC;
      inclk0	: IN STD_LOGIC;
      c0		  : OUT STD_LOGIC;
      locked	: OUT STD_LOGIC 
    );
  END COMPONENT;
  COMPONENT PS2_MODUL IS
  PORT ( 
    clk   : IN STD_LOGIC; 
    rst_n : IN STD_LOGIC;
    ps2_clk : IN STD_LOGIC;
    ps2_dat : IN STD_LOGIC;
    en            : IN STD_LOGIC;
    rw            : IN STD_LOGIC;
    array_select  : IN STD_LOGIC;
    rdy   : OUT STD_LOGIC;
    ascii : OUT STD_LOGIC_VECTOR(7 downto 0)
  );
  END COMPONENT;
	component antiprell_key is
		port(
			clk : in std_logic;
			reset_clk : in std_logic;
			input : in std_logic;
			passering : out std_logic
		);
	end component antiprell_key;
	COMPONENT ROM_7_seg IS
		PORT(
			adresse   : IN  std_logic_vector(3 downto 0);
			HEX : OUT std_logic_vector(6 downto 0)); -- gfedcba
	END COMPONENT;
  COMPONENT MINNEMODUL IS 
    PORT (
      address_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      address_b		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
      clock_a		: IN STD_LOGIC;
      clock_b		: IN STD_LOGIC;
      data_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      wren_a		: IN STD_LOGIC;
      wren_b		: IN STD_LOGIC;
      q_a		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT falling_edge_detector IS
    PORT ( 
      clk     : IN STD_LOGIC;
      sig     : IN STD_LOGIC;
      falling_edge_detected : OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT rising_edge_detector IS
    PORT ( 
      clk     : IN STD_LOGIC;
      sig     : IN STD_LOGIC;
      rising_edge_detected : OUT STD_LOGIC
    );
  END COMPONENT;
  -- END OF COMPONENT DECLARATION --

  -- SIGNALS FOR COMPONENTS --
  SIGNAL ascii: STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL hex0_sig, hex1_sig : STD_LOGIC_VECTOR(6 downto 0);

  signal en_n : STD_LOGIC;
  signal en : STD_LOGIC;

  SIGNAL arst : STD_LOGIC := '0';
  SIGNAL pixel_clk_sig : STD_LOGIC;
  SIGNAL locked: STD_LOGIC;

  SIGNAL dat1_out : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL dat1_in : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL adr1 : STD_LOGIC_VECTOR(15 downto 0);
  SIGNAL wren1 : STD_LOGIC := '0';

  SIGNAL dat2_out : STD_LOGIC_VECTOR(15 downto 0);
  SIGNAL dat2_in : STD_LOGIC_VECTOR(15 downto 0);
  SIGNAL adr2 : STD_LOGIC_VECTOR(14 downto 0);
  SIGNAL wren2 : STD_LOGIC := '0';

  SIGNAL en_n_falling : STD_LOGIC;

  -- INTERNAL SIGNALS --
  TYPE wr_to_vram IS (IDLE, START, SEND_ASCII, SEND_ATTR, DONE);
  SIGNAL state : wr_to_vram := IDLE;
  SIGNAL adr1_int : INTEGER RANGE 4799 downto 0 := 0;
  SIGNAL attr : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL rdy : STD_LOGIC;
  SIGNAL rdy_rising : STD_LOGIC;

  SIGNAL send_counter : INTEGER range 15 downto 0 := 0;
BEGIN
  LEDG(0) <= rdy;
  dat2_in <= (others => 'Z');

  test : process(CLOCK_50)
  begin
    if (rising_edge(CLOCK_50)) then
      case state is
        -- Venter på at key(3) trykkes
        when IDLE =>
          if (ascii /= x"00") then
            dat1_in <= ascii;
            send_counter <= 0;
            en <= '1';
            state <= START;
            -- Setter adr1 for ascii
            adr1 <= STD_LOGIC_VECTOR(to_unsigned(adr1_int, adr1'LENGTH));
          else
            en <= '0';
          end if;

        when START =>
          en <= '0';
          state <= SEND_ASCII;
          
        when SEND_ASCII =>
          send_counter <= send_counter + 1;
          if (send_counter = 15) then
            dat1_in <= SW(7 downto 0);
            state <= SEND_ATTR;
          elsif (send_counter = 6) then
            adr1 <= STD_LOGIC_VECTOR(to_unsigned(adr1_int, adr1'LENGTH));
          elsif (send_counter = 5) then
            adr1_int <= adr1_int + 1;
          elsif (send_counter = 1) then
            wren1 <= '1';
          else 
            wren1 <= '0';
          end if;

        when SEND_ATTR =>
          send_counter <= send_counter + 1;
          if (send_counter = 15) then
            state <= DONE;
            if (adr1_int = 4799) then
              adr1_int <= 0;
            else
              adr1_int <= adr1_int + 1;
            end if;
          elsif (send_counter = 1) then
            wren1 <= '1';
          else 
            wren1 <= '0';
          end if;

        when DONE =>
          send_counter <= 0;
          state <= IDLE;

      end case;
    end if;
  end process;

  ps2_modul_test: PS2_MODUL
   port map(
      clk => CLOCK_50,
      rst_n => KEY(0),
      ps2_clk => PS2_CLK,
      ps2_dat => PS2_DAT,
      en => en,
      rw => SW(17),
      array_select => SW(16),
      rdy => rdy,
      ascii => ascii
  );

  en_prell: antiprell_key
   port map(
      clk => CLOCK_50,
      reset_clk => KEY(0),
      input => KEY(3),
      passering => en_n
  );

  rising_edge_detector_inst: rising_edge_detector
   port map(
      clk => CLOCK_50,
      sig => rdy,
      rising_edge_detected => rdy_rising
  );

  falling_edge_detector_inst: falling_edge_detector
   port map(
      clk => CLOCK_50,
      sig => en_n,
      falling_edge_detected => en_n_falling
  );

  hex0_seg : ROM_7_seg
   port map(
      adresse => ascii(3 downto 0),
      HEX => HEX0
  );
  hex1_seg : ROM_7_seg
   port map(
      adresse => ascii(7 downto 4),
      HEX => HEX1
  );

  pixel_clk_inst: pixel_clk
   port map(
      areset => arst,
      inclk0 => CLOCK_50,
      c0 => pixel_clk_sig,
      locked => locked
  );

  SKJERMKORT_inst: SKJERMKORT
   port map(
      pixel_clk => pixel_clk_sig,
      rst_n => KEY(0),
      dat => dat2_out, 
      adr => adr2,
      VGA_CLK => VGA_CLK,
      VGA_BLANK_N => VGA_BLANK_N,
      VGA_SYNC_N => VGA_SYNC_N,
      VGA_HS => VGA_HS,
      VGA_VS => VGA_VS,
      VGA_R => VGA_R,
      VGA_G => VGA_G,
      VGA_B => VGA_B
  );

  MINNEMODUL_inst: MINNEMODUL
   port map(
      address_a => adr1,
      address_b => adr2,
      clock_a => CLOCK_50,
      clock_b => pixel_clk_sig,
      data_a => dat1_in,
      data_b => dat2_in,
      wren_a => wren1,
      wren_b => wren2,
      q_a => dat1_out,
      q_b => dat2_out
  );

END RTL;
