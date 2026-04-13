library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library altera_mf;
use altera_mf.all;

entity memory is
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
end entity;

architecture RTL of memory is
  -- Creating the array-type that will be the memory
  type ram_type is array (0 to 65535) of std_logic_vector(7 downto 0);
  signal mem : ram_type;

  signal read_a : std_logic_vector(7 downto 0);
  signal read_b : std_logic_vector(7 downto 0);

  -- lpm_hint lets us debug the code easier. We can use Quartus to upload code as .hex files live.
  attribute lpm_hint : string;
  attribute lpm_hint of mem : signal is "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=MEM1";

  -- Initialization of the memory with the memory.hex file
  attribute ram_init_file : string;
  attribute ram_init_file of mem  : signal is "memory.hex";

begin

  data_out_a <= read_a;

  data_out_b <= read_b;

  port_a : process(clk_a)
    variable v_addr_a : integer;
  begin
    if rising_edge(clk_a) then
      v_addr_a := to_integer(unsigned(addr_a));

      -- Write to port A
      if we_a = '1' then
        mem(v_addr_a) <= data_in_a;
      end if;

      -- Read from port A
      read_a <= mem(v_addr_a);
    end if;
  end process;

  port_b : process(clk_b)
  begin
    if rising_edge(clk_b) then

      -- Read from port B
      -- if addr_b_dff_2 /= addr_b then
      --   read_b_8bit_ll <= mem(to_integer(unsigned(addr_b & '0')));
      -- else
      --   read_b_8bit_hh <= 
      -- end if;
      read_b <= mem(to_integer(unsigned(addr_b)));
    end if;
  end process;

end architecture;
