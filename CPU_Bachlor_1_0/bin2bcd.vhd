library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd is
	port(
		bin_in : in std_logic_vector(7 downto 0);
		bcd_out : out std_logic_vector(11 downto 0)
	);
end entity bin2bcd;

architecture behavior of bin2bcd is
begin
p_convert : process(bin_in)
		variable integer_high : integer range 0 to 9;
		variable integer_mid : integer range 0 to 9;
		variable integer_low : integer range 0 to 9;
		variable temp : integer range 0 to 999;
	begin
		-- fra std_logic_vector til integer
		temp := to_integer(unsigned(bin_in));
		
		integer_high := temp / 100;
		-- 10-er -siffer
		integer_mid := temp / 10 - integer_high * 10;
		-- 1-er siffer
		integer_low := temp - integer_high*100 - integer_mid*10;
		-- tilbake til std_logic_vector:
		bcd_out(3 downto 0) <= std_logic_vector(to_unsigned(integer_low, 4));
		bcd_out(7 downto 4) <= std_logic_vector(to_unsigned(integer_mid, 4));
		bcd_out(11 downto 8) <= std_logic_vector(to_unsigned(integer_high, 4));
	end process;
end architecture behavior;