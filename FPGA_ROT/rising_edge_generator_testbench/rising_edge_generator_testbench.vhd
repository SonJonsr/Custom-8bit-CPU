LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY rising_edge_generator_testbench IS
  PORT ( 
    CLOCK_50  : IN STD_LOGIC;
    KEY       : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW			  : IN	STD_LOGIC_VECTOR(17 DOWNTO 0);
		EX_IO			: INOUT	STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE RTL OF rising_edge_generator_testbench IS 
  COMPONENT antiprell_key IS
    PORT(
      clk : IN STD_LOGIC;
      reset_clk : IN STD_LOGIC;
      input : IN STD_LOGIC;
      passering : OUT STD_LOGIC := '1'
    );
  END COMPONENT;
  COMPONENT rising_edge_generator IS
    PORT ( 
      clk : IN STD_LOGIC;
      start_pulse : IN STD_LOGIC;
      pulse_size  : IN	STD_LOGIC_VECTOR(17 DOWNTO 0);
      pulse : OUT	STD_LOGIC := '0'
    );
  END COMPONENT;

  SIGNAL start_pulse_sig : STD_LOGIC;
BEGIN

  antiprell_key_inst: antiprell_key
   port map(
      clk => CLOCK_50,
      reset_clk => KEY(0),
      input => KEY(3),
      passering => start_pulse_sig
  );

  rising_edge_generator_inst: rising_edge_generator
   port map(
      clk => CLOCK_50,
      start_pulse => not start_pulse_sig,
      pulse_size => SW(17 downto 0),
      pulse => EX_IO(0)
  );

END RTL;
