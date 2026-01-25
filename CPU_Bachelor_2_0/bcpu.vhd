library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity bCPU is
    Port ( 
        rst_n         : in std_logic; 
        slow_clk        : in std_logic;
        clk             : in std_logic;
        Run             : in std_logic;
        RW              : out std_logic;    -- '1' for read, '0' for write, CPU perspective
        address         : out std_logic_vector(15 downto 0);
        data_in         : in std_logic_vector(7 downto 0);
        data_out        : out std_logic_vector(7 downto 0);
        comJumo         : out std_logic;
        sycle_out       : out std_logic_vector(2 downto 0);
        sycle_In        : out std_logic_vector(2 downto 0);
        RegA_out        : out std_logic_vector(7 downto 0);
        RegB_out        : out std_logic_vector(7 downto 0);
        RegC_out        : out std_logic_vector(7 downto 0);
        RegD_out        : out std_logic_vector(7 downto 0)

         );
end bCPU;

architecture Behavioral of bCPU is
    signal prev_clk : std_logic := '0';
    signal rise_edge : std_logic := '0';

    signal main_buss : std_logic_vector(7 downto 0);

    signal ALUA : std_logic_vector(7 downto 0);
    signal ALUB : std_logic_vector(7 downto 0);

    signal A_out : std_logic_vector(7 downto 0);
    signal B_out : std_logic_vector(7 downto 0);
    signal C_out : std_logic_vector(7 downto 0);
    signal D_out : std_logic_vector(7 downto 0);

    signal s_sycle_out : std_logic_vector(2 downto 0);
    signal s_sycle_In  : std_logic_vector(2 downto 0);

    component bALU
        port(
            A             : in  std_logic_vector(7 downto 0);
            B             : in  std_logic_vector(7 downto 0);
            ALU_Sel       : in  std_logic_vector(9 downto 0);
            Result        : out std_logic_vector(7 downto 0);
            falg_carry_in : in  std_logic;
            FlagN         : out std_logic;
            FlagZ         : out std_logic;
            FlagO         : out std_logic;
            FlagU         : out std_logic;
            FlagC         : out std_logic
        );
    end component bALU;

    component bAddress
        port(
            clk            : in  std_logic;
            rise_edge      : in  std_logic;
            rst_n          : in  std_logic;
            readHH         : in  std_logic;
            readLL         : in  std_logic;
            comit_jump     : in  std_logic;
            change_address : in  std_logic;
            address_out    : out std_logic_vector(15 downto 0);
            data_Buss      : in  std_logic_vector(7 downto 0)
        );
    end component bAddress;

    

    component Ins_Decoder
        port(
            clk             : in  std_logic;
            slow_clk        : in  std_logic;
            rst_n           : in  std_logic;
            read_new_opcode : in  std_logic;
            Data_buss       : in  std_logic_vector(7 downto 0);
            operation       : out std_logic_vector(7 downto 0);
            opcode          : out std_logic_vector(25 downto 0)
        );
    end component Ins_Decoder;

    component bController
        port(
            clk               : in  std_logic;
            rise_edge         : in  std_logic;
            rst_n             : in  std_logic;
            opcode            : in  std_logic_vector(25 downto 0);
            readHH            : out std_logic;
            readLL            : out std_logic;
            comit_jump        : out std_logic;
            change_address    : out std_logic;
            read_new_opcode   : out std_logic;
            regR              : out std_logic_vector(3 downto 0);
            regA              : out std_logic_vector(3 downto 0);
            regB              : out std_logic_vector(3 downto 0);
            instruction_lower : in  std_logic_vector(3 downto 0);
            TimeStep          : out std_logic_vector(2 downto 0);
            sycle_out           : out std_logic_vector(2 downto 0);
            sycle_In            : out std_logic_vector(2 downto 0);
            FlagN             : in  std_logic;
            FlagZ             : in  std_logic;
            FlagO             : in  std_logic;
            FlagU             : in  std_logic;
            FlagC             : in  std_logic;
            tempFlagSet       : out   std_logic_vector(4 downto 0); -- temporary flags storage (N,Z,O,U,C)                  bALU
            tempFlagOut       : out   std_logic_vector(4 downto 0); -- temporary flags output (N,Z,O,U,C)                   bALU

            FlagC_out         : out std_logic
        );
    end component bController;

    component ram8bit
        port(
            DATA_IN : in  std_logic_vector(7 downto 0);
            DATA_UT : out std_logic_vector(7 downto 0) := "00000000";
            en_read : in  std_logic;
            clk     : in  std_logic;
            rst     : in  std_logic
        );
    end component ram8bit;
    signal s_RegR : std_logic_vector(3 downto 0); -- 0=A, 1=B, 2=C, 3=D
    signal s_RegA : std_logic_vector(3 downto 0); -- alu input A select
    signal s_RegB : std_logic_vector(3 downto 0); -- alu input B select

    signal opcode : std_logic_vector(25 downto 0);
    signal aluOpcode : std_logic_vector(9 downto 0);

    signal FlagN : std_logic;
    signal FlagZ : std_logic;
    signal FlagO : std_logic;
    signal FlagU : std_logic;
    signal FlagC : std_logic;
    signal ALU_result : std_logic_vector(7 downto 0);
    signal falg_carry_in : std_logic;

    signal comit_jump : std_logic;
    signal change_address : std_logic;
    signal read_new_opcode : std_logic;
    signal readHH, readLL : std_logic;

    signal sTimeStep : std_logic_vector(2 downto 0);
    signal operation : std_logic_vector(7 downto 0);

