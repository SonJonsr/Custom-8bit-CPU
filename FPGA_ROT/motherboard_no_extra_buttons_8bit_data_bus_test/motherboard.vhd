library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity motherboard is
  generic(
    adr_main_display    : unsigned(15 downto 0) := x"E000";
    adr_info_display    : unsigned(15 downto 0) := x"EF00";
    adr_keyboard_ascii  : std_logic_vector(15 downto 0) := x"F2C0";
    adr_keyboard_info   : std_logic_vector(15 downto 0) := x"F2C1";
    adr_random          : std_logic_vector(15 downto 0) := x"F2C2";
    adr_timer_millis_ll : std_logic_vector(15 downto 0) := x"F2C3";
    adr_timer_millis_hh : std_logic_vector(15 downto 0) := x"F2C4";
    adr_eeprom_start    : std_logic_vector(15 downto 0) := x"F2C5";
    adr_eeprom_end      : std_logic_vector(15 downto 0) := x"F3C4"
  );
  port (
    CLOCK_50 : in  std_logic;

    GPIO      : inout std_logic_vector(0 to 35); 
    SW : in std_logic_vector(17 downto 0);
    KEY : in std_logic_vector(3 downto 0); 

    -- EEPROM I2C ports
    EEP_I2C_SCLK  : out std_logic;
    EEP_I2C_SDAT  : inout std_logic;

    PS2_CLK : in std_logic;
    PS2_DAT : in std_logic;

    HEX0, HEX1, HEX2, HEX3,
    HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0) := (others => '0');

    LEDG : OUT STD_LOGIC_VECTOR(7 downto 0);

    -- VGA
    VGA_CLK     : out std_logic;
    VGA_BLANK_N : out std_logic;
    VGA_SYNC_N  : out std_logic;
    VGA_HS      : out std_logic;
    VGA_VS      : out std_logic;
    VGA_R       : out std_logic_vector(7 downto 0);
    VGA_G       : out std_logic_vector(7 downto 0);
    VGA_B       : out std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of motherboard is
component memory is
  port (
    clk_a, clk_b : in  std_logic;

    -- Port A: 8-bit for CPU
    addr_a       : in  std_logic_vector(15 downto 0);
    data_in_a    : in  std_logic_vector(7 downto 0);
    we_a         : in  std_logic;
    data_out_a   : out std_logic_vector(7 downto 0);

    -- Port B: 16-bit for Screencard
    addr_b       : in  std_logic_vector(15 downto 0);
    data_out_b   : out std_logic_vector(7 downto 0)
  );
