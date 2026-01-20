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
        data_in     : in std_logic_vector(7 downto 0);
        data_out    : out std_logic_vector(7 downto 0) := "00000000"
         );
end bRAM;

architecture Behavioral of bRAM is

    type ram_type is array (0 to 8192) of std_logic_vector(7 downto 0);
    --signal sReady : std_logic := '0';

    signal RAM : ram_type := (
        "00000000",
        "00100100",
        "00000000",
        "01001000",
        "00100101",
        "00000000",
        "01001001",
        "01010100",
        "00100000",
        "00000000",
        "01001010",
        "00100100",
        "00000000",
        "01001010",
        "00100101",
        "00000000",
        "01001001",
        "01010100",
        "00100000",
        "00000000",
        "01001010",
        "00100100",
        "00000000",
        "01001001",
        "00100101",
        "00000000",
        "01001010",
        "00101001",
        "00010101",
        "01010100",
        "00100000",
        "00000000",
        "01001000",
        "00100100",
        "00000000",
        "01001000",
        "00100101",
        "00000000",
        "01001010",
        "00101001",
        "00010101",
        "01010100",
        "00100000",
        "00000000",
        "01001000",
        "00100100",
        "00000000",
        "01001001",
        "00010100",
        "00100000",
        "00000000",
        "01001001",
        "00100100",
        "00000000",
        "01001000",
        "00011000",
        "00100000",
        "00000000",
        "01001000",
        "00100100",
        "00000000",
        "01001010",
        "00011000",
        "00100000",
        "00000000",
        "01001010",
        "00000010",
        "00000000",
        "01000010",
        "00000000",
        "00000000",
        "00000000",
        "00001010",
        "00010001",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        others => (others => '0')
    );   

    signal address_int : integer range 0 to 255;

    signal s_Data_out : std_logic_vector(7 downto 0) := "00000000";

begin
    address_int <= to_integer(unsigned(address(15 downto 0)));


    name : process (clk) is
    begin
        if rising_edge(clk) then
            if reset_n = '1' then
                if RW = '1' then
                    s_Data_out <= RAM(address_int);
                    --RAM(address_int) <= RAM(address_int);
                else
                    s_Data_out <= "00000000";
                    RAM(address_int) <= data_in;
                end if;
            else
                s_Data_out <= "00000000";
                --RAM(address_int) <= RAM(address_int);
            end if;
        end if;
    end process name;

    ready <= '1';
    data_out <= s_Data_out;


end Behavioral;