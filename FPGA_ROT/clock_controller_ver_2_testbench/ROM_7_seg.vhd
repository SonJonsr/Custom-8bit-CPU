library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_7_seg is
    port(
        adresse : in  std_logic_vector(3 downto 0);
        HEX     : out std_logic_vector(6 downto 0)
    );
end entity ROM_7_seg;

architecture behavior of ROM_7_seg is
	signal adr_std : std_logic_vector(3 downto 0);
	signal adr_int : integer range 0 to 15;
	
	type tabell is array (0 to 15) of std_logic_vector(6 downto 0);
	constant minne : tabell := (
											"1000000",	--0
											"1111001",	--1
											"0100100",	--2
											"0110000",	--3
											"0011001",	--4
											"0010010",	--5
											"0000010",	--6
											"1111000",	--7
											"0000000",	--8
											"0010000",	--9
											"0001000",	--A
											"0000011",	--B
											"0100111",	--C
											"0100001",	--D
											"0000110",	--E
											"0001110"	--F
										);

begin
	adr_std <= adresse;
	-- konverter adr_std tilINTEGER
	adr_int <= to_integer(unsigned(adr_std));
	HEX <= minne(adr_int);


end architecture behavior;
