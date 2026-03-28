library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_limit_testing_sbi is
  port(
    clk  : in  std_logic;
    rst_n : in std_logic;

    key_port       : in  std_logic_vector(2 downto 0);
    sw_port        : in  std_logic_vector(17 downto 0);

    gpio_port      : inout std_logic_vector(35 downto 0); 

    hex0_port, hex1_port,
    hex2_port, hex3_port,
    hex4_port, hex5_port,
    hex6_port, hex7_port : out std_logic_vector(6 downto 0) := (others => '0');

    ledg_port : out std_logic_vector(7 downto 0) := x"00";

		lcd_rs_port, lcd_en_port  : out	  std_logic;
		lcd_rw_port			          : out   std_logic;
		lcd_data_port		          : inout	std_logic_vector(7 downto 0);

    -- SBI
    chipselect  : in std_logic;
    write       : in std_logic;
    read        : in std_logic;
    address     : in std_logic;
    writedata   : in std_logic_vector(15 downto 0);
    readdata    : out std_logic_vector(15 downto 0)
  );
end entity;

architecture RTL of register_limit_testing_sbi is
-- Component declaration ----------------------------------------------------------------
  -- Simple component for register_limit_testing
    component register_limit_testing is
      port(
        clk   : in  std_logic;
        rst_n : in  std_logic;

        tr_lock : in std_logic;
        re_lock : in std_logic;
        tf_lock : in std_logic;

        tr_lock_value : in std_logic_vector(7 downto 0);
        re_lock_value : in std_logic_vector(7 downto 0);
        tf_lock_value : in std_logic_vector(7 downto 0);

        en    : in  std_logic;
        rdy   : out std_logic;

        tr_limit        : out unsigned(7 downto 0);
        re_limit        : out unsigned(7 downto 0);
        tf_limit        : out unsigned(7 downto 0);
        to_time         : out unsigned(9 downto 0);

        -- data from ports to test_handler
        new_data        : in    std_logic;
        old_data        : in    std_logic;

        register_output : inout std_logic_vector(7 downto 0);
        register_input  : inout std_logic_vector(7 downto 0);
        register_re     : inout std_logic;
        register_rst    : inout std_logic
      );
    end component;
  -- Antiprell for enable and reset
    component antiprell_key is
      port(
        clk : in std_logic;
        input : in std_logic;
        passering : out std_logic := '1'
      );
    end component;
  -- LCD_Display component
    component LCD_Display is
      port(
        reset, clk_48Mhz	: IN	STD_LOGIC;
        Hex_Display_Data	: IN    STD_LOGIC_VECTOR(127 DOWNTO 0);
        LCD_RS, LCD_E		: OUT	STD_LOGIC;
        LCD_RW			: OUT   STD_LOGIC;
        DATA_BUS		: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    end component LCD_Display;
  -- HEX display controller
    component ROM_7_SEG is
        port(
            adresse : in  std_logic_vector(3 downto 0);
            HEX     : out std_logic_vector(6 downto 0)
        );
    end component ROM_7_SEG;
  -- Bin to bcd components for HEX and LCD_Display
    -- Conversion for to_time
      component bin4bcd is
        port(
          bin_in  : in std_logic_vector(9 downto 0);
          bcd_out : out std_logic_vector(15 downto 0)
        );
      end component;
    -- Conversion for tf-,re-, and tr_limit
      component bin3bcd is
        port(
          bin_in  : in std_logic_vector(7 downto 0);
          bcd_out : out std_logic_vector(11 downto 0)
        );
      end component;
  -- ram_for_data
    component ram_for_data is
      port
      (
        address_a		: in std_logic_vector (15 downto 0);
        address_b		: in std_logic_vector (15 downto 0);
        clock_a		: in std_logic;
        clock_b		: in std_logic;
        data_a		: in std_logic_vector (15 downto 0);
        data_b		: in std_logic_vector (15 downto 0);
        wren_a		: in std_logic;
        wren_b		: in std_logic;
        q_a		: out std_logic_vector (15 downto 0);
        q_b		: out std_logic_vector (15 downto 0)
      );
    end component;
-----------------------------------------------------------------------------------------

-- Signals for components ---------------------------------------------------------------
    signal limit_rdy : std_logic;
    signal limit_en   : std_logic;

    signal limit_re   : std_logic;
    signal limit_rst  : std_logic;
    signal limit_output : std_logic_vector(7 downto 0) := (others => 'Z');
    signal limit_input  : std_logic_vector(7 downto 0) := (others => '0');


    signal address_a  : std_logic_vector (15 downto 0);
    signal address_b  : std_logic_vector (15 downto 0);
    signal clock_a    : std_logic;
    signal clock_b    : std_logic;
    signal data_a     : std_logic_vector (15 downto 0);
    signal data_b     : std_logic_vector (15 downto 0);
    signal wren_a     : std_logic;
    signal wren_b     : std_logic;
    signal q_a		    : std_logic_vector (15 downto 0);
    signal q_b		    : std_logic_vector (15 downto 0);
-----------------------------------------------------------------------------------------

-- Signals ------------------------------------------------------------------------------
    type state_machine is (IDLE, SETUP, START_TEST, SAVE, NEXT_TEST, DONE);
    signal state : state_machine := IDLE;
    signal  en_n,       en_n_dff,
            en_n_full,  en_n_full_dff : std_logic := '0';
    signal rst_n_sync : std_logic;
    signal tr_limit       : unsigned(7 downto 0);
    signal re_limit       : unsigned(7 downto 0);
    signal tf_limit       : unsigned(7 downto 0);
    signal to_time        : unsigned(9 downto 0);
    signal tr_limit_bcd   : std_logic_vector(11 downto 0);
    signal re_limit_bcd   : std_logic_vector(11 downto 0);
    signal tf_limit_bcd   : std_logic_vector(11 downto 0);
    signal to_time_bcd    : std_logic_vector(15 downto 0);
    signal tr_lock        : std_logic;
    signal re_lock        : std_logic;
    signal tf_lock        : std_logic;
    signal tr_lock_value  : std_logic_vector(7 downto 0);
    signal re_lock_value  : std_logic_vector(7 downto 0);
    signal tf_lock_value  : std_logic_vector(7 downto 0);
    signal tr_lock_counter  : unsigned(7 downto 0);
    signal tf_lock_counter  : unsigned(7 downto 0);
    signal limit_rdy_dff : std_logic;
    signal mem_counter_a : unsigned(1 downto 0) := "00";
    signal mem_counter_b : unsigned(1 downto 0) := "00";
    signal wren_a_dff    : std_logic;
-----------------------------------------------------------------------------------------

begin

  ledg_port <= std_logic_vector(tr_lock_counter);

  gpio_port(16)          <= not limit_re;
  gpio_port(17)          <= not limit_rst;
  limit_output      <= not gpio_port(15 downto 8);
  -- gpio_port(7 downto 0)  <= not limit_input;

  re_lock <= sw_port(2);
  re_lock_value <= sw_port(17 downto 10);

  tr_lock_value <= std_logic_vector(tr_lock_counter);
  tf_lock_value <= std_logic_vector(tf_lock_counter);

  readdata <= q_a when address = '0' else sw_port(15 downto 0);

  address_b <= std_logic_vector(tr_limit & tf_limit);

  data_b <= std_logic_vector(re_limit(5 downto 0) & to_time)
              when  re_limit < "111111" else
            std_logic_vector("111111" & to_time);

  clock_a <= clk when mem_counter_a /= "11" else '0';
  clock_b <= clk when mem_counter_b /= "11" else '0';

  sbi : process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n_sync = '0' then
        data_a <= x"0000";
        address_a <= x"0000";
        wren_a <= '0';
        wren_a_dff <= '0';
      else
        wren_a_dff <= wren_a;
        if write = '1' then
          mem_counter_a <= "11";
          if address = '0' then
            address_a <= writedata;
          else
            data_a <= writedata;
            wren_a <= '1';
          end if;
        else
          wren_a <= '0';
          if mem_counter_a /= "00" then
            mem_counter_a <= mem_counter_a - 1;
          end if;
        end if;
      end if;
    end if;
  end process;

  main : process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n_sync = '0' then
        state <= IDLE;
        en_n_dff <= '0';
        en_n_full_dff <= '0';
        limit_en <= '0';
        tr_lock_counter <= (others => '0');
        tf_lock_counter <= (others => '0');
      else
        en_n_dff <= en_n;
        en_n_full_dff <= en_n_full;
        limit_rdy_dff <= limit_rdy;
        case state is
          when IDLE =>
            if en_n <= '0' and en_n_dff = '1' and limit_rdy = '1' then
              limit_en <= '1';
              tr_lock <= '0';
              tf_lock <= '0';
            elsif en_n_full <= '0' and en_n_full_dff = '1' and limit_rdy = '1' then
              state <= SETUP;
            else
              limit_en <= '0';
            end if;

          when SETUP =>
            tr_lock <= '1';
            tf_lock <= '1';
            tr_lock_counter <= (others => '0');
            tf_lock_counter <= (others => '0');
            state <= START_TEST;

          when START_TEST =>
            if limit_rdy = '1' and limit_rdy_dff = '0' then
              limit_en <= '0';
              mem_counter_b <= "00";
              state <= SAVE;
            else
              limit_en <= '1';
            end if;

          when SAVE =>
            if mem_counter_b = "00" then
              wren_b <= '1';
            else
              wren_b <= '0';
            end if;

            if mem_counter_b = "11" then
              state <= NEXT_TEST;
            else
              mem_counter_b <= mem_counter_b + 1;
            end if;

          when NEXT_TEST =>
            if tr_lock_counter = x"FF" and tf_lock_counter = x"FF" then
              state <= DONE;
            else
              state <= START_TEST;
            end if;

            if tf_lock_counter = x"FF" then
              tf_lock_counter <= x"00";
              if tr_lock_counter = x"FF" then
                tr_lock_counter <= x"00";
              else
                tr_lock_counter <= tr_lock_counter + 1;
              end if;
            else
              tf_lock_counter <= tf_lock_counter + 1;
            end if;

          when DONE =>
            state <= IDLE;
        end case;
      end if;
    end if;
  end process;

  register_limit_testing_inst: register_limit_testing
   port map(
      clk => clk,
      rst_n => rst_n_sync,
      en => limit_en,
      rdy => limit_rdy,
      tr_lock => tr_lock,
      re_lock => re_lock,
      tf_lock => tf_lock,
      tr_lock_value => tr_lock_value,
      re_lock_value => re_lock_value,
      tf_lock_value => tf_lock_value,
      tr_limit => tr_limit,
      re_limit => re_limit,
      tf_limit => tf_limit,
      to_time => to_time,
      new_data => not sw_port(0),
      old_data => not sw_port(1),
      register_output => gpio_port(15 downto 8),
      register_input => gpio_port(7 downto 0),
      -- register_output => limit_output,
      -- register_input => limit_input,
      register_re => limit_re,
      register_rst => limit_rst
  );

  antiprell_key_rst_n : antiprell_key
   port map(
      clk => clk,
      input => rst_n,
      passering => rst_n_sync
  );

  antiprell_key_en: antiprell_key
   port map(
      clk => clk,
      input => key_port(0),
      passering => en_n
  );

  antiprell_key_en_full : antiprell_key
   port map(
      clk => clk,
      input => key_port(1),
      passering => en_n_full
  );

  LCD_Display_inst: LCD_Display
   port map(
      reset => rst_n_sync,
      clk_48Mhz => clk,
      Hex_Display_Data => x"000" & x"00000000" & x"00000000" & to_time_bcd & tr_limit_bcd & re_limit_bcd & tf_limit_bcd,
      LCD_RS => lcd_rs_port,
      LCD_E => lcd_en_port,
      LCD_RW => lcd_rw_port,
      DATA_BUS => lcd_data_port
  );

  to_time_bin4bcd_inst : bin4bcd
   port map(
      bin_in =>  std_logic_vector(to_time),
      bcd_out => to_time_bcd
  );
  tf_time_bin3bcd_inst : bin3bcd
   port map(
      bin_in => std_logic_vector(tf_limit),
      bcd_out => tf_limit_bcd
  );
  re_time_bin3bcd_inst : bin3bcd
   port map(
      bin_in => std_logic_vector(re_limit),
      bcd_out => re_limit_bcd
  );
  tr_time_bin3bcd_inst : bin3bcd
   port map(
      bin_in => std_logic_vector(tr_limit),
      bcd_out => tr_limit_bcd
  );

  hex0_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(tf_limit(3 downto 0)),
      HEX => hex0_port
  );
  hex1_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(tf_limit(7 downto 4)),
      HEX => hex1_port
  );
  hex2_inst: ROM_7_SEG
   port map(
      adresse => x"0",
      HEX => hex2_port
  );
  hex3_inst: ROM_7_SEG
   port map(
      adresse => x"0",
      HEX => hex3_port
  );
  hex4_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(re_limit(3 downto 0)),
      HEX => hex4_port
  );
  hex5_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(re_limit(7 downto 4)),
      HEX => hex5_port
  );
  hex6_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(tr_limit(3 downto 0)),
      HEX => hex6_port
  );
  hex7_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(tr_limit(7 downto 4)),
      HEX => hex7_port
  );

  ram_for_data_inst: ram_for_data
   port map(
      address_a => address_a,
      address_b => address_b,
      clock_a => clock_a,
      clock_b => clock_b,
      data_a => data_a,
      data_b => data_b,
      wren_a => wren_a_dff,
      wren_b => wren_b,
      q_a => q_a,
      q_b => q_b
  );

end RTL;
