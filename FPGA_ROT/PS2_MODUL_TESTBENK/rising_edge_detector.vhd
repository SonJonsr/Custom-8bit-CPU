LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY rising_edge_detector IS
  PORT ( 
    clk     : IN STD_LOGIC;
    sig     : IN STD_LOGIC;
    rising_edge_detected : OUT STD_LOGIC
  );
END ENTITY;

ARCHITECTURE RTL OF rising_edge_detector IS 
    SIGNAL sig_dff : STD_LOGIC := '1';
BEGIN
  process(clk) is
  begin
    if (rising_edge(clk)) then
      sig_dff <= sig;
      if (sig_dff = '0' and sig = '1') then
        rising_edge_detected <= '1';
      else
        rising_edge_detected <= '0';
      end if;
    end if;
  end process;
END RTL;
