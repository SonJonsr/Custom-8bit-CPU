library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eeprom_manager_testbench is
  port(
		CLOCK_50 : in	std_logic;

    KEY         : in  std_logic_vector(3 downto 0);
    SW          : in std_logic_vector(17 downto 0);

    HEX0, HEX1 : out std_logic_vector(6 downto 0);

    -- EEPROM I2C ports
    EEP_I2C_SCLK  : out std_logic;
    EEP_I2C_SDAT  : inout std_logic
  );
end entity;

architecture RTL of eeprom_manager_testbench is
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
  component antibounce_key is
    port(
      clk             : in std_logic;
      rst_n           : in std_logic;
      key             : in std_logic;
      key_antibounced : out std_logic := '1'
    );
  end component;
  component ROM_7_SEG is
      port(
          adresse : in  std_logic_vector(3 downto 0);
          HEX     : out std_logic_vector(6 downto 0)
      );
  end component ROM_7_SEG;

  signal key_antibounced      : std_logic := '1';
  signal key_antibounced_dff  : std_logic := '1';
  signal rw                   : std_logic := '0';
  signal data_cpu             : std_logic_vector(7 downto 0) := "ZZZZZZZZ";
begin
  process(CLOCK_50)
  begin
    if rising_edge(CLOCK_50) then
      key_antibounced_dff <= key_antibounced;
      if key_antibounced = '0' and key_antibounced_dff = '1' then
        rw <= '1';
        data_cpu <= SW(7 downto 0);
      else
        rw <= '0';
        data_cpu <= "ZZZZZZZZ";
      end if;
    end if;
  end process;
  antibounce_key_inst: antibounce_key
   port map(
      clk => CLOCK_50,
      rst_n => KEY(3),
      key => KEY(0),
      key_antibounced => key_antibounced
  );
  hex0_inst : ROM_7_SEG
   port map(
      adresse => data_cpu(3 downto 0),
      HEX => HEX0
  );
  hex1_inst : ROM_7_SEG
   port map(
      adresse => data_cpu(7 downto 4),
      HEX => HEX1
  );
  eeprom_manager_inst: eeprom_manager
   port map(
      clk => CLOCK_50,
      rst_n => KEY(3),
      rw => rw,
      adr_cpu => SW(15 downto 8),
      data_cpu => data_cpu,
      EEP_I2C_SCLK => EEP_I2C_SCLK,
      EEP_I2C_SDAT => EEP_I2C_SDAT
  );
end RTL;
