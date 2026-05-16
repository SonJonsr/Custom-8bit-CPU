library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--The random module is simply a LFSR
--  Linear
--  Feedback
--  Shift
--  Register

--How it works:
--
--  1.  Most significant bit XOR second most significant bit 
--      and save result to a temp signal
--
--                LSB
--  |---|---|---|---|
--  | 3 | 2 | 1 | 0 |
--  |---|---|---|---|
--   \/   \/       
--   |    |       
--   |-|--|       
--     |          
--     XOR --> new value for LSB saved as temp
--
--  2.  Left shift the register one bit.
--
--  |---|---|---|---|
--  | 3 | 2 | 1 | 0 |
--  |---|---|---|---|
--
--         \/ 
--
--  |---|---|---|---|
--  | 2 | 1 | 0 | x |
--  |---|---|---|---|
--  
--  3. Set least significant bit to the temp signal.
--
--  |---|---|---|------|
--  | 2 | 1 | 0 | temp |
--  |---|---|---|------|
--
--
--  All these steps can be translated to VHDL is:
--    random <= random(2 downto 0) & (random(3) xor random(2));



entity random is
  port(
    clk   : in  std_logic;
    random_byte : out std_logic_vector(7 downto 0) := x"FF"
  );
end entity;

architecture RTL of random is
  signal random_byte_sig : std_logic_vector(7 downto 0) := x"FF";
begin
  process(clk) is
  begin
    if rising_edge(clk) then
      random_byte <= random_byte_sig;
      -- LFSR utregningen
      random_byte_sig <=  random_byte_sig(6 downto 0)  -- (*@\label{line:random_gen_vhdl}@*)
                       & (random_byte_sig(7) XOR random_byte_sig(6));
    end if;
  end process;
end RTL;
