library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity antibounce is
	port(
		data_in, clk	: in	std_logic;
		data_out	: out	std_logic
	);
end entity;

architecture RTL of antibounce is
	signal dff : std_logic := '0';
  signal counter : integer range 0 to 127 := 0;
begin
	p_dff_synk : process(clk)
	begin
		if rising_edge(clk) then
      if (data_in /= dff) then
        counter <= counter + 1;
        if (counter > 25) then
          dff <= data_in;
        end if;
      else
        counter <= 0;
      end if;
		end if;
	end process;
	data_out <= dff;
end architecture RTL;
