library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dff_synk is
	port(
		data_in, clk	: in	std_logic;
		data_out	: out	std_logic
	);
end entity;

architecture comp of dff_synk is
	signal dff1, dff2	: std_logic := '0';
begin
	p_dff_synk : process(clk)
	begin
		if rising_edge(clk) then
			dff1 <= data_in;
			dff2 <= dff1;
		end if;
	end process;
	data_out <= dff2;
end architecture comp;
