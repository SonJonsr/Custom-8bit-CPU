LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY sar_adc_register_test IS
  PORT ( 
    clk         : in std_logic;
    rst_n       : in std_logic;
    
    start : in STD_LOGIC;

    sar_adc_test          : in STD_LOGIC;
    
    register_new_data     : in STD_LOGIC_VECTOR(7 downto 0);
    register_old_data     : in STD_LOGIC_VECTOR(7 downto 0);

    register_re_time      : IN STD_LOGIC_VECTOR(7 downto 0);

    register_data_output  : INOUT STD_LOGIC_VECTOR(7 downto 0) := "ZZZZZZZZ";
    register_en           : INOUT STD_LOGIC;
    register_rst          : INOUT STD_LOGIC;
    register_data_input   : INOUT STD_LOGIC_VECTOR(7 downto 0);

    progress : OUT STD_LOGIC_VECTOR(15 downto 0);

    -- Memory interface
		q_b		    : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		address_b	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		clock_b		: OUT STD_LOGIC;
		data_b		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
		wren_b		: OUT STD_LOGIC  := '0'
  );
END ENTITY;

ARCHITECTURE RTL OF sar_adc_register_test IS

  COMPONENT pin_controller IS
  END COMPONENT;

  TYPE state_main   IS (IDLE, STARTUP, STARTUP_SAR_ADC, T_RISING, T_FALLING, SETUP, START_TESTING, DONE_TESTING, DONE_TESTING_SAR_ADC, SAVE, DONE);
  TYPE state_test   IS (IDLE, SETUP, REGISTER_RESET, BEFORE_ENABLE, ENABLE, AFTER_ENABLE, SUCCESS, FAIL, DONE);
  TYPE state_save IS (IDLE, SAR_ADC_SETUP, SAR_ADC_SAVE, SETUP, SAVE, DONE);
  SIGNAL main_s     : state_main := IDLE;
  SIGNAL test_s     : state_test := IDLE;
  SIGNAL save_s     : state_save := IDLE;

  SIGNAL en_counter : integer range 0 to 255 := 0;

  SIGNAL test_counter : integer range 9 downto 0;
  SIGNAL tf_sar_adc_counter  : integer range 9 downto 0;
  SIGNAL tr_sar_adc_counter   : integer range 9 downto 0;
  SIGNAL tf_sar_adc  : unsigned(9 downto 0);
  SIGNAL tr_sar_adc   : unsigned(9 downto 0);
  SIGNAL tf_sar_adc_small : unsigned(7 downto 0);
  SIGNAL tr_sar_adc_small : unsigned(7 downto 0);
  SIGNAL counter : unsigned(9 downto 0);
  SIGNAL to_counter      : unsigned(9 downto 0);
  SIGNAL to_counter_temp : unsigned(9 downto 0);
  SIGNAL to_counter_longest : unsigned(9 downto 0);
  SIGNAL tr_goal    : unsigned(7 downto 0);
  SIGNAL tf_goal    : unsigned(7 downto 0);

  SIGNAL tr_counter : unsigned(7 downto 0) := "00000000";
  SIGNAL tf_counter : unsigned(7 downto 0) := "00010000";

  SIGNAL tr_temp  : unsigned(7 downto 0);
  SIGNAL tf_temp  : unsigned(7 downto 0);

  SIGNAL tr_success : STD_LOGIC := '0';
  SIGNAL tf_success : STD_LOGIC := '0';
  SIGNAL test_success : STD_LOGIC := '0';

  SIGNAL setup_register : STD_LOGIC := '1';

  SIGNAL input_data : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL start_dff : STD_LOGIC;

  SIGNAL register_data : STD_LOGIC_VECTOR(1 downto 0);
  SIGNAL sar_adc_save_counter : integer range 2 downto 0 := 0;
  SIGNAL sar_adc_test_sig : STD_LOGIC;
  SIGNAL register_new_data_sig : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
  SIGNAL register_old_data_sig : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
  SIGNAL register_rst_counter : integer range 0 to 15 := 0;

