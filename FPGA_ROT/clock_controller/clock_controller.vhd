library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_controller is
  port (
    clk : in std_logic;
    rst_n : in std_logic;

    btn : in std_logic;
    
    clock_speed_select  : in std_logic_vector(3 downto 0);
    duty_cycle_select   : in std_logic_vector(3 downto 0);

    clk_slow : out std_logic := '0'
  );
end entity;

architecture RTL of clock_controller is
  component antibounce_key is
    port(
      clk             : in std_logic;
      rst_n           : in std_logic;
      key             : in std_logic;
      key_antibounced : out std_logic := '1'
    );
  end component;

  type array_16int is array (0 to 15) of integer;
  signal clock_speed_array : array_16int := (
    1_200,       -- 41.7k
    50_000_000,  -- 1
    10_000_000,  -- 5
    5_000_000,   -- 10
    1_000_000,   -- 50
    500_000,     -- 100
    100_000,     -- 500
    50_000,      -- 1k
    10_000,      -- 5k
    5_000,       -- 10k
    2_500,       -- 20k
    1_700,       -- 29.4k 
    1_000,       -- 50k
    800,         -- 62.5k
    600,         -- 83.3k
    500);         -- 100k

  signal duty_cycle_array : array_16int := (
    50, -- 50%
    90, -- 90%
    80, -- 80%
    70, -- 70%
    60, -- 60%
    40, -- 40%
    30, -- 30%
    20, -- 20%
    10, -- 10%
    75, -- 75%
    25, -- 25%
    67, -- 67%
    33, -- 33%
    99, -- 99%
    1,  --  1%
    50); -- When index for duty cycle is 15 let user move clk_slow with a button.

  signal counter : integer;
  signal counter_goal: integer;
  signal btn_antibounced : std_logic;
begin
  process(clk)
    variable clock_speed : integer;
    variable duty_cycle : integer;
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        counter <= 0;
      else
        if duty_cycle_select = x"F" then
          clk_slow <= btn_antibounced;
        else
          duty_cycle := duty_cycle_array(to_integer(unsigned(duty_cycle_select)));
          clock_speed := clock_speed_array(to_integer(unsigned(duty_cycle_select)))/100;
          counter_goal <= duty_cycle * clock_speed;
          if counter >= counter_goal then
            counter <= 0;
          else
            counter <= counter + 1;
          end if;

        end if;
      end if;
    end if;
  end process;

  antibounced_key_inst : antibounce_key
   port map(
      clk => clk,
      rst_n => rst_n,
      key => btn,
      key_antibounced => btn_antibounced
  );
end RTL;
