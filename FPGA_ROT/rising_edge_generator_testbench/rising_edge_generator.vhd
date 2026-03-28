LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY rising_edge_generator IS
  PORT ( 
    clk : IN STD_LOGIC;
    start_pulse : IN STD_LOGIC;
		pulse_size  : IN	STD_LOGIC_VECTOR(17 DOWNTO 0);
		pulse : OUT	STD_LOGIC := '0'
  );
END ENTITY;

ARCHITECTURE RTL OF rising_edge_generator IS 
  COMPONENT rising_edge_detector IS
    PORT ( 
      clk     : IN STD_LOGIC;
      sig     : IN STD_LOGIC;
      rising_edge_detected : OUT STD_LOGIC
    );
  END COMPONENT;

  TYPE state_machine IS (IDLE, COUNTING);
  SIGNAL state : state_machine := IDLE;

  SIGNAL start_pulse_rising : STD_LOGIC := '0';
  SIGNAL counter : unsigned(17 downto 0) := (others => ('0'));

BEGIN
  process(clk) is
  begin
    if (rising_edge(clk)) then
      case state is
        when IDLE =>
          pulse <= '0';
          if (start_pulse_rising = '1' and pulse_size /= x"00000") then
            state <= COUNTING;
            counter <= counter + 1;
          else
            counter <= (others => ('0'));
          end if;

        when COUNTING =>
          counter <= counter + 1;
          pulse <= '1';
          if (counter >= unsigned(pulse_size)) then
            state <= IDLE;
          end if;
      end case;
    end if;
  end process;

  start_pulse_rising_inst : rising_edge_detector
   port map(
      clk => clk,
      sig => start_pulse,
      rising_edge_detected => start_pulse_rising
  );
END RTL;
