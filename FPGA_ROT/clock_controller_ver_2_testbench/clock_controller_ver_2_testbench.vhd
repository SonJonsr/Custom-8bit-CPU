library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_controller_ver_2_testbench is
  port ( 
    CLOCK_50  : in    std_logic; 
    KEY       : in std_logic_vector(3 downto 0);
		EX_IO     : inout std_logic_vector(2 downto 0);
    LEDR      : out   std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of clock_controller_ver_2_testbench is
  component clock_controller_ver_2 is
    port (
      clk : in std_logic;
      rst_n : in std_logic;

      clk_btn : in std_logic;
      toggle_btn : in std_logic;
      rotary_sig : in std_logic_vector(1 downto 0);

      clk_slow : out std_logic := '0'
    );
  end component;
begin
  EX_IO <= (others => 'Z');
  clock_controller_ver_2_inst: clock_controller_ver_2
   port map(
      clk => CLOCK_50,
      rst_n => KEY(3),
      clk_btn => KEY(0),
      toggle_btn => EX_IO(0),
      rotary_sig => EX_IO(2 downto 1),
      clk_slow => LEDR(0)
  );
end architecture;
