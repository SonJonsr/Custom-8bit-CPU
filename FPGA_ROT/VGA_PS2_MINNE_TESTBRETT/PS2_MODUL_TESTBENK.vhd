LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PS2_MODUL_TESTBENK IS
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
		HEX4, HEX5, HEX6, HEX7	: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0)

  );
END PS2_MODUL_TESTBENK;

ARCHITECTURE RTL OF PS2_MODUL_TESTBENK IS

  -- COMPONENT DECLARATION --
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
  -- END OF COMPONENT DECLARATION --

  -- SIGNALS FOR COMPONENTS --
  SIGNAL ascii: STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL hex0_sig, hex1_sig : STD_LOGIC_VECTOR(6 downto 0);

  signal en_n : STD_LOGIC;
  signal en : STD_LOGIC;


BEGIN
  en <= not en_n;

  ps2_modul_test: PS2_MODUL
   port map(
      clk => CLOCK_50,
      rst_n => KEY(0),
      ps2_clk => PS2_CLK,
      ps2_dat => PS2_DAT,
      en => en,
      rw => SW(17),
      array_select => SW(16),
      rdy => LEDG(0),
      ascii => ascii
  );

  en_prell: antiprell_key
   port map(
      clk => CLOCK_50,
      reset_clk => KEY(0),
      input => KEY(3),
      passering => en_n
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

END RTL;
