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

    -- Hex display
		hex0, hex1, hex2, hex3,
		hex4, hex5, hex6, hex7	: out	std_logic_vector(6 downto 0);

    automatic : out std_logic := '0';
    clk_slow : out std_logic := '0'
  );
end entity;

architecture RTL of clock_controller_ver_2 is
  component antibounce is
    GENERIC(
      wait_clks : integer := 25
    );
    port(
      clk       : in	std_logic;
      data_in   : in	std_logic;
      data_out  : out	std_logic := '0'
    );
  end component;
  component rotary_encoder is
    port ( 
      clk         : in  std_logic; 
      rst_n : in  std_logic; 
      rotary_sig  : in  std_logic_vector(1 downto 0);
      value : out std_logic_vector(7 downto 0)
    );
  end component;
  component bin3bcd is
    port(
      bin_in : in std_logic_vector(7 downto 0);
      bcd_out : out std_logic_vector(11 downto 0)
    );
  end component bin3bcd;
  component ROM_7_seg is
      port(
          adresse : in  std_logic_vector(3 downto 0);
          HEX     : out std_logic_vector(6 downto 0)
      );
  end component ROM_7_seg;

  signal counting : std_logic := '0';
  signal toggle_btn_antibounced : std_logic := '1';
  signal toggle_btn_antibounced_dff : std_logic := '1';

  signal clk_btn_antibounced : std_logic;

  signal n : std_logic_vector(7 downto 0);

  signal counter : integer := 0;

  signal exp_sig : std_logic_vector(3 downto 0);
  signal bin_sig : std_logic_vector(7 downto 0);
  signal bcd_sig : std_logic_vector(11 downto 0);
begin
  automatic <= counting;

  hex2 <= "0000110"; -- E for exponent

  hex7 <= "1111111"; -- NOT IN USE
  hex6 <= "1111111"; -- NOT IN USE
  hex3 <= "1111111"; -- NOT IN USE
  process(clk)
    variable counter_goal : integer := 0;
    variable n_int        : integer;
    variable exponent     : integer;
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        counter <= 0;
        counting <= '0';
        clk_slow <= '0';
        exp_sig <= (others => '0');
        bin_sig <= (others => '0');
      else
        n_int := to_integer(unsigned(n));
        exponent := (n_int/10) - 1;
        case n_int is -- (*@\label{start:clock_controller_switch}@*)
          when 9 downto 0 =>
            n_int := n_int + 1;
            counter_goal := 500_000_000 / n_int;
          when 19 downto 10 =>
            n_int := n_int - 9;
            counter_goal := 50_000_000 / n_int;
          when 29 downto 20 =>
            n_int := n_int - 19;
            counter_goal := 5_000_000 / n_int;
          when 39 downto 30 =>
            n_int := n_int - 29;
            counter_goal := 500_000 / n_int;
          when others =>
            exponent := 3;
            n_int := n_int - 39;
            counter_goal := 50_000 / n_int;
        end case; -- (*@\label{end:clock_controller_switch}@*)

        if exponent = -1 then
          hex1 <= "0111111";
          exponent := 1;
        else
          hex1 <= "1111111";
        end if;
        
        exp_sig <= std_logic_vector(to_unsigned(exponent, exp_sig'LENGTH));
        bin_sig <= std_logic_vector(to_unsigned(n_int, bin_sig'LENGTH));

        
        

        toggle_btn_antibounced_dff <= toggle_btn_antibounced;
        if toggle_btn_antibounced = '0' and toggle_btn_antibounced_dff = '1' then
          counting <= not counting;
        end if;

        if counting = '0' then
          clk_slow <= not clk_btn_antibounced;
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
   generic map(
      wait_clks => 10000
  )
   port map(
      clk => clk,
      data_in => clk_btn,
      data_out => clk_btn_antibounced
  );

  toggle_btn_antibounced_inst : antibounce
   generic map(
      wait_clks => 10000
  )
   port map(
      clk => clk,
      data_in => toggle_btn,
      data_out => toggle_btn_antibounced
  );

  rotary_encoder_inst : rotary_encoder
  port map(
      clk => clk,
      rst_n => rst_n,
      rotary_sig => rotary_sig,
      value => n
    );
  
  bin3bcd_inst : bin3bcd
  port map(
    bin_in => bin_sig,
    bcd_out => bcd_sig
  );


  hex_5_inst : ROM_7_seg
  port map(
    adresse => bcd_sig(7 downto 4),
    HEX => hex5
  );

  hex_4_inst : ROM_7_seg
  port map(
    adresse => bcd_sig(3 downto 0),
    HEX => hex4
  );


  hex_0_inst : ROM_7_seg
  port map(
    adresse => exp_sig,
    HEX => hex0
  );





end RTL;
