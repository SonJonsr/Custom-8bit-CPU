library ieee;
use ieee.std_logic_1164.all;

entity antibounce_key is
	port(
		clk             : in std_logic;
		rst_n           : in std_logic;
		key             : in std_logic;
		key_antibounced : out std_logic := '1'
	);
end entity;

architecture RTL of antibounce_key is
  SIGNAL dff : STD_LOGIC := '1';
	signal counter: INTEGER range 0 to 5500 := 0;
begin

  key_antibounced <= dff;

	process(clk) is
	begin
		if rising_edge(clk) then
			if rst_n = '0' then
				counter <= 0;
        dff <= key;
			else
        if (dff /= key) then
          if counter = 5000 then
            dff <= key;
          end if;
          counter <= counter + 1;
        else
          counter <= 0;
        end if;
			end if;
		end if;
	end process;


end architecture RTL;
