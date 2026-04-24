library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rotary_encoder_testbench is
  port ( 
    CLOCK_50  : in    std_logic; 
		EX_IO     : inout std_logic_vector(6 downto 0);
    LEDR      : out   std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of rotary_encoder_testbench is
  component rotary_encoder is
    port ( 
      clk   : in  std_logic; 
      data  : in  std_logic_vector(2 downto 0);
      value : out std_logic_vector(7 downto 0)
    );
  end component;
begin
  EX_IO <= (others => 'Z');
  rotary_encoder_inst: rotary_encoder
   port map(
      clk => CLOCK_50,
      data => EX_IO(2 downto 0),
      value => LEDR
  );
end architecture;
