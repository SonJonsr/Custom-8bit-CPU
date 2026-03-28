LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY MINNEMODUL_SUPPORT IS
  GENERIC(
    KEYBOARD_DAT  : STD_LOGIC_VECTOR(15 downto 0) := x"ED3C";
    KEYBOARD_INF  : STD_LOGIC_VECTOR(15 downto 0) := x"ED3D";
    RANDOM_BYTE   : STD_LOGIC_VECTOR(15 downto 0) := x"ED3E"
  );
  PORT(
    -- Input for clk and rst_n
    clk       : IN STD_LOGIC;
    slow_clk  : IN STD_LOGIC;
    rst_n     : IN STD_LOGIC;

    -- Inputs from PS2_MODUL
    ps2_rdy : IN STD_LOGIC;
    ps2_dat : IN STD_LOGIC_VECTOR(7 downto 0);
    ps2_en  : OUT STD_LOGIC;
    ps2_rw  : OUT STD_LOGIC;
    ps2_as  : OUT STD_LOGIC; -- array_select

    -- Inputs from CPU
    cpu_rw      : IN STD_LOGIC;
    cpu_adr  : IN STD_LOGIC_VECTOR(15 downto 0);
    cpu_dat    : INOUT STD_LOGIC_VECTOR(7 downto 0);

    -- Inputs from MINNEMODUL
    mem_q   : IN  STD_LOGIC_VECTOR(7 downto 0);
    mem_wren  : OUT STD_LOGIC;
    mem_adr : OUT STD_LOGIC_VECTOR(7 downto 0);
    mem_dat : OUT STD_LOGIC_VECTOR(15 downto 0)
     
  );
END ENTITY;

ARCHITECTURE RTL OF MINNEMODUL_SUPPORT IS
  TYPE chipselect_type IS (PS2, MINNEMODUL, RANDOM);
  SIGNAL chipselect : chipselect_type;
  SIGNAL ps2_dff : STD_LOGIC;
  SIGNAL ps2_waiting : STD_LOGIC := '0';

BEGIN

  ps2_as <= '0' when (cpu_adr = KEYBOARD_DAT) else '1';

  chipselection : process(slow_clk) is
  begin
    if (rising_edge(slow_clk)) then
      if rst_n = '0' then
        chipselect <= MINNEMODUL;
        ps2_dff <= '0';
      else
        case cpu_adr is

          when KEYBOARD_DAT|KEYBOARD_INF =>
            chipselect <= PS2;
            ps2_dff <= '1';

          when RANDOM_BYTE =>
            chipselect <= RANDOM;
            ps2_dff <= '0';

          when others =>
            chipselect <= MINNEMODUL;
            ps2_dff <= '0';

        end case;
      end if;
    end if;
  end process;

  chiphandling : process(clk) is
  begin
    if rising_edge(clk) then
      case chipselect is

        when PS2 =>
          if (ps2_dff and ps2_rdy) then
            ps2_dff <= '0';

            ps2_en <= '1';
            ps2_rw <= cpu_rw;
          else
            ps2_en <= '0';
          end if;
          cpu_dat <= ps2_dat;


        when RANDOM =>
          cpu_dat

        when MINNEMODUL =>

      end case;
    end if;
  end process;
END RTL;
