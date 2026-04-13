library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity skjermkort_minne_testbenk is
  port (
    CLOCK_25 : in std_logic;
    
    VGA_CLK     : out std_logic;
    VGA_BLANK_N : out std_logic;
    VGA_SYNC_N  : out std_logic;
    VGA_HS      : out std_logic;
    VGA_VS      : out std_logic;
    VGA_R       : out std_logic_vector(7 downto 0);
    VGA_G       : out std_logic_vector(7 downto 0);
    VGA_B       : out std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of skjermkort_minne_testbenk is

  component minne is
    port (
      clk_a, clk_b : in  std_logic;

      -- Port A: 8-bit for CPU
      addr_a       : in  std_logic_vector(15 downto 0);
      data_in_a    : in  std_logic_vector(7 downto 0);
      we_a         : in  std_logic;
      data_out_a   : out std_logic_vector(7 downto 0);

      -- Port B: 16-bit for Screencard
      addr_b       : in  std_logic_vector(14 downto 0);
      data_out_b   : out std_logic_vector(15 downto 0)
    );
  end component;

  component SKJERMKORT is
    port ( 
      pixel_clk   : in std_logic;
      rst_n       : in std_logic;

      -- interface med minnet
      dat         : in  std_logic_vector(15 downto 0);
      adr         : out std_logic_vector(14 downto 0);
      
      -- Interface med VGA-kabel
      VGA_CLK     : out std_logic;
      VGA_BLANK_N : out std_logic;
      VGA_SYNC_N  : out std_logic;
      VGA_HS      : out std_logic;
      VGA_VS      : out std_logic;
      VGA_R       : out std_logic_vector(7 downto 0);
      VGA_G       : out std_logic_vector(7 downto 0);
      VGA_B       : out std_logic_vector(7 downto 0)
    );
  end component;

      signal addr_a       : std_logic_vector(15 downto 0) := (others => '0');
      signal data_in_a    : std_logic_vector(7 downto 0) := (others => '0');
      signal we_a         : std_logic := '0';
      signal data_out_a   : std_logic_vector(7 downto 0);
      signal adr          : std_logic_vector(14 downto 0);
      signal dat          : std_logic_vector(15 downto 0);
      signal rst_n        : std_logic := '1';

begin
  minne_inst: minne
   port map(
      clk_a => CLOCK_25,
      clk_b => CLOCK_25,
      addr_a => addr_a,
      data_in_a => data_in_a,
      we_a => we_a,
      data_out_a => data_out_a,
      addr_b => adr,
      data_out_b => dat
  );
  skjermkort_inst: SKJERMKORT
   port map(
      pixel_clk => CLOCK_25,
      rst_n => rst_n,
      dat => dat,
      adr => adr,
      VGA_CLK => VGA_CLK,
      VGA_BLANK_N => VGA_BLANK_N,
      VGA_SYNC_N => VGA_SYNC_N,
      VGA_HS => VGA_HS,
      VGA_VS => VGA_VS,
      VGA_R => VGA_R,
      VGA_G => VGA_G,
      VGA_B => VGA_B
  );
end RTL;
