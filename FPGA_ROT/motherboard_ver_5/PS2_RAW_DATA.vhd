LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY PS2_RAW_DATA IS
  GENERIC(
    -- Frequency of the system clock used for ERROR waiting 
    clk_freq : INTEGER := 50_000_000 
  );
  PORT ( 
    -- Inputs from clk & rst_n
    clk   : IN STD_LOGIC; 
    rst_n : IN STD_LOGIC;

    -- Inputs from PS2_PORTS allready synced and antibounced from top-file
    ps2_clk   : IN STD_LOGIC;
    ps2_dat   : IN STD_LOGIC;

    -- Outputs
    err       : OUT STD_LOGIC := '0';
    new_dat   : OUT STD_LOGIC := '0';
    dat       : OUT STD_LOGIC_VECTOR(7 downto 0) := x"00"
  );
END ENTITY;

ARCHITECTURE RTL OF PS2_RAW_DATA IS 

  -- EDGE DETECTORS --
  SIGNAL ps2_clk_falling_edge  : STD_LOGIC := '1';
  SIGNAL ps2_dat_falling_edge  : STD_LOGIC := '1';

  -- TEMP SIGNAL --
  SIGNAL data_signal  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

  -- PARITY --
  SIGNAL parity_bit : STD_LOGIC := '0';
  SIGNAL parity_pass : STD_LOGIC := '0';

  -- STATE MACHINE --
  TYPE STATE_MACHINE IS (IDLE, START, DATA_IN, PARITY, STOP, ERROR);
  SIGNAL ps2_state : STATE_MACHINE := IDLE;

  -- COUNTERS --
  SIGNAL counter : INTEGER RANGE 7 DOWNTO 0 := 0;
  SIGNAL err_counter : INTEGER RANGE 16_383 DOWNTO 0 := 0; -- Counter that can count for 2 ps2_clk periods.

  -- WAITER
  -- 
  CONSTANT err_wait : INTEGER := (clk_freq/10_000) * 3;

  -- COMPONENT DECLARATIONS --
  -- Falling edge detector
  COMPONENT falling_edge_detector IS
    PORT ( 
      clk     : IN STD_LOGIC;
      sig     : IN STD_LOGIC;
      falling_edge_detected : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN

  parity_pass <= '1' when (parity_bit = ps2_dat) else '0';



  sjekker_prosess : process(clk) is
  begin
    if (rising_edge(clk)) then
      -- If reset set all signals back to standard
      if (rst_n = '0') then
        new_dat <= '0';
        counter <= 0;
        err_counter <= 0;
        parity_bit <= '1';
        err <= '0';
        ps2_state <= IDLE;
        data_signal <= x"00";
        dat <= x"00";
      else

        -- THE STATE MACHINE --
        case ps2_state is

          -- IDLE: Waiting for ps/2 keyboard to start its transmission
          when IDLE =>
            -- Swaps to START when ps2_dat is falling
            if (ps2_dat_falling_edge = '1') then
              ps2_state <= START;
            end if;

          -- START: Sets values for signal back to standard and checks for start-bit
          when START =>
            new_dat <= '0';
            counter <= 0;
            err_counter <= 0;
            parity_bit <= '1';
            err <= '0';
            -- Start-bit check happens on ps2_clk's falling edge
            if (ps2_clk_falling_edge = '1') then
              -- Start-bit is supposed to equal 0;
              -- If start-bit check i succesful go to DATA_IN if not go to ERROR
              if (ps2_dat = '0') then
                ps2_state <= DATA_IN;
              else
                ps2_state <= ERROR;
              end if; 
            end if;

          -- DATA_IN: Saves the data from the transmission to a shiftregister and keeps
          --          track of the parity-bit
          when DATA_IN =>
            if (ps2_clk_falling_edge = '1') then
              parity_bit <= parity_bit xor ps2_dat; -- A gorgeous parity checking method
              data_signal <= ps2_dat & data_signal(7 downto 1);
              -- When the counter hits 7 => move to the PARITY state
              if (counter = 7) then
                ps2_state <= PARITY;
              end if;
              counter <= counter + 1;
            end if;

          -- PARITY: Checks wether or not the the transmission has succeeded with a
          --         parity check.
          when PARITY =>
            if (ps2_clk_falling_edge = '1') then
              -- If the parity check succeeds go to STOP if not go to ERROR
              if (parity_pass = '1') then -- parity_pass is declared before the process
                ps2_state <= STOP;
              else
                ps2_state <= ERROR;
              end if;
            end if;

          -- STOP: Checks if the stop-bit is 1, and set signals accordingly
          when STOP =>
            if (ps2_clk_falling_edge = '1') then
              -- If the stop-bit check succeeds go to IDLE and set signals, if not go to
              -- ERROR.
              if (ps2_dat = '1') then
                -- Updates dat to the transmission data here instead of in DATA_IN to
                -- to avoid the dat signal updating for every bit transmitted. 
                dat <= data_signal;
                -- Sets new_dat high here and sets it low in start. Use a rising edge
                -- detector to detect if a new signal is readable from this module
                new_dat <= '1';
                ps2_state <= IDLE;
              else
                ps2_state <= ERROR;
              end if;
            end if;

          -- ERROR: If the transmission for any reason where to fail wait for 3 PS/2 
          --        clock periods
          when ERROR =>
            err <= '1';
            -- If the PS/2 clock signal remains high for 15_000 clock cycles set state
            -- to idle.
            if (ps2_clk = '1') then
              err_counter <= 1 + err_counter;
              if (err_counter = err_wait) then
                ps2_state <= IDLE;
              end if;
            -- If for any reason the PS/2 clock would go to zero while this module is in
            -- the ERROR state restart the counter from 0.
            else
              err_counter <= 0;
            end if;
        end case;
      end if;
    end if;
  end process;

  -- INITIALIZATION OF MODULES--
  -- Falling edge detector for PS/2 clock signal
  ps2_clk_falling_edge_detector : falling_edge_detector
   port map(
      clk => clk,
      sig => ps2_clk,
      falling_edge_detected => ps2_clk_falling_edge
  );
  -- Falling edge detector for PS/2 data signal
  ps2_dat_falling_edge_detector: falling_edge_detector
   port map(
      clk => clk,
      sig => ps2_dat,
      falling_edge_detected => ps2_dat_falling_edge
  );  

END RTL;
