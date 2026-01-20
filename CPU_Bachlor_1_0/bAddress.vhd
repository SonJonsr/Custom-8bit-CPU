library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bAddress is
    port(
        clk                 : in  std_logic; -- system clock                                                bCPU
        rise_edge           : in  std_logic; -- slow clock                                                  ClockGen
        rst_n               : in  std_logic; -- system reset active high                                    bCPU

        readHH              : in  std_logic; -- for reading high byte                                       bController
        readLL              : in  std_logic; -- for reading low  byte                                       bController    
        comit_jump          : in  std_logic; -- for reading HH and LL into HHLL address                     bController
        change_address      : in  std_logic; -- to change address in bCPU                                   bController
        
        address_out         : out std_logic_vector(15 downto 0); -- address bus to bRAM                     bCPU
        data_Buss           : in  std_logic_vector(7 downto 0) -- data bus from bCPU                        bCPU
    );
end entity bAddress;

architecture Behavioral of bAddress is

    component ram8bit
        port(
            DATA_IN : in  std_logic_vector(7 downto 0);
            DATA_UT : out std_logic_vector(7 downto 0) := "00000000";
            en_read : in  std_logic;
            clk     : in  std_logic;
            rst     : in  std_logic
        );
    end component ram8bit;

    signal HHLL_address_out     : std_logic_vector(15 downto 0);
    signal HHLL_address_in      : std_logic_vector(15 downto 0);
    signal temp_HHLL            : std_logic_vector(15 downto 0);

begin

    HH : component ram8bit
        port map(
            DATA_IN => HHLL_address_in(15 downto 8),
            DATA_UT => HHLL_address_out(15 downto 8),
            en_read => rise_edge,
            clk     => clk,
            rst     => not rst_n
        );

    LL : component ram8bit
        port map(
            DATA_IN => HHLL_address_in(7 downto 0),
            DATA_UT => HHLL_address_out(7 downto 0),
            en_read => rise_edge,
            clk     => clk,
            rst     => not rst_n
        );

    temoHH : ram8bit
        port map(
            DATA_IN => data_Buss,
            DATA_UT => temp_HHLL(15 downto 8),
            en_read => readHH,
            clk     => clk,
            rst     => not rst_n
        );
    
    tempLL : entity work.ram8bit
        port map(
            DATA_IN => data_Buss,
            DATA_UT => temp_HHLL(7 downto 0),
            en_read => readLL,
            clk     => clk,
            rst     => not rst_n
        );
    
    -- Address handling logic would go here


    -- Address update process
    process(change_address, comit_jump, temp_HHLL, HHLL_address_out)
    begin
        if comit_jump = '1' then -- loads temp address into address
            HHLL_address_in <= temp_HHLL;
            address_out <= HHLL_address_out;
        elsif change_address = '1' then -- does not increment address but changes address out to themp address
            HHLL_address_in <= HHLL_address_out;
            address_out <= temp_HHLL;
        else -- increments address in normal opperation
            HHLL_address_in <= std_logic_vector(unsigned(HHLL_address_out) + 1);
            address_out <= HHLL_address_out;
        end if;
    end process;


end Behavioral;
