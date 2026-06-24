library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity info_screen_manager is
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
end entity;

architecture RTL of info_screen_manager is

  component hex_to_ascii is
    port( 
      hex   : in  std_logic_vector (3 downto 0);
      ascii : out std_logic_vector (7 downto 0)
    );
  end component ;

  type state_machine is (IDLE, SETUP, SEND);
  signal state : state_machine := IDLE;

  type send_array is array (0 to 10) of std_logic_vector(7 downto 0);
  signal data_to_send : send_array := (others => (others => '0'));

  type address_array is array (0 to 10) of std_logic_vector(15 downto 0);
  signal address_for_data : address_array := (
    x"ef4c", -- Address[15..12]   -- 0
    x"ef4e", -- Address[11..8]    -- 1
    x"ef50", -- Address[7..4]     -- 2
    x"ef52", -- Address[3..0]     -- 3
    x"efa6", -- R/W               -- 4
    x"efb6", -- Data[7..4]        -- 5
    x"efb8", -- Data[3..0]        -- 6
    x"f008", -- bcd_out[7..4]     -- 7
    x"f00a", -- bcd_out[3..0]     -- 8
    x"f010", -- exp_pol           -- 9
    x"f012"  -- exp_out           -- 10
  );

  signal index : integer range 0 to 10 := 0;
  signal counter : integer range 0 to 15 := 0;
  signal setup_counter : integer range 0 to 15 := 0;
  signal en_dff : std_logic;

begin

  done <= '1' when state = IDLE else '0';

  process(clk) is
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        state <= IDLE;
        en_dff <= '0';
      else
        en_dff <= en;
        case state is
          when IDLE =>
            index <= 0;
            counter <= 0;
            setup_counter <= 0;
            mem_data <= data_to_send(0);
            mem_address <= address_for_data(0);
            if en = '1' and en_dff = '0'then
              state <= SETUP;
            end if;

          when SETUP =>
            counter <= 0;
            mem_address <= address_for_data(index);
            mem_data <= data_to_send(index);
            if setup_counter < 2 then
              setup_counter <= setup_counter + 1;
              mem_wren <= '0';
            else
              setup_counter <= 0;
              mem_wren <= '1';
              state <= SEND;
            end if;

          when SEND =>
            mem_wren <= '0';
            if counter > 8 then 
              if index = 10 then
                state <= IDLE;
              else
                index <= index + 1;
                state <= SETUP;
              end if;
            else
              counter <= counter + 1;
            end if;
          when others =>
            state <= IDLE;
        end case;
      end if;
    end if;
  end process;

  hex_to_asii_address_0: hex_to_ascii
   port map(
      hex => cpu_address(15 downto 12),
      ascii => data_to_send(0)
  );

  hex_to_asii_address_1: hex_to_ascii
   port map(
      hex => cpu_address(11 downto 8),
      ascii => data_to_send(1)
  );

  hex_to_asii_address_2: hex_to_ascii
   port map(
      hex => cpu_address(7 downto 4),
      ascii => data_to_send(2)
  );

  hex_to_asii_address_3: hex_to_ascii
   port map(
      hex => cpu_address(3 downto 0),
      ascii => data_to_send(3)
  );

  hex_to_asii_rw: hex_to_ascii
   port map(
      hex => "000" & cpu_rw,
      ascii => data_to_send(4)
  );

  hex_to_asii_data_0: hex_to_ascii
   port map(
      hex => cpu_data(7 downto 4),
      ascii => data_to_send(5)
  );

  hex_to_asii_data_1: hex_to_ascii
   port map(
      hex => cpu_data(3 downto 0),
      ascii => data_to_send(6)
  );

  hex_to_asii_bcd_0: hex_to_ascii
   port map(
      hex => bcd_out(7 downto 4),
      ascii => data_to_send(7)
  );

  hex_to_asii_bcd_1: hex_to_ascii
   port map(
      hex => bcd_out(3 downto 0),
      ascii => data_to_send(8)
  );

  data_to_send(9) <= x"20" when exp_pol = '0' else x"2d";

  hex_to_asii_exp : hex_to_ascii
   port map(
      hex => exp_out,
      ascii => data_to_send(10)
  );

end RTL;
