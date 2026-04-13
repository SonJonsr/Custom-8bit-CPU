LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PS2_MERGE IS
  PORT ( 
    -- Inputs from clk & rst_n
    clk   : IN STD_LOGIC; 
    rst_n : IN STD_LOGIC;

    -- Inputs from PS2_RAW_DATA
    err       : IN STD_LOGIC;
    new_dat   : IN STD_LOGIC;
    dat       : IN STD_LOGIC_VECTOR(7 downto 0);

    -- Outputs
    new_code : OUT STD_LOGIC := '0';
    layer       : OUT STD_LOGIC := '0';
    break       : OUT STD_LOGIC := '0';
    code     : OUT STD_LOGIC_VECTOR(7 downto 0) := x"00"
  );
END PS2_MERGE;

ARCHITECTURE RTL OF PS2_MERGE IS 
  SIGNAL new_dat_rising_edge : STD_LOGIC := '0';

  SIGNAL layer_sig : STD_LOGIC := '0';
  SIGNAL break_sig : STD_LOGIC := '0';

  SIGNAL forget_layer_break : STD_LOGIC := '1';

  TYPE STATE_MACHINE IS (IDLE, START, SEND, DONE);
  SIGNAL state : STATE_MACHINE := IDLE;

  COMPONENT rising_edge_detector IS
    PORT(
      clk     : IN STD_LOGIC;
      sig     : IN STD_LOGIC;
      rising_edge_detected : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN

  process(clk)
  begin
    if (rising_edge(clk)) then
      if (rst_n = '0' or err = '1') then
        -- Outputs
        layer <= '0';
        break <= '0';
        new_code <= '0';
        forget_layer_break <= '1';
        code <= x"00";

        -- Internal signals
        state <= IDLE;
        layer_sig <= '0';
        break_sig <= '0';

      else
        case state is

          when IDLE =>
            if (new_dat_rising_edge = '1') then
              state <= START;
              if (forget_layer_break = '1') then
                layer_sig <= '0';
                break_sig <= '0';
              end if;
            end if;

          when START =>
            new_code <= '0';
            forget_layer_break <= '0';
            if (dat = x"E0") then
              layer_sig <= '1';
              state <= IDLE;
            elsif (dat = x"F0") then
              break_sig <= '1';
              state <= IDLE;
            else
              state <= SEND;
            end if;

          when SEND =>
            code <= dat;
            layer <= layer_sig;
            break <= break_sig;
            new_code <= '1';
            forget_layer_break <= '1';
            state <= DONE;

          when DONE =>
            layer_sig <= '0';
            break_sig <= '0';
            state <= IDLE;

        end case;
      end if;
    end if;
  end process;

  new_dat_rising_edge_detector : rising_edge_detector
   port map(
      clk => clk,
      sig => new_dat,
      rising_edge_detected => new_dat_rising_edge
  );
END RTL;
