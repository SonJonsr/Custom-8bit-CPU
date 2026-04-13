library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity motherboard is
  generic(
    adr_keyboard_ascii  : std_logic_vector(15 downto 0) := x"92C1";
    adr_keyboard_info   : std_logic_vector(15 downto 0) := x"92C2";
    adr_random          : std_logic_vector(15 downto 0) := x"92C3";
    adr_timer_millis_ll : std_logic_vector(15 downto 0) := x"92C4";
    adr_timer_millis_hh : std_logic_vector(15 downto 0) := x"92C5";
    adr_eeprom_start    : std_logic_vector(15 downto 0) := x"92C6";
    adr_eeprom_end      : std_logic_vector(15 downto 0) := x"93C5"
  );
  port (
    CLOCK_50 : in  std_logic;
    CLOCK_25 : in  std_logic;
    KEY : in  std_logic_vector(3 downto 0);
    SW  : in  std_logic_vector(17 downto 0);

    GPIO      : inout std_logic_vector(35 downto 0); 

    -- EEPROM I2C ports
    EEP_I2C_SCLK  : out std_logic;
    EEP_I2C_SDAT  : inout std_logic;

    HEX0, HEX1, HEX2, HEX3,
    HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0) := (others => '0');

		LCD_RS, LCD_EN	: OUT	  STD_LOGIC;
		LCD_RW			    : OUT   STD_LOGIC;
		LCD_DATA		    : INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
end entity;

architecture RTL of motherboard is
component memory is
  port (
    clk_a, clk_b : in  std_logic;

    -- Port A: 8-bit for CPU
    addr_a       : in  std_logic_vector(15 downto 0);
    data_in_a    : in  std_logic_vector(7 downto 0);
    we_a         : in  std_logic;
    data_out_a   : out std_logic_vector(7 downto 0);

    -- Port B: 16-bit for Screencard
    addr_b       : in  std_logic_vector(15 downto 0);
    data_out_b   : out std_logic_vector(7 downto 0)
  );
