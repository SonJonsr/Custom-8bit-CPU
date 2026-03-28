LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY ps2_data IS
  PORT ( 
    clk       : IN STD_LOGIC;
    rst_n     : IN STD_LOGIC;
    ps2_clk_raw   : IN STD_LOGIC;
    ps2_dat_raw   : IN STD_LOGIC;
    error   : OUT STD_LOGIC := '0';
    rdy       : OUT STD_LOGIC;
    data      : OUT STD_LOGIC_VECTOR(7 downto 0)
  );
END ENTITY;

ARCHITECTURE RTL OF ps2_data IS
  SIGNAL sync_dff : STD_LOGIC_VECTOR(1 downto 0);
  SIGNAL ps2_clk : STD_LOGIC;
  SIGNAL ps2_clk_dff : STD_LOGIC;
  SIGNAL ps2_dat : STD_LOGIC;

  SIGNAL parity : STD_LOGIC := '0';

  SIGNAL failed : STD_LOGIC := '0';

  SIGNAL new_dat : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

  SIGNAL failed_clear : STD_LOGIC;

  COMPONENT antibounce IS
    PORT(
      data_in, clk	: in	std_logic;
      data_out	: out	std_logic
    );
  END COMPONENT;

BEGIN

  sync : process(clk)
    variable counter : integer range 0 to 10000;
  begin
    if (rising_edge(clk)) then
      sync_dff <= ps2_clk_raw & ps2_dat_raw;

      -- If the PS/2 transmission fails this code will make sure the process
      -- waits until after the failed transmission is over so it does not get stuck
      -- on a transmission.
      if (ps2_clk = '1') then
        counter := counter + 1;
        if (counter > 9999) then
          failed_clear <= ps2_clk;
        end if;
      else
        counter := 0;
      end if;
    end if;
  end process;

  main : process(ps2_clk, failed_clear)
    variable counter : integer range 0 to 15 := 0;
  begin
    if (failed = '0') then
      if (ps2_clk'EVENT and ps2_clk = '0') then
        case counter is
          when 0 =>
            rdy <= '0';
            if (ps2_dat = '1') then
              failed <= '1';
            end if;

          when 1 to 8 =>
            parity <= parity xor ps2_dat;
            new_dat <= ps2_dat & new_dat(7 downto 1);
            
          when 9 =>
            if (parity /= ps2_dat) then
              failed <= '1';
            end if;

          when 10 =>
            counter := 0;
            if (ps2_dat = '1') then
              rdy <= '1';
              data <= new_dat;
            else 
              failed <= '1'; 
            end if;

          when others =>
            counter := 0;
            failed <= '1';
        end case;
            
        counter := counter + 1;
      end if;
    elsif (failed_clear = '1') then
      failed <= '0';
    end if;
  end process;
  

  ps2_clk_antibounce : antibounce
   port map(
      data_in => sync_dff(1),
      clk => clk,
      data_out => ps2_clk
  );

  ps2_dat_antibounce: antibounce
   port map(
      data_in => sync_dff(0),
      clk => clk,
      data_out => ps2_dat
  );
  
END RTL;
