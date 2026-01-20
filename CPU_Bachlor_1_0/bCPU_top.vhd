LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity bCPU_top is
    Port ( 
        CLOCK_50        : in std_logic;
        SW              : in std_logic_vector(17 downto 0);
        key             : in std_logic_vector(3 downto 0);
        LEDR            : out std_logic_vector(17 downto 0);
        LEDG            : out std_logic_vector(8 downto 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0) := "1111111";
        LCD_RS,LCD_EN   : out std_logic;
        LCD_RW          : out std_logic;
        LCD_ON          : out std_logic;
        LCD_DATA        : INOUT std_logic_vector(7 downto 0)
         );
end bCPU_top;

architecture Behavioral of bCPU_top is


    component ClockGen is
        Port ( 
            CLOCK_50    : in std_logic;
            reset_n     : in std_logic;
            freq_exp    : in integer;
            step_mode   : in std_logic;
            step        : in std_logic;
            run_mode    : in std_logic;
            slow_clk    : out std_logic
             );
    end component;
    
    component bCPU
        port(
            rst_n  : in  std_logic;
            slow_clk : in  std_logic;
            clk      : in  std_logic;
            Run      : in  std_logic;
            RW       : out std_logic;
            address  : out std_logic_vector(15 downto 0);
            data_in  : in  std_logic_vector(7 downto 0);
            data_out : out std_logic_vector(7 downto 0);
            comJumo  : out std_logic;
            sycle_out       : out std_logic_vector(2 downto 0);
            sycle_In        : out std_logic_vector(2 downto 0);
            RegA_out        : out std_logic_vector(7 downto 0);
            RegB_out        : out std_logic_vector(7 downto 0);
            RegC_out        : out std_logic_vector(7 downto 0);
            RegD_out        : out std_logic_vector(7 downto 0)
        );
    end component bCPU;

    component bRAM
    	port(
    		clk      : in  std_logic;
    		slow_clk : in  std_logic;
    		reset_n  : in  std_logic;
    		RW       : in  std_logic;
    		ready    : out std_logic;
    		address  : in  std_logic_vector(15 downto 0);
    		data_in  : in  std_logic_vector(7 downto 0);
    		data_out : out std_logic_vector(7 downto 0) := "00000000"
    	);
    end component bRAM;

    component LCD_Display
        port(
            reset, clk_48Mhz : IN    STD_LOGIC;
            Hex_Display_Data : IN    STD_LOGIC_VECTOR(15 DOWNTO 0);
            RegA_in          : IN    std_logic_vector(7 downto 0);
            RegB_in          : IN    std_logic_vector(7 downto 0);
            RegC_in          : IN    std_logic_vector(7 downto 0);
            RegD_in          : IN    std_logic_vector(7 downto 0);
            LCD_RS, LCD_E    : OUT   STD_LOGIC;
            LCD_RW           : OUT   STD_LOGIC;
            DATA_BUS         : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component LCD_Display;

    component Reset_synchronizer
        port(
            clk        : IN  std_logic;
            reset_key3 : IN  std_logic;
            reset_sync : OUT std_logic
        );
    end component Reset_synchronizer;

    component ROM_7_SEG
        port(
            adresse : in  std_logic_vector(3 downto 0);
            HEX     : out std_logic_vector(6 downto 0)
        );
    end component ROM_7_SEG;

    signal s_reset_n : std_logic;
    signal s_address : std_logic_vector(15 downto 0);

    signal CPU_data_out, CPU_data_in : std_logic_vector(7 downto 0);
    
    signal RW,ready,slow_clk : std_logic;
    signal s_exp : integer range 0 to 15;
    signal RegA_out,RegB_out,RegC_out,RegD_out : std_logic_vector(7 downto 0);

    Signal bcd : STD_LOGIC_VECTOR(23 DOWNTO 0);
	Signal reset_key3,reset: std_LOGIC;

begin
    s_reset_n <= key(0);
    LEDG(0) <= slow_clk;
    LEDG(1) <= RW;

    U_ClockGen : ClockGen
        Port map (
            CLOCK_50    => CLOCK_50,
            reset_n     => s_reset_n,
            freq_exp    => to_integer(unsigned(SW(4 downto 0))),
            step_mode   => SW(6),
            step        => not key(3),
            run_mode    => SW(5),
            slow_clk    => slow_clk
        );


    bRAM_inst : component bRAM
        port map(
            clk      => CLOCK_50,
            slow_clk => slow_clk,
            reset_n  => s_reset_n,
            RW       => RW,
            ready    => ready,
            address  => s_address,
            data_in  => CPU_data_out,
            data_out => CPU_data_in
        );
    
    
    bCPU_inst : component bCPU
        port map(
            rst_n    => s_reset_n,
            slow_clk => slow_clk,
            clk      => CLOCK_50,
            Run      => ready,
            RW       => RW,
            address  => s_address,
            data_in  => CPU_data_in,
            data_out => CPU_data_out,
            comJumo  => LEDG(2),
            sycle_In => LEDR(6 downto 4),
            sycle_out => LEDR(2 downto 0),
            RegA_out  => RegA_out,
            RegB_out  => RegB_out,  
            RegC_out  => RegC_out,     
            RegD_out  => RegD_out
        );


    ROM_7_SEG_inst : component ROM_7_SEG
        port map(
            adresse => s_address(15 downto 12),
            HEX     => HEX3
        );
        
    
    ADRHH_L : component ROM_7_SEG
        port map(
            adresse => s_address(11 downto 8),
            HEX     => HEX2
        );
    
    ADRLL_H : component ROM_7_SEG
        port map(
            adresse => s_address(7 downto 4),
            HEX     => HEX1
        );
    
    ADRLL_L : component ROM_7_SEG
        port map(
            adresse => s_address(3 downto 0),
            HEX     => HEX0
        );
    DAT_IN_H : component ROM_7_SEG
        port map(
            adresse => CPU_data_in(7 downto 4),
            HEX     => HEX5
        );
    
    DAT_IN_L : component ROM_7_SEG
        port map(
            adresse => CPU_data_in(3 downto 0),
            HEX     => HEX4
        );
    
    DAT_OUT_H : component ROM_7_SEG
        port map(
            adresse => CPU_data_out(7 downto 4),
            HEX     => HEX7
        );
    
    DAT_OUT_L : component ROM_7_SEG
        port map(
            adresse => CPU_data_out(3 downto 0),
            HEX     => HEX6
        );

    LCD_Display_inst : component LCD_Display
        port map(
            reset            => reset,
            clk_48Mhz        => CLOCK_50,
            Hex_Display_Data => (others => '0'),
            RegA_in          => RegA_out,
            RegB_in          => RegB_out,
            RegC_in          => RegC_out,
            RegD_in          => RegD_out,
            LCD_RS           => LCD_RS,
            LCD_E            => LCD_EN,
            LCD_RW           => LCD_RW,
            DATA_BUS         => LCD_data
        );
    
    

    LCD_ON <= '1';
	bcd <= "000000" & SW(17 downto 0);
	reset_key3 <= key(3);
	
	reset_synkroniseres: Reset_synchronizer Port map(	clk => clock_50, 
														reset_key3 => reset_key3,
														reset_sync => reset );
		

    LEDR(3) <= '1';
end Behavioral;