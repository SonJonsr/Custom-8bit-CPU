library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_find_one_variable is
  port(
    clk   : in  std_logic;
    rst_n : in  std_logic;

    en    : in  std_logic;
    rdy   : out std_logic;

    tr_limit        : in  unsigned(7 downto 0);
    re_limit        : in  unsigned(7 downto 0);
    tf_limit        : in  unsigned(7 downto 0);
    to_time         : out unsigned(9 downto 0);

    variable_selector : in  unsigned(1 downto 0);
    variable_result   : out unsigned(7 downto 0);

    -- data from ports to test_handler
    new_data        : in    std_logic;
    old_data        : in    std_logic;
    register_output : inout std_logic_vector(7 downto 0);
    register_input  : inout std_logic_vector(7 downto 0);
    register_re     : inout std_logic;
    register_rst    : inout std_logic
  );
end entity;

architecture RTL of register_find_one_variable is
-- Component declaration ----------------------------------------------------------------
  -- Simple component for binary search
    component binary_search is
      port(
        clk     : in  std_logic;
        rst_n   : in  std_logic;
        new_bin : in  std_logic;
        en      : in  std_logic;
        fail    : in  std_logic; 
        done    : out std_logic;
        bin     : out unsigned(7 downto 0)
      );
    end component;
  -- A component that controls the execution of tests
    component register_test_handler is
      port(
        clk   : in  std_logic;
        rst_n : in  std_logic;
        en              : in  std_logic;
        new_data        : in  std_logic;
        old_data        : in  std_logic;
        rdy             : out std_logic;
        fail            : out std_logic;
        register_output : inout std_logic_vector(7 downto 0);
        register_input  : inout std_logic_vector(7 downto 0);
        register_re     : inout std_logic;
        register_rst    : inout std_logic;
        tr_limit        : in  unsigned(7 downto 0);
        re_limit        : in  unsigned(7 downto 0);
        tf_limit        : in  unsigned(7 downto 0);
        to_time         : out unsigned(9 downto 0)
      );
    end component;
-----------------------------------------------------------------------------------------

-- Signals for components ---------------------------------------------------------------
  -- binary_search
    signal bin_new_bin  : std_logic := '0';
    signal bin_en       : std_logic := '0';
    signal bin_fail     : std_logic := '0';
    signal bin_done     : std_logic := '0';
    signal bin_bin      : unsigned(7 downto 0);
  -- register_test_handler
    signal test_en              : std_logic;
    signal test_rdy             : std_logic;
    signal test_fail            : std_logic;
    signal test_tr_limit        : unsigned(7 downto 0);
    signal test_re_limit        : unsigned(7 downto 0);
    signal test_tf_limit        : unsigned(7 downto 0);
    signal test_to_time         : unsigned(9 downto 0);
-----------------------------------------------------------------------------------------

-- Signals ------------------------------------------------------------------------------
  type state_machine is (IDLE, SETUP, START_TEST, TESTING, TEST_RESULT, DONE);
  signal state : state_machine := IDLE;
  signal en_dff : std_logic := '0';
  signal test_rdy_dff : std_logic;
  signal counter : integer range 10 downto 0;
  signal to_shortest_time  : unsigned(9 downto 0);
  signal variable_shortest : unsigned(7 downto 0);
  signal fail_sig : std_logic := '0';
-----------------------------------------------------------------------------------------

begin

-- Selection for what variable to be used during testing --------------------------------
  test_tf_limit <= bin_bin when 
                    variable_selector = "01" 
                  else tf_limit;

  test_re_limit <= bin_bin when 
                    variable_selector = "00" 
                  else re_limit;

  test_tr_limit <= bin_bin when 
                    variable_selector = "10" 
                  else tr_limit;
-----------------------------------------------------------------------------------------

  -- bin_fail <= test_fail when
  --               variable_selector <= "00"
  --             else fail_sig;

  bin_fail <= test_fail;
                
            

  rdy <=  '1' when
            state = IDLE
          else '0';

  process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        state <= IDLE;
        en_dff <= '1';
        test_en <= '0';
        bin_en <= '0';
        test_rdy_dff <= '1';
        to_shortest_time <= (others => '1');
      else
        en_dff <= en;
        test_rdy_dff <= test_rdy;

        case state is
          when IDLE =>
            if en = '1' and en_dff = '0' then
              state <= SETUP;
            end if;

          when SETUP =>
            if variable_selector = "00" then
              to_shortest_time <= (others => '1');
            end if;
            bin_new_bin <= '0';
            counter <= 0; 
            variable_shortest <= (others => '1');
            state <= START_TEST;

          when START_TEST =>
            bin_en <= '0';
            if test_rdy = '1' then
              test_en <= '1';
              state <= TESTING;
            end if;

          when TESTING =>
            ------
            -- if to_shortest_time >= test_to_time and test_fail = '0' then
            --   fail_sig <= '0';
            -- else
            --   fail_sig <= '1';
            -- end if;
            ------
            if test_rdy = '1' and test_rdy_dff = '0' then
              counter <= counter + 1;
              state <= TEST_RESULT;
              test_en <= '0';
            end if;

          when TEST_RESULT =>
            bin_en <= '1';

            if bin_fail = '0' and bin_en = '0' then
              to_shortest_time <= test_to_time;
              if variable_shortest > bin_bin then
                variable_shortest <= bin_bin;
              end if;
            end if;

            if (counter = 1 and test_fail = '0') or counter = 10 then
              state <= DONE;
            elsif bin_done = '1' then 
              state <= START_TEST;
            end if;

          when DONE =>
            to_time <= test_to_time;
            variable_result <= variable_shortest; 
            bin_en <= '0';
            bin_new_bin <= '1';
            state <= IDLE;

        end case;
      end if;
    end if;
  end process;

  binary_search_inst: binary_search
   port map(
      clk => clk,
      rst_n => rst_n,
      new_bin => bin_new_bin,
      en => bin_en,
      fail => bin_fail,
      done => bin_done,
      bin => bin_bin
  );

  register_test_handler_inst: register_test_handler
   port map(
      clk => clk,
      rst_n => rst_n,
      en => test_en,
      new_data => new_data,
      old_data => old_data,
      rdy => test_rdy,
      fail => test_fail,
      register_output => register_output,
      register_input => register_input,
      register_re => register_re,
      register_rst => register_rst,
      tr_limit => test_tr_limit,
      re_limit => test_re_limit,
      tf_limit => test_tf_limit,
      to_time => test_to_time
  );
end RTL;
