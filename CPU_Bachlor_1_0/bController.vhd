
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bController is
    port(
        clk                 : in    std_logic; -- system clock                                              bCPU
        rise_edge           : in    std_logic; -- slow clock rise edge                                      ClockGen
        rst_n               : in    std_logic; -- system reset active low                                   bCPU

        opcode              : in    std_logic_vector(25 downto 0); -- from instruction decoder              Ins_Decoder

        readHH              : out   std_logic; -- for reading high byte                                     bAddress
        readLL              : out   std_logic; -- for reading low  byte                                     bAddress    
        comit_jump          : out   std_logic; -- for reading HH and LL into HHLL address                   bAddress
        change_address      : out   std_logic; -- to change address in bCPU                                 bAddress
        read_new_opcode     : out   std_logic; -- to read new opcode                                        Ins_Decoder

        regR                : out   std_logic_vector(3 downto 0);                         --                bRegister
        regA                : out   std_logic_vector(3 downto 0);                         --                bRegister
        regB                : out   std_logic_vector(3 downto 0);                         --                bRegister

        instruction_lower   : in    std_logic_vector(3 downto 0); -- lower bits of current instruction      Ins_Decoder
        
        TimeStep            : out   std_logic_vector(2 downto 0);
        
        sycle_out           : out std_logic_vector(2 downto 0);     -- just for testing purposess
        sycle_In            : out std_logic_vector(2 downto 0);

        FlagN               : in std_logic;         -- negative flag                                        bALU   
        FlagZ               : in std_logic;         -- zero flag                                            bALU
        FlagO               : in std_logic;         -- overflow flag                                        bALU
        FlagU               : in std_logic;         -- underflow flag                                       bALU
        FlagC               : in std_logic;         -- carry flag                                           bALU

        

        FlagC_out           : out   std_logic       -- carry flag output                                    bALU

    );
end entity bController;


architecture Behavioral of bController is

    signal regR_en          : std_logic;
    signal regA_en          : std_logic;
    signal regB_en          : std_logic;

    signal sFlagEn          : std_logic;
    

    signal sflagSett        :    std_logic_vector(4 downto 0); -- N,Z,O,U,C
    signal sflagOut         :    std_logic_vector(4 downto 0); -- N,Z,O,U,C
    signal sTimerSett       :    std_logic_vector(2 downto 0);
    signal sTimerOut        :    std_logic_vector(2 downto 0);

    signal sekvens_in       :    std_logic;

    signal byte_FTin        : std_logic_vector(7 downto 0) := "00000000";
    signal byte_FTout       : std_logic_vector(7 downto 0);

    signal readWrite_comand : std_logic;
    signal jump_comand      : std_logic;



    component ram8bit
        port(
            DATA_IN : in  std_logic_vector(7 downto 0);
            DATA_UT : out std_logic_vector(7 downto 0) := "00000000";
            en_read : in  std_logic;
            clk     : in  std_logic;
            rst     : in  std_logic
        );
    end component ram8bit;

    
