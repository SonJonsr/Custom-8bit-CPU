library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin4bcd is
	port(
		bin_in  : in std_logic_vector(9 downto 0);
		bcd_out : out std_logic_vector(15 downto 0)
	);
end entity;

architecture behavior of bin4bcd is

begin
	p_convert : process(bin_in)
	
		variable integer_1000, integer_100, integer_10, integer_1 : integer range 0 to 9;
		variable temp : integer range 0 to 9999;
		
	begin
		-- fra std_logic_vector til integer
		temp := to_integer(unsigned(bin_in));

		-- 1000-er siffer
		integer_1000 := temp / 1000;
		-- 100-er siffer
		integer_100 := temp / 100 - integer_1000 * 10;
		-- 10-er siffer
		integer_10 := temp / 10 - integer_1000 * 100 - integer_100 * 10;
		
		-- 1-er siffer
		integer_1 := temp - integer_1000 * 1000 - integer_100 * 100 - integer_10 * 10;
		
		-- tilbake til std_logic_vector:
		bcd_out(3 downto 0) <= std_logic_vector(to_unsigned(integer_1, 4));
		bcd_out(7 downto 4) <= std_logic_vector(to_unsigned(integer_10, 4));
		bcd_out(11 downto 8) <= std_logic_vector(to_unsigned(integer_100, 4));
		bcd_out(15 downto 12) <= std_logic_vector(to_unsigned(integer_1000, 4));
	end process;
	
end architecture behavior;
