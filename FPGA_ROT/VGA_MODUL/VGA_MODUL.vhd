LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY VGA_MODUL IS
  PORT(
    clk         : IN STD_LOGIC;

    -- Memory interface
    dat         : IN  STD_LOGIC_VECTOR(7 downto 0);
    adr         : OUT STD_LOGIC_VECTOR(15 downto 0);
     

    VGA_CLK     : OUT STD_LOGIC;
    VGA_BLANK_N : OUT STD_LOGIC;
    VGA_SYNC_N  : OUT STD_LOGIC;
    VGA_HS      : OUT STD_LOGIC;
    VGA_VS      : OUT STD_LOGIC;
    VGA_R       : OUT STD_LOGIC_VECTOR(7 downto 0);
    VGA_G       : OUT STD_LOGIC_VECTOR(7 downto 0);
    VGA_B       : OUT STD_LOGIC_VECTOR(7 downto 0)
  );
