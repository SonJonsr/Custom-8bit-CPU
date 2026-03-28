library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_test_handler is
  port(
    clk   : in  std_logic;
    rst_n : in  std_logic;
    
  -- Signals to start the component,
  -- tell if the component is rdy for the next test
  -- and if it failed the last test
    en              : in  std_logic;
    new_data        : in  std_logic;
    old_data        : in  std_logic;
    rdy             : out std_logic;
    fail            : out std_logic;

  -- Connects directly to the register board
    register_output : inout std_logic_vector(7 downto 0);
    register_input  : inout std_logic_vector(7 downto 0);
    register_re     : inout std_logic;
    register_rst    : inout std_logic;

  -- Limit for the variables of the test
    tr_limit        : in  unsigned(7 downto 0);
    re_limit        : in  unsigned(7 downto 0);
    tf_limit        : in  unsigned(7 downto 0);

  -- Time it took for register_output to match the written data
    to_time         : out unsigned(9 downto 0)
  );
end entity;

architecture RTL of register_test_handler is
  type state_machine is (IDLE, START, REGISTER_RESET, BEFORE_ENABLE, ENABLE, AFTER_ENABLE, SETUP_DONE, TEST_DONE);

  signal state : state_machine := IDLE;
  signal en_dff : std_logic;

  signal register_rst_counter : unsigned(7 downto 0);
  signal tr_counter : unsigned(7 downto 0);
  signal to_counter : unsigned(9 downto 0);

  signal new_data_sig : std_logic;
  signal old_data_sig : std_logic;

  signal tr_limit_sig : unsigned(7 downto 0);
  signal re_limit_sig : unsigned(7 downto 0);
  signal tf_limit_sig : unsigned(7 downto 0);

  signal to_time_temp     : unsigned(9 downto 0);
  signal to_time_longest  : unsigned(9 downto 0);


  signal test_counter   : integer range 127 downto 0 := 0;
  signal setup_register : std_logic := '1';

  signal input_data : std_logic_vector(7 downto 0);

  signal output_data_dff1 : std_logic_vector(7 downto 0);
  signal output_data_dff2 : std_logic_vector(7 downto 0);

begin

  rdy             <=  '1' when 
                        state = IDLE 
                      else '0';

  register_re     <=  '1' when 
                        state = ENABLE 
                      else '0';

  register_rst    <=  '1' when 
                        state = REGISTER_RESET or
                        rst_n = '0'
                      else '0';

  register_input  <=  input_data when 
                      ((state = REGISTER_RESET)) or
                      ((state = BEFORE_ENABLE  and         ((x"FF" - tr_limit_sig) <= tr_counter))) or
                      ((state = ENABLE)) or
                      ((state = AFTER_ENABLE   and  (("00" & re_limit_sig) + ("00" & tf_limit_sig)) > to_counter))
                      else not input_data;

  register_output <= (others => 'Z');

                    

  process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        state <= IDLE;
        fail <= '0';
        en_dff <= '0';
        to_time <= (others => '0');
        to_time_longest <= (others => '0');
        output_data_dff1 <= (others => '0');
        output_data_dff2 <= (others => '0');
      else
        en_dff <= en;
        output_data_dff1 <= register_output;
        output_data_dff2 <= output_data_dff1;
        case state is
          when IDLE =>
            to_time <= to_time_longest;
            if en = '1' and en_dff = '0' then
              test_counter <= 0;
              setup_register <= '1';
              to_time_longest <= (others => '0');

              new_data_sig <= new_data;
              old_data_sig <= old_data;

              state <= START;
            end if;

          when START =>
            tr_counter <= (others => '0');
            to_counter <= (others => '0');
            to_time_temp <= (others => '0');
            if setup_register = '1' then
              input_data <= (others => old_data_sig);
              register_rst_counter <= x"00";
              tr_limit_sig <= x"FF";
              re_limit_sig <= x"40"; -- re will be high for 63 clks
              tf_limit_sig <= x"FF";
              state <= REGISTER_RESET;
            else
              input_data <= (others => new_data_sig);
              tr_limit_sig <= tr_limit;
              re_limit_sig <= re_limit;
              tf_limit_sig <= tf_limit;
              state <= BEFORE_ENABLE;
            end if;

          -- The reset 
          when REGISTER_RESET =>
            if register_rst_counter = x"80" then
              state <= BEFORE_ENABLE;
            else
              register_rst_counter <= register_rst_counter + 1;
            end if;
            
          when BEFORE_ENABLE =>
            if tr_counter = x"FF" then
              state <= ENABLE;
            else
              tr_counter <= tr_counter + 1;
            end if;

          when ENABLE =>
            -- counter is outside of if statement so it counts for the clk cycle where
            -- it swaps to the next state. The same counter is used for Rising Edge and
            -- Time_on since we want the rise time from the start of the Rising Edge.
            to_counter <= to_counter + 1;
            if re_limit_sig < to_counter then
              state <= AFTER_ENABLE;
            end if;

          when AFTER_ENABLE =>
            -- Saves the last time register_output was different from input_data
            if output_data_dff2 /= input_data then
              to_time_temp <= to_counter;
            end if;

            if to_counter = "1111111111" then
              setup_register <= not setup_register;
              if setup_register = '1' then
                state <= SETUP_DONE;
              else
                state <= TEST_DONE;
              end if;
            else
              to_counter <= to_counter + 1;
            end if;

          when SETUP_DONE =>
            -- check if failed
            if output_data_dff2 = input_data then
              state <= START;
            else
              fail <= '1';
              to_time_longest <= (others => '0');
              state <= IDLE;
            end if;

          when TEST_DONE =>
            -- check if failed
            if output_data_dff2 = input_data then
              -- Update to_time_longest
              if to_time_longest <= to_time_temp then
                to_time_longest <= to_time_temp;
              end if;

              -- check if test has completed x times
              if test_counter < 20 then
                state <= START;
                test_counter <= test_counter + 1;
              else
                fail <= '0';
                state <= IDLE;
              end if;
            -- if register_output /= input_data the test have failed and the test stops
            else
              fail <= '1';
              to_time_longest <= (others => '1');
              state <= IDLE;
            end if;

        end case;

      end if;
    end if;
  end process;
end RTL;