BEGIN

  register_data_output <= "ZZZZZZZZ";
  clock_b <= clk when (main_s = SAVE) else '0';

  progress <= STD_LOGIC_VECTOR(tr_counter) & STD_LOGIC_VECTOR(tf_counter);

  register_en <= '0' when test_s = ENABLE else '1';

  register_data <= register_old_data_sig(0) & register_new_data_sig(0);

  register_rst <= '0' when test_s = REGISTER_RESET or rst_n = '0' else '1';

  -- register_data_input <= input_data
  --   when ("0011111111" - tr_goal <= counter and "010000000" + tf_goal >= counter) 
  --   else not input_data;


  main_p : process(clk)
  begin
    if (rising_edge(clk)) then
      if rst_n = '0' then
        main_s <= IDLE;
        tr_counter <= (others => '0');
        tf_counter <= (others => '0');
      else

        start_dff <= start;
        case main_s is
          when IDLE =>
            if start = '1' and start_dff = '0' then
              sar_adc_test_sig <= sar_adc_test;
              register_new_data_sig <= register_new_data;
              register_old_data_sig <= register_old_data;
              if sar_adc_test = '0' then
                main_s <= STARTUP;
              else
                main_s <= STARTUP_SAR_ADC;
              end if;
            end if;

          when STARTUP =>
            tr_temp <= tr_counter;
            tf_temp <= tf_counter;

            main_s <= START_TESTING;


          when STARTUP_SAR_ADC =>
            tr_sar_adc <= (others => '0');
            tr_sar_adc_small <= (others => '1');
            tr_sar_adc_counter <= 8;

            main_s <= T_RISING;

          when T_RISING =>
            if (test_success = '1') then
              tr_sar_adc(tr_sar_adc_counter + 1) <= '0';
            end if;
            tr_sar_adc(tr_sar_adc_counter) <= '1';

            tf_sar_adc <= (others => '0');
            tf_sar_adc_small <= (others => '1');
            tf_sar_adc_counter <= 8;

            main_s <= T_FALLING;

          when T_FALLING =>
            if (test_success = '1') then
              tf_sar_adc(tf_sar_adc_counter + 1) <= '0';
            end if;
            tf_sar_adc(tf_sar_adc_counter) <= '1';

            main_s <= SETUP;

          when SETUP =>
            tr_temp <= tr_sar_adc(7 downto 0);
            tf_temp <= tf_sar_adc(7 downto 0);

            main_s <= START_TESTING;

          when START_TESTING =>
            if test_s = DONE then
              if sar_adc_test_sig = '0' then
                main_s <= DONE_TESTING;
              else
                main_s <= DONE_TESTING_SAR_ADC;
              end if;
            end if;

          when DONE_TESTING =>
            if test_s = DONE then
              main_s <= SAVE;
            end if;

          when DONE_TESTING_SAR_ADC =>
            tf_sar_adc_counter <= tf_sar_adc_counter - 1;
            if tf_sar_adc_small > tf_sar_adc(7 downto 0)
            and tr_sar_adc_small >= tr_sar_adc(7 downto 0)
            and test_success = '1' then
              tf_sar_adc_small <= tf_sar_adc(7 downto 0);
            end if;

            if (tf_sar_adc_counter = 0) then
              tr_sar_adc_counter <= tr_sar_adc_counter - 1;
              if (tr_sar_adc_small > tr_sar_adc(7 downto 0)) and (tf_sar_adc_small /= x"FF") then
                tr_sar_adc_small <= tr_sar_adc(7 downto 0);
              end if;

              if (tr_sar_adc_counter = 0) then
                main_s <= SAVE;
              else
                main_s <= T_RISING;
              end if;

            else
              main_s <= T_FALLING;
            end if;

          when SAVE =>
            if save_s = DONE then
              if sar_adc_test_sig = '0' then
                if tf_counter >= "11111111" then
                  tf_counter <= "00000000";
                  if tr_counter >= "11111111" then
                    tr_counter <= "00000000";
                    main_s <= DONE;
                  else
                    main_s <= STARTUP;
                    tr_counter <= tr_counter + 1;
                  end if;
                else
                  main_s <= STARTUP;
                  tf_counter <= tf_counter + 1;
                end if;
              else
                main_s <= DONE;
              end if;
            end if;

          when DONE =>
            main_s <= IDLE;

        end case;
      end if;

    end if;
  end process;

  test_p : process(clk)
  begin
    if (rising_edge(clk)) then
      if rst_n = '0' then
        test_s <= IDLE;

        counter <= (others => '0');
      else

        case test_s is

          when IDLE =>
            if main_s = START_TESTING then
              test_s <= SETUP;
              to_counter_longest <= (others => '0');
              setup_register <= '1';
              test_counter <= 0;
            end if;

          when SETUP =>
            counter <= (others => '0');
            to_counter_temp <= (others => '0');
            to_counter <= (others => '0');

            if setup_register = '1' then
              tr_goal <= (others => '1');
              tf_goal <= (others => '1');
              input_data <= register_old_data_sig;
            else
              tr_goal <= tr_temp;
              tf_goal <= tf_temp;
              input_data <= register_new_data_sig;
            end if;

            test_s <= REGISTER_RESET;
            
          when REGISTER_RESET =>
            if register_rst_counter >= 4 then
              test_s <= BEFORE_ENABLE;
              register_rst_counter <= 0;
            else
              register_rst_counter <= register_rst_counter + 1;
            end if;

          when BEFORE_ENABLE =>
            counter <= counter + 1;
            if counter(7 downto 0) >= "11111111" - tr_goal then
              register_data_input <= input_data;
            else
              register_data_input <= not input_data;
            end if;
            
            if counter  = "0011111111" then
              test_s <= ENABLE;
            end if;

          when ENABLE =>
            register_data_input <= input_data;
            if en_counter >= unsigned(register_re_time) then
              en_counter <= 0;
              test_s <= AFTER_ENABLE;
            else
              en_counter <= en_counter + 1;
            end if;

          when AFTER_ENABLE =>
            if counter >= "01" & tf_goal then
              register_data_input <= not input_data;
            else
              register_data_input <= input_data;
            end if;

            if register_data_output /= input_data then
              to_counter <= counter - "0100000000";
            end if;

            if counter = "1111111111" then
              if (setup_register = '1' or (register_data_output) = input_data) then
                test_s <= SUCCESS;
              else
                test_s <= FAIL;
              end if;
            else
              counter <= counter + 1;
            end if;

          when SUCCESS =>
            test_success <= '1';
            if to_counter_longest < to_counter then
              to_counter_longest <= to_counter;
            end if;

            setup_register <= not setup_register;

            if test_counter = 0 and setup_register = '0' then
              test_s <= DONE;
            else
              if (setup_register = '0') then
                test_counter <= test_counter + 1;
              end if;

              test_s <= SETUP;
            end if;

          when FAIL =>
              test_success <= '0';

              test_s <= DONE;

          when DONE =>
            if main_s = DONE_TESTING or main_s = DONE_TESTING_SAR_ADC then
              test_s <= IDLE;
            end if;

        end case;
      end if;
    end if;
  end process;

  save_p : process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        save_s <= IDLE;

        sar_adc_save_counter <= 0;
        wren_b <= '0';
      else
        case save_s is
          when IDLE =>
            wren_b <= '0';
            if main_s = SAVE then
              if sar_adc_test_sig = '1' then
                save_s <= SAR_ADC_SETUP;
              else
                save_s <= SETUP;
              end if;
            end if;

          when SAR_ADC_SETUP =>
            address_b(15 downto 8) <= "00000000";
            address_b(7 downto 4) <= "0000";
            address_b(3 downto 0) <= STD_LOGIC_VECTOR(to_unsigned( to_integer(unsigned(register_data)) * 3 + sar_adc_save_counter, 4));

            case sar_adc_save_counter is
              when 0 =>
                data_b <= "00" & std_logic_vector(tr_sar_adc_small);
              when 1 => 
                data_b <= "00" & std_logic_vector(tf_sar_adc_small);
              when 2 =>
                data_b <= std_logic_vector(to_counter_longest);
            end case;

            save_s <= SAR_ADC_SAVE;


          when SAR_ADC_SAVE =>
            wren_b <= '1';
            if (sar_adc_save_counter < 2) then
              sar_adc_save_counter <= sar_adc_save_counter + 1;
              save_s <= IDLE;
            else
              sar_adc_save_counter <= 0;
              save_s <= DONE;
            end if;

          when SETUP =>
            address_b <= std_logic_vector(tr_counter & tf_counter); 
            data_b <= std_logic_vector(to_counter_longest);
            save_s <= SAVE;

          when SAVE =>
            wren_b <= '1';
            save_s <= DONE;

          when DONE =>
            wren_b <= '0';
            if main_s = DONE or main_s = STARTUP then
              save_s <= IDLE;
            end if;
        end case;
      end if;
    end if;
  end process;
END RTL;
