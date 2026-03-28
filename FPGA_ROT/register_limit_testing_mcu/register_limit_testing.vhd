library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_limit_testing is
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
end entity;

architecture RTL of register_limit_testing is
-- Component declaration ----------------------------------------------------------------
  -- Simple component for register_find_one_variable
    component register_find_one_variable is
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
    end component;
-----------------------------------------------------------------------------------------

-- Signals for components ---------------------------------------------------------------
  -- register_find_one_variable
    signal find_en  : std_logic := '0';
    signal find_rdy : std_logic;
    signal find_var_select  : unsigned(1 downto 0);
    signal find_var_result  : unsigned(7 downto 0);
-----------------------------------------------------------------------------------------

-- Signals ------------------------------------------------------------------------------
  -- State machine
    type state_machine is (IDLE, SETUP, START_FIND, FINDING, FIND_RESULT, DONE);
    signal state : state_machine := IDLE;

  -- Array for limits of tf, re, and tr
    type array_4_bytes is array (0 to 3) of unsigned(7 downto 0);
    signal limits : array_4_bytes := (others => (others => '1'));

  signal en_dff       : std_logic := '0';
  signal find_rdy_dff : std_logic := '0';
  signal tr_limit_sig : unsigned(7 downto 0) := (others => '1');
  signal re_limit_sig : unsigned(7 downto 0) := (others => '1');
  signal tf_limit_sig : unsigned(7 downto 0) := (others => '1');
-----------------------------------------------------------------------------------------

begin

  rdy <=  '1' when
            state = IDLE
          else '0';

  tr_limit <= tr_limit_sig;
  re_limit <= re_limit_sig;
  tf_limit <= tf_limit_sig;

  tr_limit_sig <= limits(2) when tr_lock = '0' else unsigned(tr_lock_value); 
  re_limit_sig <= limits(0) when re_lock = '0' else unsigned(re_lock_value); 
  tf_limit_sig <= limits(1) when tf_lock = '0' else unsigned(tf_lock_value); 

  process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        state <= IDLE;
        en_dff <= '1';
        find_en <= '0';
        limits <= (others => (others => '1'));
        find_rdy_dff <= '1';
        find_var_select <= ("0" & re_lock);
      else
        en_dff <= en;
        find_rdy_dff <= find_rdy;

        case state is
          when IDLE =>
            if en = '1' and en_dff = '0' then
              state <= SETUP;
            end if;

          when SETUP =>
            find_var_select <= ("0" & re_lock);
            limits <= (others => (others => '1'));
            
            state <= START_FIND;

          when START_FIND =>
            if find_rdy = '1' then
              find_en <= '1';
              state <= FINDING;
            end if;

          when FINDING =>
            if find_rdy = '1' and find_rdy_dff = '0' then
              state <= FIND_RESULT;
              find_en <= '0';
            end if;

          when FIND_RESULT =>
            limits(to_integer(find_var_select)) <= find_var_result;
            if find_var_select = "11" then
              state <= DONE;
            else
              if tr_lock = '1' and tf_lock = '1' then
                find_var_select <= "11";
              else
                find_var_select <= find_var_select + 1;
              end if;
              state <= START_FIND;
            end if;

          when DONE =>
            state <= IDLE;

        end case;
      end if;
    end if;
  end process;

  register_find_one_variable_inst: register_find_one_variable
   port map(
      clk => clk,
      rst_n => rst_n,
      en => find_en,
      rdy => find_rdy,
      tr_limit => tr_limit_sig,
      re_limit => re_limit_sig,
      tf_limit => tf_limit_sig,
      to_time => to_time,
      variable_selector => find_var_select,
      variable_result => find_var_result,
      new_data => new_data,
      old_data => old_data,
      register_output => register_output,
      register_input => register_input,
      register_re => register_re,
      register_rst => register_rst
  );

end RTL;
