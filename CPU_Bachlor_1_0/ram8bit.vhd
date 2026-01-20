library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram8bit is
    port(

        DATA_IN : in std_logic_vector(7 downto 0);
        DATA_UT : out std_logic_vector(7 downto 0) := "00000000";
        en_read : in std_logic;
        clk : in std_logic;
        rst : in std_logic
    );
end entity ram8bit;

architecture RTL of ram8bit is
    
begin

    name : process (clk) is
    begin
        if rising_edge(clk) then
            if rst = '1' then
                DATA_UT <= "00000000";
            else
                if en_read = '1' then
                    DATA_UT <= DATA_IN;
                end if;
            end if;
        end if;
    end process name;
    

end architecture RTL;
