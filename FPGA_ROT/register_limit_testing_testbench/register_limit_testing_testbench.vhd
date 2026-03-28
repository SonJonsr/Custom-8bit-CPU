library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_limit_testing_testbench is
  port(
    CLOCK_50  : in  std_logic;

    KEY       : in  std_logic_vector(3 downto 0);
    SW        : in  std_logic_vector(17 downto 0);

    GPIO      : inout std_logic_vector(35 downto 0); 

    HEX0, HEX1, HEX2, HEX3,
    HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0) := (others => '0');

		LCD_RS, LCD_EN	: OUT	  STD_LOGIC;
		LCD_RW			    : OUT   STD_LOGIC;
		LCD_DATA		    : INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
end entity;

architecture RTL of register_limit_testing_testbench is
-- Component declaration ----------------------------------------------------------------
  -- Simple component for register_find_one_variable
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

-----------------------------------------------------------------------------------------

-- Signals for components ---------------------------------------------------------------
    signal limit_rdy : std_logic;
    signal limit_en   : std_logic;

    signal limit_re   : std_logic;
    signal limit_rst  : std_logic;
    signal limit_output : std_logic_vector(7 downto 0) := (others => 'Z');
    signal limit_input  : std_logic_vector(7 downto 0) := (others => '0');
-----------------------------------------------------------------------------------------

-- Signals ------------------------------------------------------------------------------
    signal en_n, en_n_dff, rst_n : std_logic;
    signal tr_limit        : unsigned(7 downto 0);
    signal re_limit        : unsigned(7 downto 0);
    signal tf_limit        : unsigned(7 downto 0);
    signal to_time         : unsigned(9 downto 0);
    signal tr_limit_bcd         : std_logic_vector(11 downto 0);
    signal re_limit_bcd         : std_logic_vector(11 downto 0);
    signal tf_limit_bcd         : std_logic_vector(11 downto 0);
    signal to_time_bcd          : std_logic_vector(15 downto 0);
-----------------------------------------------------------------------------------------

begin

  GPIO(16)          <= not limit_re;
  GPIO(17)          <= not limit_rst;
  limit_output      <= not GPIO(15 downto 8);
  -- GPIO(7 downto 0)  <= not limit_input;

  process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if rst_n = '0' then
        en_n_dff <= '1';
        limit_en <= '0';
      else
        en_n_dff <= en_n;
        if en_n <= '0' and en_n_dff = '1' and limit_rdy = '1' then
          limit_en <= '1';
        else
          limit_en <= '0';
        end if;
      end if;
    end if;
  end process;

  register_limit_testing_inst: register_limit_testing
   port map(
      clk => CLOCK_50,
      rst_n => rst_n,
      en => limit_en,
      rdy => limit_rdy,
      tr_lock => '0',
      re_lock => SW(2),
      tf_lock => '0',
      tr_lock_value => x"00",
      re_lock_value => SW(17 downto 10),
      tf_lock_value => x"00",
      tr_limit => tr_limit,
      re_limit => re_limit,
      tf_limit => tf_limit,
      to_time => to_time,
      new_data => not SW(0),
      old_data => not SW(1),
      register_output => GPIO(15 downto 8),
      register_input => GPIO(7 downto 0),
      -- register_output => limit_output,
      -- register_input => limit_input,
      register_re => limit_re,
      register_rst => limit_rst
  );

  antiprell_key_rst_n : antiprell_key
   port map(
      clk => CLOCK_50,
      input => KEY(3),
      passering => rst_n
  );

  antiprell_key_en: antiprell_key
   port map(
      clk => CLOCK_50,
      input => KEY(0),
      passering => en_n
  );

  LCD_Display_inst: LCD_Display
   port map(
      reset => rst_n,
      clk_48Mhz => CLOCK_50,
      Hex_Display_Data => x"000" & x"00000000" & x"00000000" & to_time_bcd & tr_limit_bcd & re_limit_bcd & tf_limit_bcd,
      LCD_RS => LCD_RS,
      LCD_E => LCD_EN,
      LCD_RW => LCD_RW,
      DATA_BUS => LCD_DATA
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
      HEX => HEX0
  );
  hex1_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(tf_limit(7 downto 4)),
      HEX => HEX1
  );
  hex2_inst: ROM_7_SEG
   port map(
      adresse => x"0",
      HEX => HEX2
  );
  hex3_inst: ROM_7_SEG
   port map(
      adresse => x"0",
      HEX => HEX3
  );
  hex4_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(re_limit(3 downto 0)),
      HEX => HEX4
  );
  hex5_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(re_limit(7 downto 4)),
      HEX => HEX5
  );
  hex6_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(tr_limit(3 downto 0)),
      HEX => HEX6
  );
  hex7_inst: ROM_7_SEG
   port map(
      adresse => std_logic_vector(tr_limit(7 downto 4)),
      HEX => HEX7
  );

end RTL;
