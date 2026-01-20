library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FULLADDER is
    port(
        INTIL  : in std_logic_vector(2 downto 0);
        UTFRA  : out std_logic_vector(1 downto 0)
    );
end entity FULLADDER;

architecture RTL of FULLADDER is
    signal A,B,C,D,E,F,G : std_logic;
    
begin
        
        UTFRA(1) <= A nand E; 
        UTFRA(0) <= F nand G;
        F <= D nand E;
        G <= INTIL(0) nand E;
        E <= INTIL(0) nand D;
        D <= B nand C;
        C <= INTIL(1) nand A;
        B <= INTIL(2) nand A;
        A <= INTIL(2) nand INTIL(1);

        
end architecture RTL;
