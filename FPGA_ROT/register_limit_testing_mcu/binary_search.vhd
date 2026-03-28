library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_search is
  port(
    clk   : in  std_logic;
    rst_n : in  std_logic;
  
    new_bin : in std_logic;
    en    : in  std_logic;
    fail  : in  std_logic; 
    done  : out std_logic;
    bin   : out unsigned(7 downto 0)
  );
end entity;

architecture RTL of binary_search is
  signal bin_sig : unsigned(8 downto 0) := (others => '0');
  signal counter : integer range 8 downto 0 := 7;
  signal en_dff : std_logic := '0';
begin
  bin <= bin_sig(7 downto 0);
  process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' or new_bin = '1' then
        bin_sig <= (others => '0');
        counter <= 7;
        done <= '0';
        en_dff <= '1';
      else
        en_dff <= en;
        done <= en_dff;
        if en = '1' and en_dff = '0' then
          counter <= counter - 1;
          bin_sig(counter + 1) <= fail;
          bin_sig(counter) <= '1';
        end if;
      end if;
    end if;
  end process;
end RTL;
