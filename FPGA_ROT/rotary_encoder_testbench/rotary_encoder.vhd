library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rotary_encoder is
  port ( 
    clk   : in  std_logic; 
		data  : in  std_logic_vector(2 downto 0);
    value : out std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of rotary_encoder is
  component antibounce is
    port(
      clk       : in	std_logic;
      data_in   : in	std_logic;
      data_out  : out	std_logic := '0'
    );
  end component;
  signal value_sig : unsigned(7 downto 0) := (others => '0');
  signal sig_btn : std_logic;
  signal sig_a : std_logic;
  signal sig_b : std_logic;
  signal sig_a_dff : std_logic;
  signal sig_b_dff : std_logic;
begin
  value <= std_logic_vector(value_sig);
  process(clk) is
  begin
    if rising_edge(clk) then
      sig_a_dff <= sig_a;
      sig_b_dff <= sig_b;
      if ((sig_a XOR sig_b) = '1') then
        if (sig_a = '0' and sig_a_dff = '1' and value_sig /= x"FF") then
          value_sig <= value_sig + 1;
        elsif (sig_b = '0' and sig_b_dff = '1' and value_sig /= x"00") then
          value_sig <= value_sig - 1;
        end if;
      end if;
    end if;
  end process;
  signal_btn_antibounce : antibounce
   port map(
      clk => clk,
      data_in => data(0),
      data_out => sig_btn
  );
  signal_a_antibounce: antibounce
   port map(
      clk => clk,
      data_in => data(1),
      data_out => sig_a
  );
  signal_b_antibounce : antibounce
   port map(
      clk => clk,
      data_in => data(2),
      data_out => sig_b
  );
end architecture;
