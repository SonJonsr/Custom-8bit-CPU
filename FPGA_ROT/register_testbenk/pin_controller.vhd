LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY pin_controller IS
  PORT ( 
    clk         : in std_logic;
    tr_counter  : in unsigned(7 downto 0);
    tf_counter  : in unsigned(7 downto 0);
    tr_goal     : in unsigned(7 downto 0);
    tf_goal     : in unsigned(7 downto 0);

    pin_mode    : in std_logic;
    power       : in std_logic;

    register_data_input        : out STD_LOGIC_VECTOR(7 downto 0)
  );
END ENTITY;

ARCHITECTURE RTL OF pin_controller IS
BEGIN
  process(clk)
  begin
    if (rising_edge(clk)) then
      if power = '0' then
        register_data_input <= (others => '0');
      elsif (tf_counter <= tf_goal and tr_counter ) then
        register_data_input <= (others => not pin_mode);
      elsif (tr_counter >= tr_goal) then
        register_data_input <= (others => pin_mode);
      else
        register_data_input <= (others => not pin_mode);
      end if;
    end if;
  end process;
END RTL;
