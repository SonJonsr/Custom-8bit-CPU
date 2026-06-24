LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PS2_ASCII_TABLE IS
  PORT ( 
    -- Inputs from clk & rst_n
    clk   : IN STD_LOGIC; 
    rst_n : IN STD_LOGIC;

    -- Inputs from PS2_ASCII_TABLE
    new_ascii : IN STD_LOGIC;
    remove    : IN STD_LOGIC;
    ascii_in  : IN STD_LOGIC_VECTOR(7 downto 0);

    -- Inputs from CPU
    en            : IN STD_LOGIC; -- Enable
    rw            : IN STD_LOGIC; -- Read/Write fra CPU
    array_select  : IN STD_LOGIC; -- Array Select

    -- Outputs
    rdy       : OUT STD_LOGIC := '0';
    ascii_out : OUT STD_LOGIC_VECTOR(7 downto 0) := x"00"
  );

END PS2_ASCII_TABLE;



ARCHITECTURE RTL OF PS2_ASCII_TABLE IS 
  TYPE ADD_REMOVE_MACHINE IS (IDLE, COUNT_ARRAY, AD_ARRAY, RM_ARRAY, START_CPU, READ_CPU, ROTATE_CPU, RM_ASCII_CPU,RM_FROM_REMOVE_TABLE_CPU, WRITE_CPU);
  SIGNAL state : ADD_REMOVE_MACHINE := IDLE;

  TYPE BYTE_ARRAY IS ARRAY (15 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL ascii_table  : BYTE_ARRAY := (others => (others => '0'));
  SIGNAL remove_table : BYTE_ARRAY := (others => (others => '0'));

  -- Keeps track of the total amount of ascii chars in each array
  SIGNAL ascii_table_size   : INTEGER RANGE 16 DOWNTO 0 := 0;
  SIGNAL remove_table_size  : INTEGER RANGE 16 DOWNTO 0 := 0;

  -- Keeps count of the amount of the occourence of the new ascii in each array
  SIGNAL new_ascii_ascii_count  : INTEGER RANGE 16 DOWNTO 0 := 0;
  SIGNAL new_ascii_remove_count : INTEGER RANGE 16 DOWNTO 0 := 0;

  -- To iterate through the array
  SIGNAL array_iterator : INTEGER RANGE 15 downto 0 := 0;

  -- What ascii has be read
  SIGNAL ascii_temp : STD_LOGIC_VECTOR(7 downto 0) := x"00";

  SIGNAL ascii_sig : STD_LOGIC_VECTOR(7 downto 0) := x"00";
  SIGNAL remove_sig : STD_LOGIC := '0';

  SIGNAL array_select_sig :STD_LOGIC := '0';

  SIGNAL rotation : INTEGER RANGE 15 DOWNTO 0 := 0;
  SIGNAL ascii_rotation_temp : STD_LOGIC_VECTOR(7 downto 0) := x"00";

  signal new_ascii_dff : std_logic := '0';
  signal en_dff : std_logic := '0';
  
  -- Conflicts
  SIGNAL conflict_en        : STD_LOGIC := '0';
  -- SIGNAL conflict_new_ascii : STD_LOGIC := '0';

BEGIN

  conflict_signal_handler : process(clk)
  begin 
    if rising_edge(clk) then
      if rst_n = '0' then
        conflict_en <= '0';
      else
        case state is
          when START_CPU|READ_CPU|ROTATE_CPU|RM_ASCII_CPU|WRITE_CPU =>
            conflict_en <= '0';

          when COUNT_ARRAY|AD_ARRAY|RM_ARRAY =>
            if (en = '1' and en_dff = '0') then
              conflict_en <= '1';
            end if;

          when others =>
        end case;
      end if;
    end if;
  end process;

            ascii_out <= STD_LOGIC_VECTOR(to_unsigned(ascii_table_size, ascii_out'length))
                         when array_select = '1' else
                         ascii_table(0);

            rdy <= '1' when state = IDLE else '0';

  main : process(clk)
  begin
    if (rising_edge(clk)) then
      if rst_n = '0' then
        en_dff <= '0';
        new_ascii_dff <= '0';
        state <= IDLE;
        remove_table <= (others => (others => '0'));
        ascii_table <= (others => (others => '0'));
        remove_table_size <= 0;
        ascii_table_size <= 0;
        new_ascii_remove_count <= 0;
        new_ascii_ascii_count <= 0;
      else
        en_dff <= en;
        new_ascii_dff <= new_ascii;
        case state is
          when IDLE =>
            new_ascii_ascii_count <= 0;
            new_ascii_remove_count <= 0;
            array_iterator <= 0;
            if ((en = '1' and en_dff = '0') or (conflict_en = '1')) then
              state <= START_CPU;
            elsif (new_ascii = '1' and new_ascii_dff = '0') then
              ascii_sig <= ascii_in;
              remove_sig <= remove;
              state <= COUNT_ARRAY;
            end if;


          when COUNT_ARRAY =>
            if (ascii_sig = ascii_table(array_iterator)) then
              new_ascii_ascii_count <= new_ascii_ascii_count + 1;
            end if;
            if (ascii_sig = remove_table(array_iterator)) then
              new_ascii_remove_count <= new_ascii_remove_count + 1;
            end if;
            if (array_iterator = 15) then
              if (remove_sig = '0') then
                state <= AD_ARRAY;
              else
                state <= RM_ARRAY;
              end if;
            end if;
            array_iterator <= array_iterator + 1;

          when AD_ARRAY =>
            if (new_ascii_ascii_count <= new_ascii_remove_count and ascii_table_size < 16) then
              ascii_table(ascii_table_size) <= ascii_sig;
              ascii_table_size <= ascii_table_size + 1;
            end if;
            state <= IDLE;

          when RM_ARRAY =>
            if (new_ascii_ascii_count > new_ascii_remove_count and remove_table_size < 16) then
              remove_table(remove_table_size) <= ascii_sig;
              remove_table_size <= remove_table_size + 1;
            end if;
            state <= IDLE;

          when START_CPU =>
            array_select_sig <= array_select;
            if (rw = '0') then
              state <= READ_CPU;
            else
              state <= WRITE_CPU;
            end if;

          when READ_CPU =>
            if (array_select_sig = '1') then
              state <= IDLE;
            else
              ascii_temp <= ascii_table(0);
              
              -- Check if table is empty
              if (ascii_table_size > 0) then
                -- If the array has more than 1 ascii-char in it move the read ascii
                -- to the back of the queue
                if (ascii_table_size > 1) then
                  rotation <= ascii_table_size - 1;
                  ascii_rotation_temp <= ascii_table(0);
                  state <= ROTATE_CPU;
                else
                  state <= RM_ASCII_CPU;
                end if;
              else
                state <= IDLE;
              end if;
            end if;

          when ROTATE_CPU =>
            ascii_rotation_temp <= ascii_table(rotation);
            ascii_table(rotation) <= ascii_rotation_temp;
            if (rotation = 0) then
              state <= RM_ASCII_CPU;
            else
              rotation <= rotation - 1;
            end if;

          when RM_ASCII_CPU =>
            -- Removes the read ASCII from the remove table and the ascii table, 
            -- if it is in the remove table.
            if (remove_table(array_iterator) = ascii_temp and ascii_table_size > 0) then
              ascii_table(ascii_table_size - 1) <= x"00";
              ascii_table_size <= ascii_table_size - 1;
              state <= RM_FROM_REMOVE_TABLE_CPU;
            elsif (array_iterator = 15) then
            -- If one ASCII is removed or the array iterator gets to 15 set state to idle.
              state <= IDLE;
            else
              array_iterator <= array_iterator + 1;
            end if;

          when RM_FROM_REMOVE_TABLE_CPU =>
            remove_table(15) <= x"00";
            if (array_iterator /= 15) then
              remove_table(14 downto array_iterator) <= remove_table(15 downto (array_iterator + 1)); 
            end if;
            remove_table_size <= remove_table_size - 1;
            state <= IDLE;


          when WRITE_CPU =>
            ascii_table <= (others => (others => '0'));
            ascii_table_size <= 0;
            remove_table <= (others => (others => '0'));
            remove_table_size <= 0;
            state <= IDLE;
        end case;
      end if;
    end if;
  end process;
END RTL;
