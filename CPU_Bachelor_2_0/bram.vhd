LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity bRAM is
    Port ( 
        clk         : in std_logic;
        slow_clk    : in std_logic;
        reset_n     : in std_logic;
        RW          : in std_logic; -- 1 = Write, 0 = Read
        ready       : out std_logic;
        address     : in std_logic_vector(15 downto 0);

        data        : inout std_logic_vector(7 downto 0);

        data_in     : in std_logic_vector(7 downto 0);
        data_out    : out std_logic_vector(7 downto 0) := "00000000"
         );
end bRAM;

architecture Behavioral of bRAM is
    --constant RAM_SIZE : integer := 8192;
    type ram_type is array (0 to 8192) of std_logic_vector(7 downto 0);
    --signal sReady : std_logic := '0';

    signal RAM : ram_type := (
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        others => (others => '0')
    );   

    signal address_int : integer range 0 to 255;


   
    --signal s_Data_out : std_logic_vector(7 downto 0) := "00000000";

begin
    address_int <= to_integer(unsigned(address(15 downto 0)));


    name : process (clk, reset_n, RW, data,address_int) is
    begin
        if rising_edge(clk) then
            if reset_n = '1' then
                if RW = '0' then
                    RAM(address_int) <= data;
                end if;
            end if;
        end if;
    end process name;


    data <= RAM(address_int) when RW = '1' else
            (others => 'Z');


    ready <= '1';
    --data_out <= s_Data_out;


end Behavioral;