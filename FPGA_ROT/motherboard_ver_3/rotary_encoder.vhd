library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rotary_encoder is
  port ( 
    clk   : in  std_logic; 
    rst_n : in  std_logic; 
    rotary_sig  : in  std_logic_vector(1 downto 0);
    value : out std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of rotary_encoder is
  component antibounce is
    generic(
      wait_clks : integer := 25
     );
    port(
      clk       : in	std_logic;
      data_in   : in	std_logic;
      data_out  : out	std_logic := '0'
    );
  end component;
  signal value_sig : unsigned(7 downto 0) := (others => '0');

  signal sig_a : std_logic;
  signal sig_b : std_logic;
  signal sig_a_dff : std_logic;
  signal sig_b_dff : std_logic;
begin
  value <= std_logic_vector(value_sig);
  process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        value_sig <= x"4A";
      else
        sig_a_dff <= sig_a;
        sig_b_dff <= sig_b;
        if ((sig_a XOR sig_b) = '1') then
          if (sig_a /= sig_a_dff and value_sig /= x"59") then
            value_sig <= value_sig + 1;
          elsif (sig_b /= sig_b_dff and value_sig /= x"00") then
            value_sig <= value_sig - 1;
          end if;
        end if;
      end if;
    end if;
  end process;
  signal_a_antibounce: antibounce
   generic map(
      wait_clks => 10000
  )
   port map(
      clk => clk,
      data_in => rotary_sig(0),
      data_out => sig_a
  );
  signal_b_antibounce : antibounce
   generic map(
      wait_clks => 10000
  )
   port map(
      clk => clk,
      data_in => rotary_sig(1),
      data_out => sig_b
  );
end architecture;