end component;
  component memory_support is
    generic(
      adr_keyboard_ascii  : std_logic_vector(15 downto 0) := x"F2C1";
      adr_keyboard_info   : std_logic_vector(15 downto 0) := x"F2C2";
      adr_random          : std_logic_vector(15 downto 0) := x"F2C3";
      adr_timer_millis_ll : std_logic_vector(15 downto 0) := x"F2C4";
      adr_timer_millis_hh : std_logic_vector(15 downto 0) := x"F2C5";
      adr_eeprom_start    : std_logic_vector(15 downto 0) := x"F2C6";
      adr_eeprom_end      : std_logic_vector(15 downto 0) := x"F3C5"
    );
    port (
      clk           : in  std_logic;
      rst_n         : in  std_logic;
      clk_slow      : in  std_logic;

      timer_millis    : in  std_logic_vector(15 downto 0);
      random_byte     : in  std_logic_vector(7 downto 0);
      keyboard_data   : in  std_logic_vector(7 downto 0);
      keyboard_rdy    : in  std_logic := '0';
      keyboard_en     : out std_logic := '0';
      keyboard_rw     : out std_logic := '0';
      keyboard_as     : out std_logic := '0';

      cpu_rw        : in  std_logic;
      cpu_address   : in  std_logic_vector(15 downto 0);
      cpu_data_out  : in  std_logic_vector(7 downto 0);
      cpu_data_in   : out std_logic_vector(7 downto 0);

      mem_wren      : out std_logic := '0';
      mem_data_out  : in  std_logic_vector(7 downto 0);
      mem_data_in   : out std_logic_vector(7 downto 0) := x"00";
      mem_address   : out std_logic_vector(15 downto 0) := x"0000";

      eeprom_rw       : out std_logic := '0';
      eeprom_adr      : out std_logic_vector(7 downto 0);
      eeprom_data_out : in  std_logic_vector(7 downto 0);
      eeprom_data_in  : out std_logic_vector(7 downto 0)
    );
  end component;
  component PS2_MODUL IS
    PORT ( 
      -- Inputs from clk & rst_n
      clk   : IN STD_LOGIC; 
      rst_n : IN STD_LOGIC;

      -- Inputs from PS/2
      ps2_clk : IN STD_LOGIC;
      ps2_dat : IN STD_LOGIC;

      -- Inputs from memory
      en            : IN STD_LOGIC;
      rw            : IN STD_LOGIC;
      array_select  : IN STD_LOGIC;

      -- Outputs
      rdy   : OUT STD_LOGIC := '0';
      ascii : OUT STD_LOGIC_VECTOR(7 downto 0) := x"00"
    );
  END component;
  component clock_controller_ver_2 is
    port (
      clk : in std_logic;
      rst_n : in std_logic;

      clk_btn : in std_logic;
      toggle_btn : in std_logic;
      rotary_sig : in std_logic_vector(1 downto 0);

      -- Hex display
      hex0, hex1, hex2, hex3,
      hex4, hex5, hex6, hex7	: out	std_logic_vector(6 downto 0);

      automatic : out std_logic;
      clk_slow : out std_logic;

      exp_pol : out std_logic;
      bcd_out : out std_logic_vector(7 downto 0);
      exp_out : out std_logic_vector(3 downto 0)
    );
  end component;
  component eeprom_manager is
    port(
      clk	  : in	std_logic;
      rst_n : in	std_logic;

      -- from cpu
      rw        : in  std_logic;
      adr_cpu   : in  std_logic_vector(7 downto 0);
      data_in   : in  std_logic_vector(7 downto 0);
      data_out  : out  std_logic_vector(7 downto 0);

      -- EEPROM I2C ports
      EEP_I2C_SCLK  : out std_logic;
      EEP_I2C_SDAT  : inout std_logic
    );
  end component;
  component random is
    port(
      clk   : in  std_logic;
      random_byte : out std_logic_vector(7 downto 0) := x"FF"
    );
  end component;

  component pixel_clk IS
    PORT(
      inclk0		: IN STD_LOGIC  := '0';
      c0		: OUT STD_LOGIC 
    );
  END component;

  component screencard IS
    GENERIC(
    -- Display memory start
      main_display_adr : unsigned(15 downto 0) := x"E000";
      info_display_adr : unsigned(15 downto 0) := x"EF00";
    -- Horizontal
      h_pixels : INTEGER := 640;
      h_front_porch : INTEGER := 16;
      h_sync_pulse : INTEGER := 96;
      h_back_porch : INTEGER := 48;
      h_polarity : STD_LOGIC := '0';
    -- Vertical
      v_pixels : INTEGER := 480;
      v_front_porch : INTEGER := 10;
      v_sync_pulse : INTEGER := 2;
      v_back_porch : INTEGER := 33;
      v_polarity : STD_LOGIC := '0'
    );
    PORT ( 
      pixel_clk   : IN STD_LOGIC;
      rst_n       : IN STD_LOGIC;

      -- Interface med minnet
      dat         : IN  STD_LOGIC_VECTOR(7 downto 0);
      adr         : OUT STD_LOGIC_VECTOR(15 downto 0);
      
      -- Interface med VGA-kabel
      VGA_CLK     : OUT STD_LOGIC;
      VGA_BLANK_N : OUT STD_LOGIC;
      VGA_SYNC_N  : OUT STD_LOGIC;
      VGA_HS      : OUT STD_LOGIC;
      VGA_VS      : OUT STD_LOGIC;
      VGA_R       : OUT STD_LOGIC_VECTOR(7 downto 0);
      VGA_G       : OUT STD_LOGIC_VECTOR(7 downto 0);
      VGA_B       : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
  END component;
  component timer_millis is
    generic(
      -- CLOCK_SPEED MUST BE HIGHER THAN 1kHz
      CLOCK_SPEED : INTEGER := 50_000_000
    );
    port(
      clk   : in  std_logic;
      rst_n : in  std_logic;
      millis : out std_logic_vector(15 downto 0) := (others => '0')
    );
  end component;
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

  component info_screen_manager is
    port (
      clk : in std_logic;
      rst_n : in std_logic;
      
      en : in std_logic;
      done : out std_logic := '1';
      

      cpu_rw      : in std_logic;
      cpu_address : in std_logic_vector(15 downto 0);
      cpu_data    : in std_logic_vector(7 downto 0);

      exp_pol : in std_logic;
      bcd_out : in std_logic_vector(7 downto 0);
      exp_out : in std_logic_vector(3 downto 0);

      mem_wren    : out std_logic := '0';
      mem_address : out std_logic_vector(15 downto 0) := (others => '0');
      mem_data    : out std_logic_vector(7 downto 0) := (others => '0')
    );
  end component;

  signal rst_n : std_logic := '0';
  signal rst_n_antibounced : std_logic := '0';

  signal cpu_rw       : std_logic;
  signal cpu_address  : std_logic_vector(15 downto 0);
  signal cpu_data_in  : std_logic_vector(7 downto 0);
  signal cpu_data_out : std_logic_vector(7 downto 0);

  signal mem_wren      : std_logic;
  signal mem_data_out  : std_logic_vector(7 downto 0);
  signal mem_data_in   : std_logic_vector(7 downto 0);
  signal mem_address   : std_logic_vector(15 downto 0);
  
  signal keyboard_data : std_logic_vector(7 downto 0);
  signal keyboard_rdy  : std_logic;
  signal keyboard_en   : std_logic;
  signal keyboard_rw   : std_logic;
  signal keyboard_as   : std_logic;

  signal eeprom_rw  : std_logic;
  signal eeprom_adr : std_logic_vector(7 downto 0);
  signal eeprom_data_in : std_logic_vector(7 downto 0);
  signal eeprom_data_out  : std_logic_vector(7 downto 0);

  signal screencard_dat : std_logic_vector(7 downto 0);
  signal screencard_adr : std_logic_vector(15 downto 0);

  signal millis : std_logic_vector(15 downto 0);

  signal random_byte : std_logic_vector(7 downto 0);

  signal gpio_dff : std_logic_vector(0 to 35);

  signal clk_slow : std_logic := '0';
  signal clk_slow_antibounce : std_logic := '0';
  signal clk_slow_antibounce_dff : std_logic := '1';
  signal automatic : std_logic := '0';

  signal pixel_clk_sig : std_logic := '0';

  signal start_up : std_logic := '0';

  signal exp_pol : std_logic := '0';
  signal bcd_out : std_logic_vector(7 downto 0) := (others => '0');
  signal exp_out : std_logic_vector(3 downto 0) := (others => '0');

  signal info_wait_count  : integer range 0 to 128 := 0;
  signal info_start       : std_logic := '0';
  signal info_en          : std_logic := '0';
  signal info_done        : std_logic := '0';
  signal info_cpu_rw      : std_logic := '0';
  signal info_cpu_address : std_logic_vector(15 downto 0) := (others => '0');
  signal info_cpu_data    : std_logic_vector(7 downto 0) := (others => '0');
  signal info_exp_pol     : std_logic := '0';
  signal info_exp         : std_logic_vector(3 downto 0) := (others => '0');
  signal info_bcd         : std_logic_vector(7 downto 0) := (others => '0');
  signal info_mem_wren    : std_logic := '0';
  signal info_mem_address : std_logic_vector(15 downto 0) := (others => '0');
  signal info_mem_data    : std_logic_vector(7 downto 0) := (others => '0');

  signal mux_mem_wren    : std_logic := '0';
  signal mux_mem_address : std_logic_vector(15 downto 0) := (others => '0');
  signal mux_mem_data_in    : std_logic_vector(7 downto 0) := (others => '0');
  signal mux_mem_data_out   : std_logic_vector(7 downto 0) := (others => '0');
  signal mem_data_out_backup: std_logic_vector(7 downto 0) := (others => '0');

begin
  mux_mem_wren <= mem_wren when info_done = '1' else info_mem_wren;
  mux_mem_address <= mem_address when info_done = '1' else info_mem_address;
  mux_mem_data_in <= mem_data_in when info_done = '1' else info_mem_data;
  mux_mem_data_out <= mem_data_out when info_done = '1' else mem_data_out_backup;

  -- Lights for CPU clock
  LEDG(0) <= clk_slow_antibounce; -- CPU clock signal
  LEDG(1) <= automatic;           -- shows if the clock is in automatic or manual mode

  LEDG(7 downto 2) <= (others => '0');

  GPIO(0 to 4) <= (others => 'Z');
  -- RW
  GPIO(8) <= 'Z';
  -- ADDRESSES
  GPIO(10 to 25) <= (others => 'Z');
  -- CPU CLOCK
  GPIO(9) <= clk_slow_antibounce;
  -- DATA BUs
  GPIO(26 to 33) <= SW(7 downto 0);

  gpio_setup : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if rst_n_antibounced = '1' and start_up = '0' then
        rst_n <= '0';
      else
        start_up <= '1';
        rst_n <= rst_n_antibounced;
      end if;
      gpio_dff <= GPIO;
      GPIO(6) <= not rst_n;


      cpu_rw      <= not gpio_dff(8);
      cpu_address <= gpio_dff(10 to 25);

      if gpio_dff(8) = '0' then 
        cpu_data_out  <= gpio_dff(26 to 33);
      end if;
    end if;
  end process;

  info_screen : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if rst_n = '0' then
        clk_slow_antibounce_dff <= '1';
      else
        clk_slow_antibounce_dff <= clk_slow_antibounce;
        if clk_slow_antibounce = '1' and clk_slow_antibounce_dff = '0' then
          info_en <= '0';
          info_start <= '1';
          info_wait_count <= 0;

          info_cpu_rw      <= cpu_rw;
          info_cpu_address <= cpu_address;
          if cpu_rw = '1' then
            info_cpu_data    <= cpu_data_out;
          else
            info_cpu_data    <= cpu_data_in;
          end if;
          info_exp_pol     <= exp_pol;
          info_exp         <= exp_out;
          info_bcd         <= bcd_out;

          mem_data_out_backup <= mem_data_out;
        elsif info_start = '1' then
          if info_wait_count < 100 then
            info_wait_count <= info_wait_count + 1;
          else
            info_start <= '0';
            info_en <= '1';
          end if;
        else
          info_wait_count <= 0;
          info_en <= '0';
        end if;
      end if;
    end if;
  end process;

  memory_support_inst: memory_support
   generic map(
      adr_keyboard_ascii => adr_keyboard_ascii,
      adr_keyboard_info => adr_keyboard_info,
      adr_random => adr_random,
      adr_timer_millis_ll => adr_timer_millis_ll,
      adr_timer_millis_hh => adr_timer_millis_hh,
      adr_eeprom_start => adr_eeprom_start,
      adr_eeprom_end => adr_eeprom_end
  )
   port map(
      clk => CLOCK_50,
      rst_n => rst_n,
      clk_slow => clk_slow_antibounce,
      timer_millis => millis,
      random_byte => random_byte,
      keyboard_data => keyboard_data,
      keyboard_rdy => keyboard_rdy,
      keyboard_en => keyboard_en,
      keyboard_rw => keyboard_rw,
      keyboard_as => keyboard_as,
      cpu_rw => cpu_rw,
      cpu_address => cpu_address,
      cpu_data_in => cpu_data_in,
      cpu_data_out => cpu_data_out,
      mem_wren => mem_wren,
      mem_data_out => mux_mem_data_out,
      mem_data_in => mem_data_in,
      mem_address => mem_address,
      eeprom_rw => eeprom_rw,
      eeprom_adr => eeprom_adr,
      eeprom_data_out => eeprom_data_out,
      eeprom_data_in => eeprom_data_in
  );  
  memory_inst: memory
   port map(
      clk_a => CLOCK_50,
      clk_b => pixel_clk_sig,
      addr_a => mux_mem_address,
      data_in_a => mux_mem_data_in,
      we_a => mux_mem_wren,
      data_out_a => mem_data_out,
      addr_b => screencard_adr,
      data_out_b => screencard_dat
  );
  eeprom_manager_inst: eeprom_manager
   port map(
      clk => CLOCK_50,
      rst_n => rst_n,
      rw => eeprom_rw,
      adr_cpu => eeprom_adr,
      data_in => eeprom_data_in,
      data_out => eeprom_data_out,
      EEP_I2C_SCLK => EEP_I2C_SCLK,
      EEP_I2C_SDAT => EEP_I2C_SDAT
  );
  clock_controller_ver_2_inst: clock_controller_ver_2
   port map(
      clk => CLOCK_50,
      rst_n => rst_n,
      clk_btn => KEY(0), -- Green button
      toggle_btn => KEY(1),  -- SW (rotary encoder HW-040)
      rotary_sig => "11",-- DT & CLK (rotary encoder HW-040)
      hex0 => HEX0,
      hex1 => HEX1,
      hex2 => HEX2,
      hex3 => HEX3,
      hex4 => HEX4,
      hex5 => HEX5,
      hex6 => HEX6,
      hex7 => HEX7,
      clk_slow => clk_slow,
      automatic => automatic,
      exp_pol => exp_pol,
      bcd_out => bcd_out,
      exp_out => exp_out 
  );
  timer_millis_inst: timer_millis
   generic map(
      CLOCK_SPEED => 50_000_000 
  )
   port map(
      clk => CLOCK_50,
      rst_n => rst_n,
      millis => millis
  );
  random_inst: random
   port map(
      clk => CLOCK_50,
      random_byte => random_byte
  );
  PS2_MODUL_inst: PS2_MODUL
   port map(
      clk => CLOCK_50,
      rst_n => rst_n,
      ps2_clk => PS2_CLK,
      ps2_dat => PS2_DAT,
      en => keyboard_en,
      rw => keyboard_rw,
      array_select => keyboard_as,
      rdy => keyboard_rdy,
      ascii => keyboard_data
  );
  pixel_clk_inst: pixel_clk
   port map(
      inclk0 => CLOCK_50,
      c0 => pixel_clk_sig
  );
  screencard_inst: screencard
   generic map(
      main_display_adr => adr_main_display,
      info_display_adr => adr_info_display
  )
   port map(    
      pixel_clk => pixel_clk_sig,
      rst_n => rst_n,
      dat => screencard_dat,
      adr => screencard_adr,
      VGA_CLK => VGA_CLK,
      VGA_BLANK_N => VGA_BLANK_N,
      VGA_SYNC_N => VGA_SYNC_N,
      VGA_HS => VGA_HS,
      VGA_VS => VGA_VS,
      VGA_R => VGA_R,
      VGA_G => VGA_G,
      VGA_B => VGA_B
  );
  

  info_screen_manager_inst : info_screen_manager
    port map(
      clk => CLOCK_50,
      rst_n => rst_n,
      en => info_en,
      done => info_done,
      cpu_rw => info_cpu_rw,     
      cpu_address => info_cpu_address,
      cpu_data => info_cpu_data,
      exp_pol => info_exp_pol,
      bcd_out => info_bcd,
      exp_out =>info_exp,
      mem_wren => info_mem_wren,
      mem_address => info_mem_address,
      mem_data => info_mem_data
    );

  rst_antibounce_inst: antibounce
   generic map(
      wait_clks => 1000
  )
   port map(
      clk => CLOCK_50,
      data_in => KEY(3),
      data_out => rst_n_antibounced 
  );
  clk_slow_antibounce_inst : antibounce
   generic map(
      wait_clks => 450
  )
   port map(
      clk => CLOCK_50,
      data_in => clk_slow,
      data_out => clk_slow_antibounce
  );


end architecture;