begin

    sycle_In <= sTimerSett;
    sycle_out <= sTimerOut;

    TimeStep <= sTimerOut;

    FlagC_out <= sflagOut(4);

    readWrite_comand <= not (opcode(18) and opcode(19)); -- read/write command

    jump_comand <= not (opcode(0) and opcode(1) and opcode(2) and opcode(3) and opcode(4) and opcode(5) and opcode(6) and opcode(7) and opcode(8) and opcode(9) and opcode(10));

    sekvens_in <= (jump_comand and (not (sTimerOut(0) or sTimerOut(1)))) or 
             (readWrite_comand and (not (sTimerOut(0) or sTimerOut(1) or sTimerOut(2))));

    sflagOut <= byte_FTout(7 downto 3);     -- flags N,Z,O,U,C
    sTimerOut <= byte_FTout(2 downto 0);    -- timer bits

    sTimerSett(0) <= sekvens_in;
    sTimerSett(1) <= sTimerOut(0);
    sTimerSett(2) <= sTimerOut(1);

    byte_FTin <= sflagSett & sTimerSett;

    read_new_opcode <= not ((jump_comand and ((sTimerOut(0) or sTimerOut(1)))) or  
                     ((readWrite_comand and ((sTimerOut(0) or sTimerOut(1) or sTimerOut(2))))));

    readHH <= sTimerOut(0);
    readLL <= sTimerOut(1);
    

    ram8bit_inst : component ram8bit
    port map(
        DATA_IN => byte_FTin,
        DATA_UT => byte_FTout,
        en_read => rise_edge,
        clk     => clk,
        rst     => not rst_n
    );


    comit_jump <= not (sTimerOut(1) nand (                          not opcode(0)  or
                                        ((not (FlagN or FlagZ))     nor opcode(1)) or 
                                        ((FlagN)                    nor opcode(2)) or 
                                        ((FlagZ)                    nor opcode(3)) or 
                                        ((not FlagZ)                nor opcode(4)) or 
                                        ((FlagO)                    nor opcode(5)) or 
                                        ((not FlagO)                nor opcode(6)) or
                                        ((FlagU)                    nor opcode(7)) or
                                        ((not FlagU)                nor opcode(8)) or
                                        ((FlagC)                    nor opcode(9)) or
                                        ((not FlagC)                nor opcode(10))));

    change_address <= sTimerOut(2) and (not sTimerOut(0)) and readWrite_comand;

    regR_en <= not (opcode(14) and opcode(15) and opcode(16) and opcode(17) and opcode(19) and opcode(20) and opcode(21) and opcode(22) and opcode(23) and opcode(24) and opcode(25));

    regA_en <= not (opcode(15) and opcode(16) and opcode(17) and opcode(18) and opcode(20) and opcode(21) and opcode(22) and opcode(23) and opcode(24));

    regB_en <= not (opcode(21) and opcode(22) and opcode(23) and opcode(24) and opcode(25));


    process(regR_en, instruction_lower)
    begin
        if regR_en = '1' then
            case instruction_lower(1 downto 0) is
                when "00" =>
                    regR <= "0001"; -- A
                    
                when "01" =>
                    regR <= "0010"; -- B
                    
                when "10" =>
                    regR <= "0100"; -- C
                    
                when "11" =>
                    regR <= "1000"; -- D
                    
                when others =>
                    regR <= "0000"; -- none
                    
            end case;
        else
            regR <= (others => '0');
        end if;
    end process;


    process(regA_en, instruction_lower)
    begin
        if regA_en = '1' then
            case instruction_lower(1 downto 0) is
                when "00" =>
                    regA <= "0001";
                    
                when "01" =>
                    regA <= "0010";
                    
                when "10" =>
                    regA <= "0100";
                    
                when "11" =>
                    regA <= "1000";
                    
                when others =>
                    regA <= "0000";
                    
            end case;
        else
            regA <= (others => '0');
        end if;
    end process;

    process(regB_en, instruction_lower)
    begin
        if regB_en = '1' then
            case instruction_lower(3 downto 2) is
                when "00" =>
                    regB <= "0001";
                    
                when "01" =>
                    regB <= "0010";
                    
                when "10" =>
                    regB <= "0100";
                    
                when "11" =>
                    regB <= "1000";
                    
                when others =>
                    regB <= "0000";
                    
            end case;
        else
            regB <= (others => '0');
        end if;
    end process;


    -- Determine if flags are to be changed


    sFlagEn <= not (opcode(15) and opcode(16) and opcode(17) and opcode(20) and opcode(21) and opcode(22) and opcode(23) and opcode(24));

    -- Determine which flags are affected by the instruction
    


    process(sFlagEn, FlagN, FlagZ, FlagO, FlagU, FlagC, sflagOut)
    begin
        if sFlagEn = '1' then
            sflagSett(4) <= FlagC;
            sflagSett(3) <= FlagU;
            sflagSett(2) <= FlagO;
            sflagSett(1) <= FlagZ;
            sflagSett(0) <= FlagN;
        else
            sflagSett <= sflagOut;
        end if;
    end process;

end architecture Behavioral;