LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY register_testbenk IS
  PORT ( 
    -- Inputs from clk & rst_n
    clk  : IN STD_LOGIC; 
    rst_n_mcu : IN STD_LOGIC;
		switch			  : IN	STD_LOGIC_VECTOR(17 DOWNTO 0);
		btn			  : IN	STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Outputs to Led
		led_g	: OUT	STD_LOGIC_VECTOR(7 downto 0);
		led_r	: OUT	STD_LOGIC_VECTOR(17 downto 0);

    -- GPIO pins
    gpio_pins : INOUT STD_LOGIC_VECTOR(35 downto 0);

    -- SBI
    chipselect  : in std_logic;
    wr          : in std_logic;
    rd          : in std_logic;
    address     : in std_logic;
    writedata   : in std_logic_vector(15 downto 0);
    readdata    : out std_logic_vector(15 downto 0)
  );
END ENTITY;

ARCHITECTURE RTL OF register_testbenk IS
  COMPONENT sar_adc_register_test IS
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
      wren_b		: OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT minne IS
    PORT
    (
      address_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      address_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      clock_a		: IN STD_LOGIC;
      clock_b		: IN STD_LOGIC;
      data_a		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
      data_b		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
      wren_a		: IN STD_LOGIC;
      wren_b		: IN STD_LOGIC;
      q_a		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
      q_b		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
    );
  END COMPONENT;
	component antiprell_key is
		port(
			clk : in std_logic;
			input : in std_logic;
			passering : out std_logic
		);
	end component;
  -- END OF COMPONENT DECLARATION --

-- SIGNALS FOR COMPONENTS --
  -- btn(3) -> rst_n
    SIGNAL rst_n                    : STD_LOGIC;
    SIGNAL rst_n_key                : STD_LOGIC;
  -- sar_adc_register_test
    -- btn(1) && KEY(0)
      SIGNAL start : STD_LOGIC;
    -- btn(0) -> start normal test
      SIGNAL start_normal_test : STD_LOGIC;
    -- btn(1) -> start_sar_adc_test
      SIGNAL start_sar_adc_test          : STD_LOGIC;
    -- switch(0)
      SIGNAL register_new_data     : STD_LOGIC_VECTOR(7 downto 0);
    -- switch(1)
      SIGNAL register_old_data     : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL progress : STD_LOGIC_VECTOR(15 downto 0);
  -- minne
      SIGNAL q_a		    : STD_LOGIC_VECTOR (9 DOWNTO 0);
      SIGNAL address_a	: STD_LOGIC_VECTOR (15 DOWNTO 0);
      SIGNAL clock_a		: STD_LOGIC;
      SIGNAL data_a		: STD_LOGIC_VECTOR (9 DOWNTO 0);
      SIGNAL wren_a		: STD_LOGIC;
    -- For sar_adc_register_test-module
      SIGNAL q_b		    : STD_LOGIC_VECTOR (9 DOWNTO 0);
      SIGNAL address_b	: STD_LOGIC_VECTOR (15 DOWNTO 0);
      SIGNAL clock_b		: STD_LOGIC;
      SIGNAL data_b		: STD_LOGIC_VECTOR (9 DOWNTO 0);
      SIGNAL wren_b		: STD_LOGIC;
    
  -- Signals for SBI process
  SIGNAL mem_read_counter : unsigned(1 downto 0);

  SIGNAL progress_int : integer range 7 downto 0;

  SIGNAL register_output_dff_1, register_output_dff_2 : STD_LOGIC_VECTOR(7 downto 0);


BEGIN

  register_new_data <= (others => not switch(0));
  register_old_data <= (others => not switch(1));

  clock_a <= clk when mem_read_counter /= "00" else '0';
  wren_a <= '1' when (mem_read_counter = "10" and address = '1') else '0';

  rst_n <= '0' when (rst_n_key = '0' or rst_n_mcu = '0') else '1';

  start <= '1' when (start_normal_test = '0' or start_sar_adc_test = '0') else '0';

  readdata <= "000000" & q_a when address = '0' 
                else switch(15 downto 0);


  sbi : process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        led_r <= (others => '1');
        led_g <= (others => '1');
        mem_read_counter <= "00";
        data_a <= (others => '0');
        address_a <= (others => '0');
        register_output_dff_1 <= (others => '0');
        register_output_dff_2 <= (others => '0');
      else
        register_output_dff_1 <= gpio_pins(15 downto 8);
        register_output_dff_2 <= register_output_dff_1;
        led_r <= switch;

        progress_int <= to_integer(unsigned(progress)/8192);

        for i in 0 to 7 loop
          if (i <= progress_int) then
            led_g(i) <= '1';
          else
            led_g(i) <= '0';
          end if;
        end loop;

        if wr = '1' then
          mem_read_counter <= "11";
        else
          if mem_read_counter /= "00" then
            mem_read_counter <= mem_read_counter - 1;
          end if;
        end if;

        case address is
          when '0' =>
            if wr = '1' then
              address_a <= writedata;
            end if;
          when '1' =>
            if wr = '1' then
              data_a <= writedata(9 downto 0);
            end if;
        end case;
      end if;
    end if;
  end process;


  sar_adc_register_test_inst: sar_adc_register_test
   port map(
      clk => clk,
      rst_n => rst_n,
      start => start,
      sar_adc_test => not start_sar_adc_test,
      register_new_data => register_new_data,
      register_old_data => register_old_data,
      register_re_time => switch(17 downto 10),
      register_data_output => register_output_dff_2,
      progress => progress,
      register_en => gpio_pins(16),
      register_rst => gpio_pins(17),
      register_data_input => gpio_pins(7 downto 0),
      q_b => q_b,
      address_b => address_b,
      clock_b => clock_b,
      data_b => data_b,
      wren_b => wren_b
  );
  minne_inst: minne
   port map(
      address_a => address_a,
      address_b => address_b,
      clock_a => clock_a,
      clock_b => clock_b,
      data_a => data_a,
      data_b => data_b,
      wren_a => wren_a,
      wren_b => wren_b,
      q_a => q_a,
      q_b => q_b
  );
  start_normal_test_key_inst : antiprell_key
   port map(
      clk => clk,
      input => btn(0),
      passering => start_normal_test
  );
  start_sar_adc_test_key_inst : antiprell_key
   port map(
      clk => clk,
      input => btn(1),
      passering => start_sar_adc_test
  );
  rst_n_key_inst : antiprell_key
   port map(
      clk => clk,
      input => btn(3),
      passering => rst_n_key
  );
END RTL;
