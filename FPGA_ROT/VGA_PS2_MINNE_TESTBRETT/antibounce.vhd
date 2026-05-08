LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY antibounce IS
	PORT(
		clk       : IN	STD_LOGIC;
		data_in   : IN	STD_LOGIC;
		data_out  : OUT	STD_LOGIC := '1'
	);
END ENTITY;

ARCHITECTURE RTL OF antibounce IS
	SIGNAL dff : STD_LOGIC := '1';
  SIGNAL counter : INTEGER range 0 to 50_000 := 0;
BEGIN
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
END ARCHITECTURE RTL;
