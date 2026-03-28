LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY register_testbenk_basic IS
  PORT ( 
    -- Inputs from clk & rst_n
    CLOCK_50  : IN STD_LOGIC; 
    KEY       : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SW        : IN	STD_LOGIC_VECTOR(17 DOWNTO 0);

    -- Outputs to Led
		LEDG      : OUT	STD_LOGIC_VECTOR(7 downto 0);
		LEDR      : OUT	STD_LOGIC_VECTOR(17 downto 0);

    -- GPIO pins
    GPIO      : INOUT STD_LOGIC_VECTOR(35 downto 0)
  );
END ENTITY;

ARCHITECTURE RTL OF register_testbenk_basic IS
	component antiprell_key is
		port(
			clk : in std_logic;
			input : in std_logic;
			passering : out std_logic
		);
	end component;
  -- END OF COMPONENT DECLARATION --

  -- SIGNALS
  TYPE  STATE_MACHINE IS (IDLE, START, REGISTER_RESTART, BEFORE_ENABLE, ENABLE, AFTER_ENABLE, FAIL, SUCCESS, DONE);
  SIGNAL  state : STATE_MACHINE := IDLE;
  SIGNAL  en, en_dff, rst : STD_LOGIC := '0';

  SIGNAL  tr_goal,    tf_goal,
          tr_counter, tf_counter : UNSIGNED(8 downto 0) := (others => '0');

  SIGNAL  en_counter  : integer range 0 to 127 := 0;
  SIGNAL  rst_counter  : integer range 0 to 127 := 0;

  SIGNAL ledg_dff : unsigned(7 downto 0);

  SIGNAL gpio_dff_1 : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL gpio_dff_2 : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL delay_counter : unsigned(15 downto 0) := (others => '0');
BEGIN

  GPIO(15 downto 8) <= "ZZZZZZZZ"; 
  GPIO(19) <= 'Z';

  GPIO(16) <= '0' when state = ENABLE else '1';
  GPIO(17) <= '0' when rst = '1' or state = REGISTER_RESTART else '1';

  main : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if rst = '1' then
        en_dff <= '0';
        state <= IDLE;
        LEDG <= (others => '0');
        LEDR <= (others => '0');
      else

        if en = '1' and en_dff = '0' then
          GPIO(18) <= '0';
          delay_counter <= (others => '0');
        else
          GPIO(18) <= '1';
          delay_counter <= delay_counter + 1;
        end if;
        if (GPIO(19) = '0') then
          LEDR(15 downto 0) <= STD_LOGIC_VECTOR(delay_counter);
        end if;


        gpio_dff_1 <= GPIO(15 downto 8);
        gpio_dff_2 <= gpio_dff_1;
        en_dff <= en;
        case state is
          when IDLE =>
            LEDG <= not gpio_dff_2;
            if en = '1' and en_dff = '0' then
              state <= START;
            end if;

          when START =>
            rst_counter <= 0;
            en_counter <= 0;
            tr_counter <= (others => '0');
            tf_counter <= (others => '0');
            tr_goal <= unsigned(SW(17 downto 9));
            tf_goal <= unsigned(SW(8 downto 0)); 
             
            state <= BEFORE_ENABLE;

          when REGISTER_RESTART =>
            rst_counter <= rst_counter + 1;
            if rst_counter >= 3 then
              state <= BEFORE_ENABLE;
            end if;

          when BEFORE_ENABLE =>
            tr_counter <= tr_counter + 1;
            if x"1FF" - tr_counter <= tr_goal then
              GPIO(7 downto 0) <= x"00";
            else
              GPIO(7 downto 0) <= x"FF";
            end if;

            if tr_counter >= x"1FF" then
              state <= ENABLE;
            end if;

          when ENABLE =>
            GPIO(7 downto 0) <= (others => '0');
            en_counter <= en_counter + 1;
            if en_counter >= 2 then
              state <= AFTER_ENABLE;
            end if;

          when AFTER_ENABLE =>
            tf_counter <= tf_counter + 1;
            if tf_counter >= tf_goal then
              GPIO(7 downto 0) <= x"FF";
            else
              GPIO(7 downto 0) <= x"00";
            end if;

            if tf_counter >= x"1FF" then
              if gpio_dff_2 = x"00" then
                state <= SUCCESS;
              else
                state <= FAIL;
              end if;
            end if;

          when FAIL =>
            LEDG <= (others => '0');
            state <= DONE;

          when SUCCESS =>
            -- ledg_dff <= unsigned(GPIO(15 downto 8));
            state <= DONE;

          when DONE =>
            LEDR(16) <= '1';
            state <= IDLE;

        end case;
      end if;
    end if;
  end process;



  enable_inst : antiprell_key
   port map(
      clk => CLOCK_50,
      input => not KEY(0),
      passering => en
  );
  rst_inst : antiprell_key
   port map(
      clk => CLOCK_50,
      input => not KEY(3),
      passering => rst
  );
END RTL;
