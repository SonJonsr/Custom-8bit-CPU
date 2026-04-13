library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity minne is
  port (
    clk_a, clk_b : in  std_logic;

    -- Port A: 8-bit for CPU
    addr_a       : in  std_logic_vector(15 downto 0);
    data_in_a    : in  std_logic_vector(7 downto 0);
    we_a         : in  std_logic;
    data_out_a   : out std_logic_vector(7 downto 0);

    -- Port B: 16-bit for Screencard
    addr_b       : in  std_logic_vector(14 downto 0);
    data_out_b   : out std_logic_vector(15 downto 0)
  );
end entity;

architecture RTL of minne is
  -- Creating the array-type that will be the memory
  type ram_type is array (0 to 32767) of std_logic_vector(7 downto 0);
  signal mem_odd : ram_type;
  signal mem_even : ram_type;

  signal read_odd_a   : std_logic_vector(7 downto 0);
  signal read_even_a  : std_logic_vector(7 downto 0);

  signal read_odd_b   : std_logic_vector(7 downto 0);
  signal read_even_b  : std_logic_vector(7 downto 0);

  -- Initialization of the memory with the memory.hex file
  attribute ram_init_file : string;
  attribute ram_init_file of mem_odd  : signal is "memory_odd.hex";
  attribute ram_init_file of mem_even : signal is "memory_even.hex";

  -- lpm_hint lets us debug the code easier. We can use Quartus to upload code as .hex files live.
  attribute lpm_hint : string;
  attribute lpm_hint of mem_odd: signal is "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=CPU_MEM";
  attribute lpm_hint of mem_even : signal is "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=CPU_MEM";

begin

  data_out_a <= read_even_a when addr_a(0) = '0' else read_odd_a;

  data_out_b <= read_odd_b & read_even_b;

  port_a : process(clk_a)
    variable v_addr_a : integer;
  begin
    if rising_edge(clk_a) then
      v_addr_a := to_integer(unsigned(addr_a(15 downto 1)));

      if we_a = '1' then
        if addr_a(0) = '0' then
          mem_even(v_addr_a) <= data_in_a;
        else 
          mem_odd(v_addr_a) <= data_in_a;
        end if;
      end if;

      read_even_a <= mem_even(v_addr_a);
      read_odd_a <= mem_odd(v_addr_a);
    end if;
  end process;

  port_b : process(clk_b)
    variable v_addr_b : integer;
  begin
    if rising_edge(clk_b) then
      v_addr_b := to_integer(unsigned(addr_b));
      read_even_b <= mem_even(v_addr_b);
      read_odd_b <= mem_odd(v_addr_b);
    end if;
  end process;

end architecture;
