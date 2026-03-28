LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY usb_bitstream_testbenk IS
  PORT ( 
    CLOCK_50    : IN STD_LOGIC;
    KEY         : IN STD_LOGIC_VECTOR(3 downto 0)
  );
END ENTITY;


ARCHITECTURE RTL OF usb_bitstream_testbenk IS
  SIGNAL print : STD_LOGIC := '1';
BEGIN
  process(CLOCK_50) is
  begin
    if (rising_edge(CLOCK_50)) then
      if (KEY(0) = '0') then
        print <= '1';
      else
        for i in 0 to 7 loop
          report "i=" & integer'image(i);
        end loop;
      end if;
    end if;
  end process;
END RTL;
