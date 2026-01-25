library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bALU is
    Port ( 
        A               : in std_logic_vector(7 downto 0); -- ALU input A                                   Registers
        B               : in std_logic_vector(7 downto 0); -- ALU input B                                   Registers
        ALU_Sel         : in std_logic_vector(10 downto 0); -- ins bit 26,25,24,23,22,21,20,19,17,18         bController
        Result          : out std_logic_vector(7 downto 0);-- ALU result output                             Registers main buss                                            

        falg_carry_in   : in std_logic; -- carry flag input for add with carry                              bController

        FlagN           : out std_logic; -- negative flag output                                            bController
        FlagZ           : out std_logic; -- zero flag output                                                bController
        FlagO           : out std_logic; -- overflow flag output                                            bController
        FlagU           : out std_logic; -- underflow flag output                                           bController
        FlagC           : out std_logic  -- carry flag output                                               bController
         );
end bALU;

architecture Behavioral of bALU is

    signal sResult : std_logic_vector(7 downto 0);
    signal sFlagN : std_logic;
    signal sFlagZ : std_logic;
    signal sFlagO : std_logic;
    signal sFlagU : std_logic;
    signal sFlagC : std_logic;

    signal sA : std_logic_vector(7 downto 0);
    signal sB : std_logic_vector(7 downto 0);

    component adder_8bit
        port(
            A         : in  std_logic_vector(7 downto 0);
            B         : in  std_logic_vector(7 downto 0);
            UT        : out std_logic_vector(7 downto 0);
            CARRY_IN  : in  std_logic;
            CARRY_OUT : out std_logic
        );
    end component adder_8bit;


    signal not_result : std_logic_vector(7 downto 0);
    signal AND_result : std_logic_vector(7 downto 0);
    signal OR_result : std_logic_vector(7 downto 0);
    signal Right_Shift : std_logic_vector(7 downto 0);
    signal XOR_result : std_logic_vector(7 downto 0);

    signal adder_result : std_logic_vector(7 downto 0);
    signal adder_carry_out : std_logic;
    signal adder_carry_in : std_logic := '0';


begin

    adder_8bit_inst : component adder_8bit
        port map(
            A         => sA,
            B         => sB,
            UT        => adder_result,
            CARRY_IN  => adder_carry_in,
            CARRY_OUT => adder_carry_out
        );
    
    
    not_result <= not sA;
    AND_result <= sA and sB;
    OR_result <= sA or sB;
    Right_Shift <= '0' & sA(7 downto 1);

    XOR_result <= sA xor sB;

    sFlagZ <= not (sResult(7) or sResult(6) or sResult(5) or sResult(4) or sResult(3) or sResult(2) or sResult(1) or sResult(0));
    sFlagN <= adder_result(7);

    alu_process : process(ALU_Sel, A, XOR_result, AND_result, B, OR_result, Right_Shift, adder_carry_out, adder_result, falg_carry_in, not_result, sA(0), sA(7), sB(7), sResult(7)) is
    begin
        case ALU_Sel is
            when "11111111110" =>           -- store/save
            sA <= A; -- A is don't care
            sB <= B; -- B is source
            adder_carry_in <= '0';
            sResult <= OR_result;

            sFlagO <= '0';
            sFlagC <= '0';
            sFlagU <= '0';
        when "11111111101" =>                 -- Incriment
            sA <= A;
            sB <= B; -- B is don't care
            adder_carry_in <= '1';
            sResult <= adder_result;

            sFlagO <= sA(0) xor sResult(7);
            sFlagC <= adder_carry_out;
            sFlagU <= '0';

            
        when "11111111011" =>                 -- decrement
            sA <= A;
            sB <= "11111111";
            adder_carry_in <= '0';
            sResult <= adder_result;

            sFlagO <= sA(0) xor sResult(7);
            sFlagC <= adder_carry_out;
            sFlagU <= '0';

            
        when "11111110111" =>                 -- Right shift
            sA <= A;
            sB <= B; -- B is don't care
            adder_carry_in <= '0';
            sResult <= Right_Shift;

            sFlagO <= sA(0) xor sResult(7);
            sFlagC <= '0';
            sFlagU <= A(0);

            
        when "11111101111" =>                 -- not
            sA <= A;
            sB <= B; -- B is don't care
            adder_carry_in <= '0';
            sResult <= not_result;

            sFlagO <= '1';
            sFlagC <= '0';
            sFlagU <= '0';
        when "11111011111" =>                 -- and
            sA <= A;
            sB <= B;
            adder_carry_in <= '0';
            sResult <= AND_result;

            sFlagO <= (sA(7) xnor sB(7)) and (sA(7) xor sResult(7));
            sFlagC <= '0';
            sFlagU <= '0';
        when "11110111111" =>                 -- or
            sA <= A;
            sB <= B;
            adder_carry_in <= '0';
            sResult <= OR_result;

            sFlagO <= (sA(7) xnor sB(7)) and (sA(7) xor sResult(7));
            sFlagC <= '0';
            sFlagU <= '0';
        when "11101111111" =>                 -- xor
            sA <= A;
            sB <= B;
            adder_carry_in <= '0';
            sResult <= XOR_result;

            sFlagO <= (sA(7) xnor sB(7)) and (sA(7) xor sResult(7));
            sFlagC <= '0';
            sFlagU <= '0';

        when "11011111111" =>                 -- add
            sA <= A;
            sB <= B;
            adder_carry_in <= '0';
            sResult <= adder_result;

            sFlagO <= (sA(7) xnor sB(7)) and (sA(7) xor sResult(7));
            sFlagC <= adder_carry_out;
            sFlagU <= '0';

        when "10111111111" =>                --  add without carry
            sA <= A;
            sB <= B;
            adder_carry_in <= falg_carry_in; -- carry flag input
            sResult <= adder_result;

            sFlagO <= (sA(7) xnor sB(7)) and (sA(7) xor sResult(7));
            sFlagC <= adder_carry_out;
            sFlagU <= '0';
        
        when "01111111111" =>                --  move
            sA <= A; -- A is don't care
            sB <= B; -- B is source
            adder_carry_in <= '0';
            sResult <= OR_result; 

            sFlagO <= '0';
            sFlagC <= '0';
            sFlagU <= '0';
        when others =>
            sA <= A;
            sB <= B;
            adder_carry_in <= '0';
            sResult <= "00000000";

            sFlagO <= '0';
            sFlagC <= '0';
            sFlagU <= '0';
        end case;
        
        
    end process alu_process;
    



   


    
    Result <= sResult;
    FlagN <= sFlagN;
    FlagZ <= sFlagZ;
    FlagO <= sFlagO;
    FlagU <= sFlagU;
    FlagC <= sFlagC;

end Behavioral;