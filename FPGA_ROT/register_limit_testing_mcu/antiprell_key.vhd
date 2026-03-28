library ieee;
use ieee.std_logic_1164.all;

entity antiprell_key is
	port(
		clk : in std_logic;
		input : in std_logic;
		passering : out std_logic := '1'
	);
end entity antiprell_key;

architecture RTL of antiprell_key is
  SIGNAL dff : STD_LOGIC := '1';
	signal teller : INTEGER range 0 to 5500 := 0;
begin
  passering <= dff;
	-- process for tilstandsmaskin
	p_tilstandsmaskin : process(clk) is
	-- fyll ut
	begin
		if rising_edge(clk) then
      if (dff /= input) then
        if (teller = 5000) then
          dff <= input;
        end if;
        teller <= teller + 1;
      else
        teller <= 0;
      end if;
    end if;

	end process p_tilstandsmaskin;


end architecture RTL;
