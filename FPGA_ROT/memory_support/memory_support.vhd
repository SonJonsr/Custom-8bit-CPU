library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_support is
  generic(
    adr_keyboard_ascii  : std_logic_vector(15 downto 0) := x"92C1";
    adr_keyboard_info   : std_logic_vector(15 downto 0) := x"92C2";
    adr_random          : std_logic_vector(15 downto 0) := x"92C3";
    adr_timer_millis_ll : std_logic_vector(15 downto 0) := x"92C4";
    adr_timer_millis_hh : std_logic_vector(15 downto 0) := x"92C5";
    adr_eeprom_start    : std_logic_vector(15 downto 0) := x"92C6";
    adr_eeprom_end      : std_logic_vector(15 downto 0) := x"93C5"
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

    cpu_rw        : in    std_logic;
    cpu_address   : in    std_logic_vector(15 downto 0);
    cpu_data      : inout std_logic_vector(7 downto 0);

    mem_wren      : out std_logic := '0';
    mem_data_out  : in  std_logic_vector(7 downto 0);
    mem_data_in   : out std_logic_vector(7 downto 0) := x"00";
    mem_address   : out std_logic_vector(15 downto 0) := x"0000";

    eeprom_rw     : out std_logic := '0';
    eeprom_adr    : out std_logic_vector(7 downto 0);
    eeprom_dat    : inout std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of memory_support is
  signal clk_slow_dff : std_logic := '0';
  signal cpu_data_in  : std_logic_vector(7 downto 0) := x"00";

  signal millis_temp  : std_logic_vector(15 downto 0) := x"0000";
  signal random_temp  : std_logic_vector(7 downto 0) := x"00";
  signal cpu_address_dff : std_logic_vector(15 downto 0) := x"0000";
begin


  cpu_data <= cpu_data_in 
                when cpu_rw = '0' else
              (others => 'Z');

  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        -- Port signals
        keyboard_en   <= '0';
        keyboard_en   <= '0';    
        keyboard_rw   <= '0';    
        keyboard_as   <= '0';    
        cpu_data_in   <= (others => '0');
        mem_wren      <= '0';
        mem_data_in   <= (others => '0');
        mem_address   <= (others => '0'); 

        -- Internal signals
        clk_slow_dff  <= '0';
        cpu_data_in   <= (others => '0');
        millis_temp   <= (others => '0'); 
        random_temp   <= (others => '0');
        cpu_address_dff <= (others => '0');
      else
        mem_address <= cpu_address;

        clk_slow_dff <= clk_slow;
        cpu_address_dff <= cpu_address;
        case cpu_address is
          when adr_keyboard_ascii|adr_keyboard_info =>
            keyboard_as <= not cpu_address(0);
            cpu_data_in <= keyboard_data;
            keyboard_rw <= cpu_rw;

            if clk_slow = '1' and clk_slow_dff = '0' then
              keyboard_en <= '1';
            else
              keyboard_en <= '0';
            end if;

          when adr_random =>
            if cpu_address_dff /= adr_random then
              -- Since the random-module is continuesly updating the random_byte
              -- we save the value into a temp var the moment we first get to
              -- adr_random. 
              random_temp <= random_byte;
            end if;
            cpu_data_in <= random_temp;


          when adr_timer_millis_ll =>
            -- if cpu_address_dff /= adr_timer_millis_ll then
            --   -- Saves the millis signal in a temp var so the $HH-byte and $LL-byte 
            --   -- are refering to the same time
            --   millis_temp <= timer_millis;
            -- end if;
            cpu_data_in <= millis_temp(7 downto 0);

          when adr_timer_millis_hh =>
            if cpu_address_dff /= adr_timer_millis_hh then
              -- Saves the millis signal in a temp var so the $HH-byte and $LL-byte 
              -- are refering to the same time
              millis_temp <= timer_millis;
            end if;
            cpu_data_in <= millis_temp(15 downto 8);

          when adr_eeprom_start to adr_eeprom_end =>
            if clk_slow = '1' and clk_slow_dff = '0' then
              eeprom_rw <= cpu_rw;
              eeprom_dat <= cpu_data_in;
            else
              eeprom_rw <= '0';
              cpu_data_in <= eeprom_dat;
            end if;


          when others =>
            mem_data_in <= cpu_data;
            cpu_data_in <= mem_data_out;

            if cpu_rw = '1' and (clk_slow = '1' and clk_slow_dff = '0') then
              mem_wren <= '1';
            else
              mem_wren <= '0';
            end if;

        end case;

      end if;
    end if;
  end process;
end architecture;
