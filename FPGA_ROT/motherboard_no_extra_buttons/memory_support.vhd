library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_support is
  generic(
    adr_keyboard_ascii  : std_logic_vector(15 downto 0) := x"F2C0";
    adr_keyboard_info   : std_logic_vector(15 downto 0) := x"F2C1";
    adr_random          : std_logic_vector(15 downto 0) := x"F2C2";
    adr_timer_millis_ll : std_logic_vector(15 downto 0) := x"F2C3";
    adr_timer_millis_hh : std_logic_vector(15 downto 0) := x"F2C4";
    adr_eeprom_start    : std_logic_vector(15 downto 0) := x"F2C5";
    adr_eeprom_end      : std_logic_vector(15 downto 0) := x"F3C4"
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
end entity;

architecture RTL of memory_support is
  -- Pre-calculate integer values for the case statement
  constant C_ADR_KEYBOARD_ASCII   : integer := to_integer(unsigned(adr_keyboard_ascii));
  constant C_ADR_KEYBOARD_INFO    : integer := to_integer(unsigned(adr_keyboard_info));
  constant C_ADR_RANDOM           : integer := to_integer(unsigned(adr_random));
  constant C_ADR_TIMER_MILLIS_LL  : integer := to_integer(unsigned(adr_timer_millis_ll));
  constant C_ADR_TIMER_MILLIS_HH  : integer := to_integer(unsigned(adr_timer_millis_hh));
  constant C_ADR_ROM_START        : integer := to_integer(unsigned(adr_eeprom_start));
  constant C_ADR_ROM_END          : integer := to_integer(unsigned(adr_eeprom_end));

  signal clk_slow_dff : std_logic := '0';

  signal millis_temp  : std_logic_vector(15 downto 0) := x"0000";
  signal random_temp  : std_logic_vector(7 downto 0) := x"00";
  signal cpu_address_dff : std_logic_vector(15 downto 0) := x"0000";

  signal keyboard_wait_en, keyboard_start_en : std_logic := '0';
begin

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

        -- This is to wait one whole slow_clk period before shifting
        -- the FIFO. Had to be done to avoid keyboard_data changing
        -- whilst the CPU was trying to read it.
        if keyboard_start_en = '1' or keyboard_wait_en = '1' then
          if clk_slow = '1' and clk_slow_dff = '0' then
            keyboard_wait_en <= '0';
            keyboard_en <= '1';
          else
            keyboard_wait_en <= '1';
          end if;
        else
          keyboard_en <= '0';
        end if;


        case to_integer(unsigned(cpu_address)) is
          when C_ADR_KEYBOARD_ASCII|C_ADR_KEYBOARD_INFO =>
            keyboard_as <= cpu_address(0);
            cpu_data_in <= keyboard_data;

            if clk_slow = '1' and clk_slow_dff = '0' then
              keyboard_rw <= cpu_rw;
              keyboard_start_en <= '1';
            else
              keyboard_start_en <= '0';
            end if;

          when C_ADR_RANDOM =>
            if cpu_address_dff /= adr_random then -- (*@\label{start:random_dff}@*)
              -- Since the random-module is continuesly updating the random_byte
              -- we save the value into a temp var the moment we first get to
              -- adr_random. 
              random_temp <= random_byte;
            end if; -- (*@\label{end:random_dff}@*)
            cpu_data_in <= random_temp;

          -- Timer millis low-byte
          when C_ADR_TIMER_MILLIS_LL =>
            -- Sets the cpu_data_in to the temp value set when the high-byte was read.
            cpu_data_in <= millis_temp(7 downto 0);

          -- Timer millis high-byte
          when C_ADR_TIMER_MILLIS_HH =>
            if cpu_address_dff /= adr_timer_millis_hh then -- (*@\label{start:timer_millis_hh}@*)
              -- Saves the millis signal in a temp var so the $HH-byte and $LL-byte 
              -- are refering to the same time
              millis_temp <= timer_millis;
            end if; -- (*@\label{end:timer_millis_hh}@*)
            cpu_data_in <= millis_temp(15 downto 8);


          -- Eeprom
          when C_ADR_ROM_START to C_ADR_ROM_END =>
            eeprom_adr <= cpu_address(7 downto 0);
            cpu_data_in <= eeprom_data_out;
            eeprom_data_in <= cpu_data_out;

            if clk_slow = '1' and clk_slow_dff = '0' then
              eeprom_rw <= cpu_rw; 
            else
              eeprom_rw <= '0'; 
            end if;


          -- When the address is not pointed at any of the other modules
          -- the CPU wishes to communicate with the Memory-module
          when others =>
            mem_data_in <= cpu_data_out;
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
