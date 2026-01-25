library ieee;
use ieee.std_logic_1164.ALL;

entity Reset_synchronizer IS
Port ( clk: IN std_logic;
		 reset_key3 : IN std_logic;
		 reset_sync: OUT std_logic);
	End Entity;
	
ARCHITECTURE RTL OF Reset_synchronizer IS
		
		signal  dff: std_logic;
BEGIN
	
sync_reset: Process(clk, reset_key3)
		begin
			if reset_key3 ='0' then 
				reset_sync <= '0';
				dff <= '0';
			elsif rising_edge(clk) then
				reset_sync <= dff; 
				dff <= '1';
			end if;
		end process;
END;		