end component;
  component memory_support is
    generic(
      adr_keyboard_ascii  : std_logic_vector(15 downto 0) := x"92C1";
      adr_keyboard_info   : std_logic_vector(15 downto 0) := x"92C2";
      adr_random          : std_logic_vector(15 downto 0) := x"92C3";
      adr_timer_millis_ll : std_logic_vector(15 downto 0) := x"92C4";
      adr_timer_millis_hh : std_logic_vector(15 downto 0) := x"92C5";
      adr_eeprom_start    : std_logic_vector(15 downto 0) := x"92C6";
      adr_eeprom_end      : std_logic_vector(15 downto 0) := x"93C5"
    );
    port (
      clk           : in  std_logic;
      rst_n         : in  std_logic;
      clk_slow      : in  std_logic;

      timer_millis    : in  std_logic_vector(15 downto 0);
      random_byte     : in  std_logic_vector(7 downto 0);
      keyboard_data   : in  std_logic_vector(7 downto 0);
      keyboard_rdy    : in  std_logic := '0';
      keyboard_en     : out std_logic := '0';
      keyboard_rw     : out std_logic := '0';
      keyboard_as     : out std_logic := '0';

      cpu_rw        : in    std_logic;
      cpu_address   : in    std_logic_vector(15 downto 0);
      cpu_data      : inout std_logic_vector(7 downto 0);

      mem_wren      : out std_logic := '0';
      mem_data_out  : in  std_logic_vector(7 downto 0);
      mem_data_in   : out std_logic_vector(7 downto 0) := x"00";
      mem_address   : out std_logic_vector(15 downto 0) := x"0000";

      eeprom_rw     : out std_logic := '0';
      eeprom_adr    : out std_logic_vector(7 downto 0);
      eeprom_dat    : inout std_logic_vector(7 downto 0)
    );
  end component;
  component PS2_MODUL IS
    PORT ( 
      -- Inputs from clk & rst_n
      clk   : IN STD_LOGIC; 
      rst_n : IN STD_LOGIC;

      -- Inputs from PS/2
      ps2_clk : IN STD_LOGIC;
      ps2_dat : IN STD_LOGIC;

      -- Inputs from memory
      en            : IN STD_LOGIC;
      rw            : IN STD_LOGIC;
      array_select  : IN STD_LOGIC;

      -- Outputs
      rdy   : OUT STD_LOGIC := '0';
      ascii : OUT STD_LOGIC_VECTOR(7 downto 0) := x"00"
    );
  END component;
  component clock_controller is
    port (
      clk : in std_logic;
      rst_n : in std_logic;

      btn : in std_logic;
      
      clock_speed_select  : in std_logic_vector(3 downto 0);
      duty_cycle_select   : in std_logic_vector(3 downto 0);

      clk_slow : out std_logic := '0'
    );
  end component;
  component eeprom_manager is
    port(
      clk	  : in	std_logic;
      rst_n : in	std_logic;

      -- from cpu
      rw        : in  std_logic;
      adr_cpu   : in  std_logic_vector(7 downto 0);
      data_cpu  : inout std_logic_vector(7 downto 0);

      -- EEPROM I2C ports
      EEP_I2C_SCLK  : out std_logic;
      EEP_I2C_SDAT  : inout std_logic
    );
  end component;
  component random is
    port(
      clk   : in  std_logic;
      rst_n : in  std_logic;
      random_byte : out std_logic_vector(7 downto 0) := x"FF"
    );
  end component;
  component screencard IS
    GENERIC(
    -- Display memory start
      main_display_adr : unsigned(15 downto 0) := "1000000000000000";
      info_display_adr : unsigned(15 downto 0) := "1000111100000000";
    -- Horizontal
      h_pixels : INTEGER := 640;
      h_front_porch : INTEGER := 16;
      h_sync_pulse : INTEGER := 96;
      h_back_porch : INTEGER := 48;
      h_polarity : STD_LOGIC := '0';
    -- Vertical
      v_pixels : INTEGER := 480;
      v_front_porch : INTEGER := 10;
      v_sync_pulse : INTEGER := 2;
      v_back_porch : INTEGER := 33;
      v_polarity : STD_LOGIC := '0'
    );
    PORT ( 
      pixel_clk   : IN STD_LOGIC;
      rst_n       : IN STD_LOGIC;

      -- Interface med minnet
      dat         : IN  STD_LOGIC_VECTOR(7 downto 0);
      adr         : OUT STD_LOGIC_VECTOR(15 downto 0);
      
      -- Interface med VGA-kabel
      VGA_CLK     : OUT STD_LOGIC;
      VGA_BLANK_N : OUT STD_LOGIC;
      VGA_SYNC_N  : OUT STD_LOGIC;
      VGA_HS      : OUT STD_LOGIC;
      VGA_VS      : OUT STD_LOGIC;
      VGA_R       : OUT STD_LOGIC_VECTOR(7 downto 0);
      VGA_G       : OUT STD_LOGIC_VECTOR(7 downto 0);
      VGA_B       : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
  END component;
  component timer_millis is
    generic(
      -- CLOCK_SPEED MUST BE HIGHER THAN 1kHz
      CLOCK_SPEED : INTEGER := 50_000_000
    );
    port(
      clk   : in  std_logic;
      rst_n : in  std_logic;
      millis : out std_logic_vector(15 downto 0) := (others => '0')
    );
  end component;


  signal cpu_rw        : std_logic;
  signal cpu_address   : std_logic_vector(15 downto 0;
  signal cpu_data      : std_logic_vector(7 downto 0);

  signal mem_wren      : std_logic;
  signal mem_data_out  : std_logic_vector(7 downto 0);
  signal mem_data_in   : std_logic_vector(7 downto 0);
  signal mem_address   : std_logic_vector(15 downto 0);


begin
  memory_inst: memory
   port map(
      clk_a => CLOCK_50,
      clk_b => CLOCK_25,
      addr_a => addr_a,
      data_in_a => data_in_a,
      we_a => we_a,
      data_out_a => data_out_a,
      addr_b => addr_b,
      data_out_b => data_out_b
  );


end architecture;
