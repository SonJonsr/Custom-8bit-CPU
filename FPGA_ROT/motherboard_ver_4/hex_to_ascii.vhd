library ieee;
use ieee.std_logic_1164.all;

entity hex_to_ascii is
  port( 
    hex   : in  std_logic_vector (3 downto 0);
    ascii : out std_logic_vector (7 downto 0)
  );
end hex_to_ascii;

architecture RTL of hex_to_ascii is
begin
  with hex select
    ascii <= x"30" when x"0",   -- '0'
             x"31" when x"1",   -- '1'
             x"32" when x"2",   -- '2'
             x"33" when x"3",   -- '3'
             x"34" when x"4",   -- '4'
             x"35" when x"5",   -- '5'
             x"36" when x"6",   -- '6'
             x"37" when x"7",   -- '7'
             x"38" when x"8",   -- '8'
             x"39" when x"9",   -- '9'
             x"41" when x"A",   -- 'A'
             x"42" when x"B",   -- 'B'
             x"43" when x"C",   -- 'C'
             x"44" when x"D",   -- 'D'
             x"45" when x"E",   -- 'E'
             x"46" when x"F",   -- 'F'
             x"00" when others; -- Default catch-all

end RTL;
