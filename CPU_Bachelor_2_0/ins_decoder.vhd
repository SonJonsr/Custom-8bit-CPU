library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ins_Decoder is
    Port ( 
        clk                 : in std_logic;                         -- system clock                         bCPU
        slow_clk           : in std_logic;                         -- slow clock                           ClockGen
        rst_n               : in std_logic;                         -- system reset active low              bCPU
        read_new_opcode     : in std_logic;                         -- signal to read new opcode            bController
        Data_buss           : in std_logic_vector(7 downto 0);      -- instruction from memory              bRAM
        operation           : out std_logic_vector(7 downto 0);     
        opcode              : out std_logic_vector(26 downto 0)     -- decoded opcodes                      bController
         );
end Ins_Decoder;

architecture Behavioral of Ins_Decoder is

    component ram8bit
        port(
            DATA_IN : in  std_logic_vector(7 downto 0);
            DATA_UT : out std_logic_vector(7 downto 0) := "00000000";
            en_read : in  std_logic;
            clk     : in  std_logic;
            rst     : in  std_logic
        );
    end component ram8bit;

    signal instruction : std_logic_vector(7 downto 0) := "00000000";

begin

    ram8bit_inst : component ram8bit
        port map(
            DATA_IN => Data_buss,
            DATA_UT => instruction,
            en_read => read_new_opcode and slow_clk,
            clk     => clk,
            rst     => not rst_n
        );
    
    operation <= instruction;
    process(instruction)
        begin
            case instruction(7 downto 0) is
            when "00000010" =>
                opcode <=                   "111111111111111111111111110"; -- jump
            when "00000011" =>
                opcode <=                   "111111111111111111111111101"; -- bop
            when "00000100" =>
                opcode <=                   "111111111111111111111111011"; -- bon
            when "00000101" =>
                opcode <=                   "111111111111111111111110111"; -- boz
            when "00000110" =>
                opcode <=                   "111111111111111111111101111"; -- bnz
            when "00000111" =>
                opcode <=                   "111111111111111111111011111"; -- boo
            when "00001000" =>
                opcode <=                   "111111111111111111110111111"; -- bno
            when "00001001" =>
                opcode <=                   "111111111111111111101111111"; -- bou
            when "00001010" =>
                opcode <=                   "111111111111111111011111111"; -- bnu
            when "00001011" =>
                opcode <=                   "111111111111111110111111111"; -- boc
            when "00001100" =>
                opcode <=                   "111111111111111101111111111"; -- bnc
            when "00001101" =>
                opcode <=                   "111111111111111011111111111"; -- reset
            when "00001110" =>
                opcode <=                   "111111111111110111111111111"; -- clear flag
            when "00001111" =>
                opcode <=                   "111111111111101111111111111"; -- clear all registers
            when others =>
                case instruction(7 downto 2) is
                    when "000100" =>
                        opcode <=           "111111111111011111111111111"; -- clear register
                    when "000101" =>
                        opcode <=           "111111111110111111111111111"; -- load 
                    when "000110" =>
                        opcode <=           "111111111101111111111111111"; -- store 
                    when "000111" =>
                        opcode <=           "111111111011111111111111111"; -- increment
                    when "001000" =>
                        opcode <=           "111111110111111111111111111"; -- decrement
                    when "001001" =>
                        opcode <=           "111111101111111111111111111"; -- right shift
                    when "001010" =>
                        opcode <=           "111111011111111111111111111"; -- not
                    when others =>
                        case instruction(7 downto 4) is
                            when "0011" =>
                                opcode <=   "111110111111111111111111111"; -- and
                            when "0100" =>
                                opcode <=   "111101111111111111111111111"; -- or
                            when "0101" =>
                                opcode <=   "111011111111111111111111111"; -- xor
                            when "0110" =>
                                opcode <=   "110111111111111111111111111"; -- add without carry
                            when "0111" =>
                                opcode <=   "101111111111111111111111111"; -- add with carry
                            when "1000" =>
                                opcode <=   "011111111111111111111111111"; -- move
                            when others =>
                                opcode <= (others => '1'); -- Undefined instruction
                        end case;
                end case;
        end case;
    end process;

end Behavioral;