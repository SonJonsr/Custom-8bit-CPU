library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library altera_mf;
use altera_mf.all;

entity memory is -- (*@\label{start:memory_declaration}@*)
  port (
    clk_a, clk_b : in  std_logic;

    -- Port A: Separate ports for CPU
    addr_a       : in  std_logic_vector(15 downto 0);
    data_in_a    : in  std_logic_vector(7 downto 0);
    we_a         : in  std_logic;
    data_out_a   : out std_logic_vector(7 downto 0);

    -- Port B: Separate ports for Screencard 
    addr_b       : in  std_logic_vector(15 downto 0);
    data_out_b   : out std_logic_vector(7 downto 0)
  );
end entity; -- (*@\label{end:memory_declaration}@*)


architecture RTL of memory is
  -- Creating the array-type that will be the memory
  type ram_type is array (0 to 65535) of std_logic_vector(7 downto 0); -- (*@\label{start:mem_inst}@*)
  signal mem : ram_type; -- (*@\label{end:mem_inst}@*)

  signal read_a : std_logic_vector(7 downto 0);
  signal read_b : std_logic_vector(7 downto 0);

  
  -- -- lpm_hint lets us debug the code easier. We can use Quartus to upload code as .hex files live.
  -- attribute lpm_hint : string; -- (*@\label{start:lpm_hint}@*) 
  -- attribute lpm_hint of mem : signal is "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=MEM1, ALLOW_RWSYNC_ONLY=YES"; -- (*@\label{end:lpm_hint}@*)
  

  -- Initialization of the memory with the memory.hex file
  attribute ram_init_file : string;
  attribute ram_init_file of mem  : signal is "memory.hex";

begin

  -- data_out_a <= read_a;
  --
  -- data_out_b <= read_b;

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
      data_out_a <= mem(v_addr_a);
    end if;
  end process;

  port_b : process(clk_b)
  begin
    if rising_edge(clk_b) then
      -- Read from port B
      data_out_b <= mem(to_integer(unsigned(addr_b)));
    end if;
  end process;

end architecture;
