library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_7_SEG is
    port(
        adresse : in  std_logic_vector(3 downto 0);
        HEX     : out std_logic_vector(6 downto 0)
    );
end entity ROM_7_SEG;

architecture behavior of ROM_7_SEG is
    type ROM_array is array(0 to 15) of std_logic_vector(6 downto 0);
    constant ROM  : ROM_array := (
        "1000000", -- gfedcba -- 0 0x40
        "1111001", -- 1 0x79
        "0100100", -- 2 0x24
        "0110000", -- 3 0x30
        "0011001", -- 4 0x19
        "0010010", -- 5 0x12
        "0000010", -- 6 0x02
        "1111000", -- 7 0x78
        "0000000", -- 8 0x00
        "0010000", -- 9 0x10
        "0001000", -- A 0x08
        "0000011", -- b 0x03
        "1000110", -- C 0x46
        "0100001", -- d 0x21
        "0000110", -- E 0x06
        "0001110" -- F 0x0E
    );

begin
    HEX <= ROM(to_integer(unsigned(adresse)));
end architecture behavior;

