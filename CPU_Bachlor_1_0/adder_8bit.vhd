library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_8bit is
    port(
        A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        UT : out std_logic_vector(7 downto 0);
        CARRY_IN : in std_logic;
        CARRY_OUT : out std_logic
    );
end entity adder_8bit;

architecture RTL of adder_8bit is
    component FULLADDER
        port(
            INTIL  : in std_logic_vector(2 downto 0);
            UTFRA : out std_logic_vector(1 downto 0)
        );
    end component FULLADDER;

    signal altut : std_logic_vector(15 downto 0);

begin
    FULLADDER_0 : component FULLADDER
        port map(
            INTIL  => A(0) & B(0) & CARRY_IN,
            UTFRA => altut(1 downto 0)
        );
    
    FULLADDER_1 : component FULLADDER
        port map(
            INTIL  => A(1) & B(1) & altut(1),
            UTFRA => altut(3 downto 2)
        );
    
    FULLADDER_2 : component FULLADDER
        port map(
            INTIL  => A(2) & B(2) & altut(3),
            UTFRA => altut(5 downto 4)
        );
        
    FULLADDER_3 : component FULLADDER
        port map(
            INTIL  => A(3) & B(3) & altut(5),
            UTFRA => altut(7 downto 6)
        );    
    
    FULLADDER_4 : component FULLADDER
        port map(
            INTIL  => A(4) & B(4) & altut(7),
            UTFRA => altut(9 downto 8)
        );
    
    FULLADDER_5 : component FULLADDER
        port map(
            INTIL  => A(5) & B(5) & altut(9),
            UTFRA => altut(11 downto 10)
        );
        
    FULLADDER_6 : component FULLADDER
        port map(
            INTIL  => A(6) & B(6) & altut(11),
            UTFRA => altut(13 downto 12)
        );    
    
    FULLADDER_7 : component FULLADDER
        port map(
            INTIL  => A(7) & B(7) & altut(13),
            UTFRA => altut(15 downto 14)
        );
    
    UT <= altut(14) & altut(12) & altut(10) & altut(8) & altut(6) & altut(4) & altut(2) & altut(0);  
    CARRY_OUT <= altut(15);
end architecture RTL;
