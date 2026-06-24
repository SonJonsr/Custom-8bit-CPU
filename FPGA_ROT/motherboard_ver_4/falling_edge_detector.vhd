LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY falling_edge_detector IS
  PORT ( 
    clk     : IN STD_LOGIC;
    sig     : IN STD_LOGIC;
    falling_edge_detected : OUT STD_LOGIC
  );
END ENTITY;

ARCHITECTURE RTL OF falling_edge_detector IS 
    SIGNAL sig_dff : STD_LOGIC := '1';
BEGIN
  process(clk) is
  begin
    if (rising_edge(clk)) then
      sig_dff <= sig;
      falling_edge_detected <= (not sig) and sig_dff;
    end if;
  end process;
END RTL;
