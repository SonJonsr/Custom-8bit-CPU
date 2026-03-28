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
      if (sig_dff = '1' and sig = '0') then
        falling_edge_detected <= '1';
      else
        falling_edge_detected <= '0';
      end if;
    end if;
  end process;
END RTL;
