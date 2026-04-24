library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_controller_ver_2 is
  port (
    clk : in std_logic;
    rst_n : in std_logic;

    clk_btn : in std_logic;
    toggle_btn : in std_logic;
    rotary_sig : in std_logic_vector(1 downto 0);

    clk_slow : out std_logic := '0'
  );
end entity;

architecture RTL of clock_controller_ver_2 is
  component antibounce is
    port(
      clk       : in	std_logic;
      data_in   : in	std_logic;
      data_out  : out	std_logic := '0'
    );
  end component;
  component rotary_encoder is
    port ( 
      clk         : in  std_logic; 
      rotary_sig  : in  std_logic_vector(1 downto 0);
      value : out std_logic_vector(7 downto 0)
    );
  end component;

  signal counting : std_logic := '0';
  signal toggle_btn_antibounced : std_logic;
  signal toggle_btn_antibounced_dff : std_logic;

  signal clk_btn_antibounced : std_logic;

  signal n : std_logic_vector(7 downto 0);

  signal counter : integer;
begin
  process(clk)
    variable counter_goal : integer;
    variable n_int        : integer;
    variable n_low        : integer;
    variable n_high       : integer;
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        counter <= 0;
      else
        n_int := to_integer(unsigned(n));
        case n_int is
          when 9 downto 0 =>
            counter_goal := (10 - n_int) * 50_000_000;
          when 19 downto 10 =>
            counter_goal := (20 - n_int) * 50_000_000 / 10;
          when 29 downto 20 =>
            counter_goal := (30 - n_int) * 50_000_000 / 100;
          when others =>
            counter_goal := (n_int - 29) * 50_000_000 / 1000;

        n_low := to_integer(unsigned(n(3 downto 0)));
        n_high:= to_integer(unsigned(n(7 downto 4)));
        counter_goal  := (16 - n_low) * (50_000_000/(2 ** (2 * n_high)));

        toggle_btn_antibounced_dff <= toggle_btn_antibounced;
        if toggle_btn_antibounced = '0' and toggle_btn_antibounced_dff = '1' then
          counting <= not counting;
        end if;

        if counting = '1' then
          clk_slow <= clk_btn_antibounced;
        else
          if counter >= counter_goal then
            counter <= 0;
          elsif counter >= counter_goal/2 then
            clk_slow <= '1';
            counter <= counter + 1;
          else
            clk_slow <= '0';
            counter <= counter + 1;
          end if;
        end if;
      end if;
    end if;
  end process;

  clk_btn_antibounced_inst : antibounce
   port map(
      clk => clk,
      data_in => clk_btn,
      data_out => clk_btn_antibounced
  );
  toggle_btn_antibounced_inst : antibounce
   port map(
      clk => clk,
      data_in => toggle_btn,
      data_out => toggle_btn_antibounced
  );
  rotary_encoder_inst : rotary_encoder
  port map(
      clk => clk,
      rotary_sig => rotary_sig,
      value => n
    );

end RTL;
