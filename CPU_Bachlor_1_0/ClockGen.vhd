library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ClockGen is
    Port ( 
        CLOCK_50        : in std_logic;
        reset_n         : in std_logic;
        freq_exp        : in integer;
        step_mode       : in std_logic;
        step            : in std_logic;
        run_mode        : in std_logic;
        slow_clk        : out std_logic := '0'
         );
end ClockGen;

architecture Behavioral of ClockGen is

    signal counter : integer := 0;
    signal clk_en : std_logic := '0';
    signal count_limit : integer := 25000000 / 1000; -- Default to 1kHz

    signal s_slow_clk : std_logic := '0';

    constant max_freq : integer := 1000000; -- 1MHz
    constant min_freq : integer := 1; -- 1Hz

begin
    
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if (2**freq_exp) > max_freq then
                count_limit <= (25000000 / max_freq) - 1;
            elsif (2**freq_exp) < min_freq then
                count_limit <= (25000000 / min_freq) - 1;
            else
                count_limit <= (25000000 / (2**freq_exp)) - 1;
            end if;
        end if;
    end process;
    


    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if reset_n = '1' then
                if run_mode = '1' then
                    if step_mode = '0' then
                        
                        if counter > count_limit then
                            counter <= 0;
                            s_slow_clk <= not s_slow_clk;
                        else
                            counter <= counter + 1;
                        end if;
                    else
                        s_slow_clk <= step;
                    end if;

                end if;
            else
                counter <= 0;
                s_slow_clk <= '0';
            end if;
        end if;
    end process;

    slow_clk <= s_slow_clk;

end Behavioral;
