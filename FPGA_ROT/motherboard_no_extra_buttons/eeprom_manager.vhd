library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eeprom_manager is
  port(
		clk	  : in	std_logic;
		rst_n : in	std_logic;

    -- from cpu
    rw        : in  std_logic;
    adr_cpu   : in  std_logic_vector(7 downto 0);
    data_in   : in  std_logic_vector(7 downto 0);
    data_out  : out std_logic_vector(7 downto 0);

    -- EEPROM I2C ports
    EEP_I2C_SCLK  : out std_logic;
    EEP_I2C_SDAT  : inout std_logic
  );
end entity;

architecture RTL of eeprom_manager is
  component eeprom_i2c_controller is
    generic(
      setup_wait : integer := 100_000
    );
    port(
      clk	  : in	std_logic;
      rst_n : in	std_logic;

      -- from cpu
      rw        : in  std_logic;
      adr_cpu   : in  std_logic_vector(7 downto 0);
      data_in   : in  std_logic_vector(7 downto 0);
      data_out  : out std_logic_vector(7 downto 0);

      -- From I2C_MASTER
      IDLE : in std_logic;
      DONE : in std_logic;
      NO_ACK : in std_logic;
      RD_BYTE: in std_logic_vector(7 downto 0);

      -- To I2C_MASTER
      EN : out std_logic;
      WR_N : out std_logic;
      STOPP : out std_logic;
      GO_IDLE : out std_logic;
      BAUD_RATE : out std_logic_vector(7 downto 0);
      WR_BYTE : out std_logic_vector(7 downto 0)
    );
  end component;

  component I2C_MASTER is
    port(
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
  end component;

      signal IDLE      : std_logic;
      signal DONE      : std_logic;
      signal NO_ACK    : std_logic;
      signal EN        : std_logic;
      signal WR_N      : std_logic;
      signal STOPP     : std_logic;
      signal GO_IDLE   : std_logic;

      signal RD_BYTE   : std_logic_vector(7 downto 0);
      signal WR_BYTE   : std_logic_vector(7 downto 0);

      -- Baud-rate is set to 400kHz for I2C fast mode
      signal BAUD_RATE : std_logic_vector(7 downto 0) := "00101010";

begin
  eeprom_i2c_controller_inst: eeprom_i2c_controller
   port map(
      clk => clk,
      rst_n => rst_n,
      rw => rw,
      adr_cpu => adr_cpu,
      data_in => data_in,
      data_out  => data_out,
      IDLE => IDLE,
      DONE => DONE,
      NO_ACK => NO_ACK,
      RD_BYTE => RD_BYTE,
      EN => EN,
      WR_N => WR_N,
      STOPP => STOPP,
      GO_IDLE => GO_IDLE,
      BAUD_RATE => BAUD_RATE,
      WR_BYTE => WR_BYTE
  );

  i2c_master_inst: I2C_MASTER
   port map(
      CLK => clk,
      RST_N => rst_n,
      SCL => EEP_I2C_SCLK,
      SDA => EEP_I2C_SDAT,
      EN => EN,
      WR_N => WR_N,
      STOPP => STOPP,
      GO_IDLE => GO_IDLE,
      BAUD_RATE => BAUD_RATE,
      WR_BYTE => WR_BYTE,
      IDLE => IDLE,
      DONE => DONE,
      NO_ACK => NO_ACK,
      RD_BYTE => RD_BYTE
  );
end RTL;
