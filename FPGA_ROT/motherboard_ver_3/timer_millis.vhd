library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_millis is
  generic(
    -- CLOCK_SPEED MUST BE HIGHER THAN 1kHz
    CLOCK_SPEED : INTEGER := 50_000_000
  );
  port(
    clk   : in  std_logic;
    rst_n : in  std_logic;
    millis : out std_logic_vector(15 downto 0) := (others => '0')
  );
end entity;

architecture RTL of timer_millis is
  signal counter : integer := 1;
  signal counter_limit : integer := CLOCK_SPEED / 1000;
  signal millis_sig : unsigned(15 downto 0) := (others => '0');
begin
  process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        millis <= (others => '0');
        millis_sig <= (others => '0');
        counter <= 1;
      else
        millis <= std_logic_vector(millis_sig);
        -- Counter counts up to limit and then adds
        -- one to the millis counter. 
        if (counter >= counter_limit) then
          millis_sig <= millis_sig + 1;
          counter <= 1;
        else
          counter <= counter + 1;
        end if;
      end if;
    end if;
  end process;
end RTL;
