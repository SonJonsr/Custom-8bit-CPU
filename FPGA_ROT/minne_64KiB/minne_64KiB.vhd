library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity minne_64KiB is
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

architecture RTL of minne_64KiB is
  -- Creating the array-type that will be the memory
  type ram_type is array (0 to 65535) of std_logic_vector(7 downto 0);
  signal mem : ram_type;

  -- Initialization of the memory with the memory.hex file
  attribute ram_init_file : string;
  attribute ram_init_file of mem : signal is "memory.hex";

  -- These two lines are used for easier debugging of software
  -- attribute lpm_hint : string;
  --
  -- attribute lpm_hint of mem_odd: signal is "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=CPU_MEM";
  -- attribute lpm_hint of mem_even : signal is "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=CPU_MEM";

begin

  a : process(clk_a)
    variable v_addr_a : integer;
  begin
    if rising_edge(clk_a) then
      v_addr_a := to_integer(unsigned(addr_a(15 downto 0)));

      if we_a = '1' and addr_a(0) = '0' then
        mem(v_addr_a) <= data_in_a;
      end if;

      data_out_a <= mem(v_addr_a);
    end if;
  end process;

  b : process(clk_b)
    variable v_addr_b_ll : integer;
    variable v_addr_b_hh : integer;
  begin
    if rising_edge(clk_b) then
      v_addr_b_ll := to_integer(unsigned(addr_b & '0'));
      v_addr_b_hh := to_integer(unsigned(addr_b & '1'));

      data_out_b(7 downto 0) <= mem(v_addr_b_ll);
      data_out_b(15 downto 8) <= mem(v_addr_b_hh);
    end if;
  end process;
end architecture;