begin
    sycle_In <= s_sycle_In;
    sycle_out <= s_sycle_out;

    RegA_out <= A_out;
    RegB_out <= B_out;
    RegC_out <= C_out;
    RegD_out <= D_out;


    comJumo <= comit_jump;
    A : component ram8bit
    port map(
        DATA_IN => main_buss,
        DATA_UT => A_out,
        en_read => s_RegR(0) and rise_edge,
        clk     => clk,
        rst     => not rst_n
    );

    B : component ram8bit
    port map(
        DATA_IN => main_buss,
        DATA_UT => B_out,
        en_read => s_RegR(1) and rise_edge,
        clk     => clk,
        rst     => not rst_n
    );

    C : component ram8bit
    port map(
        DATA_IN => main_buss,
        DATA_UT => C_out,
        en_read => s_RegR(2) and rise_edge,
        clk     => clk,
        rst     => not rst_n
    );

    D : component ram8bit
    port map(
        DATA_IN => main_buss,
        DATA_UT => D_out,
        en_read => s_RegR(3) and rise_edge,
        clk     => clk,
        rst     => not rst_n
    );
    
    
    
    ALUA <= A_out when s_RegA = "0001" else
            B_out when s_RegA = "0010" else
            C_out when s_RegA = "0100" else
            D_out when s_RegA = "1000" else
            (others => '0');
    
    ALUB <= A_out when s_RegB = "0001" else
            B_out when s_RegB = "0010" else
            C_out when s_RegB = "0100" else
            D_out when s_RegB = "1000" else
            (others => '0');

    aluOpcode <= opcode(18) & opcode(25 downto 20) & opcode(17 downto 15);
    ALU_inst : component bALU
    port map(
        A             => ALUA,
        B             => ALUB,          
        ALU_Sel       => aluOpcode,     -- ALU operation selector
        Result        => ALU_result,    -- to main buss
        falg_carry_in => falg_carry_in, -- from bController for add with carry
        FlagN         => FlagN,         -- negative flag to bController
        FlagZ         => FlagZ,         -- zero flag to bController
        FlagO         => FlagO,         -- overflow flag to bController
        FlagU         => FlagU,         -- underflow flag to bController
        FlagC         => FlagC          -- carry flag to bController
    );

    Ins_Decoder_inst : component Ins_Decoder
    port map(
        clk             => clk,
        slow_clk        => slow_clk,
        rst_n           => rst_n,
        read_new_opcode => read_new_opcode,
        Data_buss       => data_in,
        operation       => operation,
        opcode          => opcode
    );
    
    bController_inst : component bController
    port map(
        clk               => clk,
        rise_edge         => rise_edge,
        rst_n             => rst_n,
        opcode            => opcode,
        readHH            => readHH,
        readLL            => readLL,
        comit_jump        => comit_jump,
        change_address    => change_address,
        read_new_opcode   => read_new_opcode,
        regR              => s_RegR,
        regA              => s_RegA,
        regB              => s_RegB,
        instruction_lower => operation(3 downto 0),
        TimeStep          => sTimeStep,
        sycle_In          => s_sycle_In,
        sycle_out         => s_sycle_out,
        FlagN             => FlagN,
        FlagZ             => FlagZ,
        FlagO             => FlagO,
        FlagU             => FlagU,
        FlagC             => FlagC,
        tempFlagSet       => open,
        tempFlagOut       => open,
        FlagC_out         => falg_carry_in
    );
    
    bAddress_inst : component bAddress
    port map(
        clk            => clk,
        rise_edge      => rise_edge,
        rst_n          => rst_n,
        readHH         => readHH,
        readLL         => readLL,
        comit_jump     => comit_jump,
        change_address => change_address,
        address_out    => address,
        data_Buss      => data_in
    );
    

    process(clk)
    begin
        if rising_edge(clk) then
            if prev_clk = '0' and slow_clk = '1' then
                rise_edge <= '1';
            else
                rise_edge <= '0';
            end if;
            prev_clk <= slow_clk;
        end if;
    end process;

    RW <= not ((not opcode(18)) and not(sTimeStep(0)) and sTimeStep(2));
    data_out <= main_buss;

    main_buss <=    ALU_result when (aluOpcode(9) and aluOpcode(8) and aluOpcode(7) and aluOpcode(6) and aluOpcode(5) and aluOpcode(4) and aluOpcode(3) and aluOpcode(2) and aluOpcode(1) and aluOpcode(0)) = '0' else
                    data_in when opcode(19) = '0' else
                    (others => '0');

end Behavioral;