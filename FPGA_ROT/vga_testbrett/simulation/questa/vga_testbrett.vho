-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "01/22/2026 16:14:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_testbrett IS
    PORT (
	CLOCK_25 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0)
	);
END vga_testbrett;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_25	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_testbrett IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_25 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_25~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \VGA_BLANK_N~output_o\ : std_logic;
SIGNAL \VGA_SYNC_N~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \CLOCK_25~input_o\ : std_logic;
SIGNAL \CLOCK_25~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[0]~10_combout\ : std_logic;
SIGNAL \vga_adpater_1|LessThan4~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|LessThan2~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|LessThan5~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter~30_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[0]~11\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[1]~12_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[1]~13\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[2]~14_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[2]~15\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[3]~16_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[3]~17\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[4]~18_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[4]~19\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[5]~20_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[5]~21\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[6]~22_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[6]~23\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[7]~24_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[7]~25\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[8]~26_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[8]~27\ : std_logic;
SIGNAL \vga_adpater_1|h_counter[9]~28_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~15_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~20_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~22_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state.DISPLAY~q\ : std_logic;
SIGNAL \vga_adpater_1|h_state~12_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~13_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~14_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~18_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~21_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state.FRONT_PORCH~q\ : std_logic;
SIGNAL \vga_adpater_1|h_state~16_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~17_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~23_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state.SYNC_PULSE~q\ : std_logic;
SIGNAL \vga_adpater_1|h_state~10_combout\ : std_logic;
SIGNAL \vga_adpater_1|LessThan4~1_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~11_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state~19_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_state.BACK_PORCH~q\ : std_logic;
SIGNAL \vga_adpater_1|Selector0~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|h_sync~q\ : std_logic;
SIGNAL \vga_adpater_1|Add1~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~21_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_counter[0]~1_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~1\ : std_logic;
SIGNAL \vga_adpater_1|Add1~2_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~22_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~3\ : std_logic;
SIGNAL \vga_adpater_1|Add1~4_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~20_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~5\ : std_logic;
SIGNAL \vga_adpater_1|Add1~6_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~18_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~7\ : std_logic;
SIGNAL \vga_adpater_1|Add1~8_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~23_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~9\ : std_logic;
SIGNAL \vga_adpater_1|Add1~10_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~24_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~11\ : std_logic;
SIGNAL \vga_adpater_1|Add1~12_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~25_combout\ : std_logic;
SIGNAL \vga_adpater_1|LessThan9~1_combout\ : std_logic;
SIGNAL \vga_adpater_1|LessThan9~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~22_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~13\ : std_logic;
SIGNAL \vga_adpater_1|Add1~14_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~19_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~15\ : std_logic;
SIGNAL \vga_adpater_1|Add1~16_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_counter~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_counter[8]~2_combout\ : std_logic;
SIGNAL \vga_adpater_1|Add1~17\ : std_logic;
SIGNAL \vga_adpater_1|Add1~26_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_counter[9]~3_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~14_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~16_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~19_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~20_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~18_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~15_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~17_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~23_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~34_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~30_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~31_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state.DISPLAY~q\ : std_logic;
SIGNAL \vga_adpater_1|v_state~24_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~25_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~26_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~27_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~29_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state.FRONT_PORCH~q\ : std_logic;
SIGNAL \vga_adpater_1|v_state~21_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~32_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state.SYNC_PULSE~q\ : std_logic;
SIGNAL \vga_adpater_1|v_state~33_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state~28_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_state.BACK_PORCH~q\ : std_logic;
SIGNAL \vga_adpater_1|Selector5~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|v_sync~q\ : std_logic;
SIGNAL \vga_adpater_1|row~5_combout\ : std_logic;
SIGNAL \vga_adpater_1|row[4]~1_combout\ : std_logic;
SIGNAL \vga_adpater_1|row[31]~7_combout\ : std_logic;
SIGNAL \vga_adpater_1|row~6_combout\ : std_logic;
SIGNAL \vga_adpater_1|row~4_combout\ : std_logic;
SIGNAL \vga_adpater_1|row[7]~feeder_combout\ : std_logic;
SIGNAL \vga_adpater_1|row~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|row[4]~feeder_combout\ : std_logic;
SIGNAL \vga_adpater_1|row~3_combout\ : std_logic;
SIGNAL \vga_adpater_1|row~2_combout\ : std_logic;
SIGNAL \vga_adpater_1|row[5]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_R[0]~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|vga_timing~0_combout\ : std_logic;
SIGNAL \vga_adpater_1|display_en~q\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R[1]~1_combout\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R[2]~2_combout\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \VGA_R[3]~3_combout\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \VGA_R[4]~4_combout\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \VGA_R[5]~5_combout\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \VGA_R[6]~6_combout\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \VGA_R[7]~7_combout\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \vga_adpater_1|v_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_adpater_1|h_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_adpater_1|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_25 <= CLOCK_25;
ww_KEY <= KEY;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_25~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_25~input_o\);
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_BLANK_N~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_SYNC_N~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_adpater_1|h_sync~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_adpater_1|v_sync~q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOIBUF_X115_Y37_N15
\CLOCK_25~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_25,
	o => \CLOCK_25~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_25~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_25~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_25~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X49_Y68_N6
\vga_adpater_1|h_counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[0]~10_combout\ = \vga_adpater_1|h_counter\(0) $ (VCC)
-- \vga_adpater_1|h_counter[0]~11\ = CARRY(\vga_adpater_1|h_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(0),
	datad => VCC,
	combout => \vga_adpater_1|h_counter[0]~10_combout\,
	cout => \vga_adpater_1|h_counter[0]~11\);

-- Location: LCCOMB_X49_Y68_N4
\vga_adpater_1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|LessThan4~0_combout\ = (!\vga_adpater_1|h_counter\(8) & !\vga_adpater_1|h_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_adpater_1|h_counter\(8),
	datad => \vga_adpater_1|h_counter\(7),
	combout => \vga_adpater_1|LessThan4~0_combout\);

-- Location: LCCOMB_X49_Y68_N2
\vga_adpater_1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|LessThan2~0_combout\ = (\vga_adpater_1|h_counter\(3) & (\vga_adpater_1|h_counter\(1) & (\vga_adpater_1|h_counter\(0) & \vga_adpater_1|h_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(3),
	datab => \vga_adpater_1|h_counter\(1),
	datac => \vga_adpater_1|h_counter\(0),
	datad => \vga_adpater_1|h_counter\(2),
	combout => \vga_adpater_1|LessThan2~0_combout\);

-- Location: LCCOMB_X49_Y68_N0
\vga_adpater_1|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|LessThan5~0_combout\ = (((!\vga_adpater_1|LessThan2~0_combout\) # (!\vga_adpater_1|h_counter\(4))) # (!\vga_adpater_1|h_counter\(5))) # (!\vga_adpater_1|h_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(6),
	datab => \vga_adpater_1|h_counter\(5),
	datac => \vga_adpater_1|h_counter\(4),
	datad => \vga_adpater_1|LessThan2~0_combout\,
	combout => \vga_adpater_1|LessThan5~0_combout\);

-- Location: LCCOMB_X49_Y68_N26
\vga_adpater_1|h_counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter~30_combout\ = ((\vga_adpater_1|h_counter\(9) & ((!\vga_adpater_1|LessThan5~0_combout\) # (!\vga_adpater_1|LessThan4~0_combout\)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \vga_adpater_1|h_counter\(9),
	datac => \vga_adpater_1|LessThan4~0_combout\,
	datad => \vga_adpater_1|LessThan5~0_combout\,
	combout => \vga_adpater_1|h_counter~30_combout\);

-- Location: FF_X49_Y68_N7
\vga_adpater_1|h_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[0]~10_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(0));

-- Location: LCCOMB_X49_Y68_N8
\vga_adpater_1|h_counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[1]~12_combout\ = (\vga_adpater_1|h_counter\(1) & (!\vga_adpater_1|h_counter[0]~11\)) # (!\vga_adpater_1|h_counter\(1) & ((\vga_adpater_1|h_counter[0]~11\) # (GND)))
-- \vga_adpater_1|h_counter[1]~13\ = CARRY((!\vga_adpater_1|h_counter[0]~11\) # (!\vga_adpater_1|h_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(1),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[0]~11\,
	combout => \vga_adpater_1|h_counter[1]~12_combout\,
	cout => \vga_adpater_1|h_counter[1]~13\);

-- Location: FF_X49_Y68_N9
\vga_adpater_1|h_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[1]~12_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(1));

-- Location: LCCOMB_X49_Y68_N10
\vga_adpater_1|h_counter[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[2]~14_combout\ = (\vga_adpater_1|h_counter\(2) & (\vga_adpater_1|h_counter[1]~13\ $ (GND))) # (!\vga_adpater_1|h_counter\(2) & (!\vga_adpater_1|h_counter[1]~13\ & VCC))
-- \vga_adpater_1|h_counter[2]~15\ = CARRY((\vga_adpater_1|h_counter\(2) & !\vga_adpater_1|h_counter[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|h_counter\(2),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[1]~13\,
	combout => \vga_adpater_1|h_counter[2]~14_combout\,
	cout => \vga_adpater_1|h_counter[2]~15\);

-- Location: FF_X49_Y68_N11
\vga_adpater_1|h_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[2]~14_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(2));

-- Location: LCCOMB_X49_Y68_N12
\vga_adpater_1|h_counter[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[3]~16_combout\ = (\vga_adpater_1|h_counter\(3) & (!\vga_adpater_1|h_counter[2]~15\)) # (!\vga_adpater_1|h_counter\(3) & ((\vga_adpater_1|h_counter[2]~15\) # (GND)))
-- \vga_adpater_1|h_counter[3]~17\ = CARRY((!\vga_adpater_1|h_counter[2]~15\) # (!\vga_adpater_1|h_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(3),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[2]~15\,
	combout => \vga_adpater_1|h_counter[3]~16_combout\,
	cout => \vga_adpater_1|h_counter[3]~17\);

-- Location: FF_X49_Y68_N13
\vga_adpater_1|h_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[3]~16_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(3));

-- Location: LCCOMB_X49_Y68_N14
\vga_adpater_1|h_counter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[4]~18_combout\ = (\vga_adpater_1|h_counter\(4) & (\vga_adpater_1|h_counter[3]~17\ $ (GND))) # (!\vga_adpater_1|h_counter\(4) & (!\vga_adpater_1|h_counter[3]~17\ & VCC))
-- \vga_adpater_1|h_counter[4]~19\ = CARRY((\vga_adpater_1|h_counter\(4) & !\vga_adpater_1|h_counter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|h_counter\(4),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[3]~17\,
	combout => \vga_adpater_1|h_counter[4]~18_combout\,
	cout => \vga_adpater_1|h_counter[4]~19\);

-- Location: FF_X49_Y68_N15
\vga_adpater_1|h_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[4]~18_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(4));

-- Location: LCCOMB_X49_Y68_N16
\vga_adpater_1|h_counter[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[5]~20_combout\ = (\vga_adpater_1|h_counter\(5) & (!\vga_adpater_1|h_counter[4]~19\)) # (!\vga_adpater_1|h_counter\(5) & ((\vga_adpater_1|h_counter[4]~19\) # (GND)))
-- \vga_adpater_1|h_counter[5]~21\ = CARRY((!\vga_adpater_1|h_counter[4]~19\) # (!\vga_adpater_1|h_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|h_counter\(5),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[4]~19\,
	combout => \vga_adpater_1|h_counter[5]~20_combout\,
	cout => \vga_adpater_1|h_counter[5]~21\);

-- Location: FF_X49_Y68_N17
\vga_adpater_1|h_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[5]~20_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(5));

-- Location: LCCOMB_X49_Y68_N18
\vga_adpater_1|h_counter[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[6]~22_combout\ = (\vga_adpater_1|h_counter\(6) & (\vga_adpater_1|h_counter[5]~21\ $ (GND))) # (!\vga_adpater_1|h_counter\(6) & (!\vga_adpater_1|h_counter[5]~21\ & VCC))
-- \vga_adpater_1|h_counter[6]~23\ = CARRY((\vga_adpater_1|h_counter\(6) & !\vga_adpater_1|h_counter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|h_counter\(6),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[5]~21\,
	combout => \vga_adpater_1|h_counter[6]~22_combout\,
	cout => \vga_adpater_1|h_counter[6]~23\);

-- Location: FF_X49_Y68_N19
\vga_adpater_1|h_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[6]~22_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(6));

-- Location: LCCOMB_X49_Y68_N20
\vga_adpater_1|h_counter[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[7]~24_combout\ = (\vga_adpater_1|h_counter\(7) & (!\vga_adpater_1|h_counter[6]~23\)) # (!\vga_adpater_1|h_counter\(7) & ((\vga_adpater_1|h_counter[6]~23\) # (GND)))
-- \vga_adpater_1|h_counter[7]~25\ = CARRY((!\vga_adpater_1|h_counter[6]~23\) # (!\vga_adpater_1|h_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|h_counter\(7),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[6]~23\,
	combout => \vga_adpater_1|h_counter[7]~24_combout\,
	cout => \vga_adpater_1|h_counter[7]~25\);

-- Location: FF_X49_Y68_N21
\vga_adpater_1|h_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[7]~24_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(7));

-- Location: LCCOMB_X49_Y68_N22
\vga_adpater_1|h_counter[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[8]~26_combout\ = (\vga_adpater_1|h_counter\(8) & (\vga_adpater_1|h_counter[7]~25\ $ (GND))) # (!\vga_adpater_1|h_counter\(8) & (!\vga_adpater_1|h_counter[7]~25\ & VCC))
-- \vga_adpater_1|h_counter[8]~27\ = CARRY((\vga_adpater_1|h_counter\(8) & !\vga_adpater_1|h_counter[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(8),
	datad => VCC,
	cin => \vga_adpater_1|h_counter[7]~25\,
	combout => \vga_adpater_1|h_counter[8]~26_combout\,
	cout => \vga_adpater_1|h_counter[8]~27\);

-- Location: FF_X49_Y68_N23
\vga_adpater_1|h_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[8]~26_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(8));

-- Location: LCCOMB_X49_Y68_N24
\vga_adpater_1|h_counter[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_counter[9]~28_combout\ = \vga_adpater_1|h_counter[8]~27\ $ (\vga_adpater_1|h_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_adpater_1|h_counter\(9),
	cin => \vga_adpater_1|h_counter[8]~27\,
	combout => \vga_adpater_1|h_counter[9]~28_combout\);

-- Location: FF_X49_Y68_N25
\vga_adpater_1|h_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_counter[9]~28_combout\,
	sclr => \vga_adpater_1|h_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_counter\(9));

-- Location: LCCOMB_X50_Y68_N14
\vga_adpater_1|h_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~15_combout\ = (\vga_adpater_1|h_state.BACK_PORCH~q\ & (\vga_adpater_1|h_counter\(9) & ((!\vga_adpater_1|LessThan5~0_combout\) # (!\vga_adpater_1|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_state.BACK_PORCH~q\,
	datab => \vga_adpater_1|LessThan4~0_combout\,
	datac => \vga_adpater_1|LessThan5~0_combout\,
	datad => \vga_adpater_1|h_counter\(9),
	combout => \vga_adpater_1|h_state~15_combout\);

-- Location: LCCOMB_X50_Y68_N6
\vga_adpater_1|h_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~20_combout\ = (!\vga_adpater_1|h_state~15_combout\ & (!\vga_adpater_1|h_state~17_combout\ & !\vga_adpater_1|h_state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|h_state~15_combout\,
	datac => \vga_adpater_1|h_state~17_combout\,
	datad => \vga_adpater_1|h_state~11_combout\,
	combout => \vga_adpater_1|h_state~20_combout\);

-- Location: LCCOMB_X50_Y68_N26
\vga_adpater_1|h_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~22_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|h_state~18_combout\ & (!\vga_adpater_1|h_state~15_combout\)) # (!\vga_adpater_1|h_state~18_combout\ & ((\vga_adpater_1|h_state.DISPLAY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \vga_adpater_1|h_state~15_combout\,
	datac => \vga_adpater_1|h_state.DISPLAY~q\,
	datad => \vga_adpater_1|h_state~18_combout\,
	combout => \vga_adpater_1|h_state~22_combout\);

-- Location: FF_X50_Y68_N27
\vga_adpater_1|h_state.DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_state.DISPLAY~q\);

-- Location: LCCOMB_X49_Y68_N30
\vga_adpater_1|h_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~12_combout\ = (\vga_adpater_1|h_counter\(7) & (\vga_adpater_1|h_counter\(8) & \vga_adpater_1|h_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|h_counter\(7),
	datac => \vga_adpater_1|h_counter\(8),
	datad => \vga_adpater_1|h_counter\(6),
	combout => \vga_adpater_1|h_state~12_combout\);

-- Location: LCCOMB_X50_Y68_N18
\vga_adpater_1|h_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~13_combout\ = (\vga_adpater_1|h_state~12_combout\ & ((\vga_adpater_1|h_counter\(5)) # ((\vga_adpater_1|h_counter\(4) & \vga_adpater_1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(4),
	datab => \vga_adpater_1|h_state~12_combout\,
	datac => \vga_adpater_1|h_counter\(5),
	datad => \vga_adpater_1|LessThan2~0_combout\,
	combout => \vga_adpater_1|h_state~13_combout\);

-- Location: LCCOMB_X50_Y68_N4
\vga_adpater_1|h_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~14_combout\ = (!\vga_adpater_1|h_state.DISPLAY~q\ & ((\vga_adpater_1|h_counter\(9)) # (\vga_adpater_1|h_state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(9),
	datac => \vga_adpater_1|h_state.DISPLAY~q\,
	datad => \vga_adpater_1|h_state~13_combout\,
	combout => \vga_adpater_1|h_state~14_combout\);

-- Location: LCCOMB_X50_Y68_N16
\vga_adpater_1|h_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~18_combout\ = (\vga_adpater_1|h_state~17_combout\) # ((\vga_adpater_1|h_state~15_combout\) # ((\vga_adpater_1|h_state~14_combout\) # (\vga_adpater_1|h_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_state~17_combout\,
	datab => \vga_adpater_1|h_state~15_combout\,
	datac => \vga_adpater_1|h_state~14_combout\,
	datad => \vga_adpater_1|h_state~11_combout\,
	combout => \vga_adpater_1|h_state~18_combout\);

-- Location: LCCOMB_X50_Y68_N24
\vga_adpater_1|h_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~21_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|h_state~18_combout\ & (\vga_adpater_1|h_state~20_combout\)) # (!\vga_adpater_1|h_state~18_combout\ & ((\vga_adpater_1|h_state.FRONT_PORCH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_state~20_combout\,
	datab => \KEY[3]~input_o\,
	datac => \vga_adpater_1|h_state.FRONT_PORCH~q\,
	datad => \vga_adpater_1|h_state~18_combout\,
	combout => \vga_adpater_1|h_state~21_combout\);

-- Location: FF_X50_Y68_N25
\vga_adpater_1|h_state.FRONT_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_state.FRONT_PORCH~q\);

-- Location: LCCOMB_X50_Y68_N12
\vga_adpater_1|h_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~16_combout\ = (\vga_adpater_1|h_counter\(5) & ((\vga_adpater_1|h_counter\(4)) # (\vga_adpater_1|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(4),
	datac => \vga_adpater_1|h_counter\(5),
	datad => \vga_adpater_1|LessThan2~0_combout\,
	combout => \vga_adpater_1|h_state~16_combout\);

-- Location: LCCOMB_X50_Y68_N30
\vga_adpater_1|h_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~17_combout\ = (\vga_adpater_1|h_state.FRONT_PORCH~q\ & ((\vga_adpater_1|h_counter\(9)) # ((\vga_adpater_1|h_state~12_combout\ & \vga_adpater_1|h_state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(9),
	datab => \vga_adpater_1|h_state.FRONT_PORCH~q\,
	datac => \vga_adpater_1|h_state~12_combout\,
	datad => \vga_adpater_1|h_state~16_combout\,
	combout => \vga_adpater_1|h_state~17_combout\);

-- Location: LCCOMB_X50_Y68_N8
\vga_adpater_1|h_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~23_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|h_state~17_combout\) # ((\vga_adpater_1|h_state.SYNC_PULSE~q\ & !\vga_adpater_1|h_state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_state~17_combout\,
	datab => \KEY[3]~input_o\,
	datac => \vga_adpater_1|h_state.SYNC_PULSE~q\,
	datad => \vga_adpater_1|h_state~18_combout\,
	combout => \vga_adpater_1|h_state~23_combout\);

-- Location: FF_X50_Y68_N9
\vga_adpater_1|h_state.SYNC_PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_state.SYNC_PULSE~q\);

-- Location: LCCOMB_X50_Y68_N2
\vga_adpater_1|h_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~10_combout\ = (\vga_adpater_1|h_state.SYNC_PULSE~q\ & ((\vga_adpater_1|h_counter\(6)) # ((\vga_adpater_1|h_counter\(8)) # (\vga_adpater_1|h_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_state.SYNC_PULSE~q\,
	datab => \vga_adpater_1|h_counter\(6),
	datac => \vga_adpater_1|h_counter\(8),
	datad => \vga_adpater_1|h_counter\(7),
	combout => \vga_adpater_1|h_state~10_combout\);

-- Location: LCCOMB_X49_Y68_N28
\vga_adpater_1|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|LessThan4~1_combout\ = (!\vga_adpater_1|h_counter\(4) & (!\vga_adpater_1|h_counter\(5) & (\vga_adpater_1|LessThan4~0_combout\ & !\vga_adpater_1|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(4),
	datab => \vga_adpater_1|h_counter\(5),
	datac => \vga_adpater_1|LessThan4~0_combout\,
	datad => \vga_adpater_1|LessThan2~0_combout\,
	combout => \vga_adpater_1|LessThan4~1_combout\);

-- Location: LCCOMB_X50_Y68_N28
\vga_adpater_1|h_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~11_combout\ = (\vga_adpater_1|h_counter\(9) & (\vga_adpater_1|h_state~10_combout\ & !\vga_adpater_1|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_counter\(9),
	datab => \vga_adpater_1|h_state~10_combout\,
	datad => \vga_adpater_1|LessThan4~1_combout\,
	combout => \vga_adpater_1|h_state~11_combout\);

-- Location: LCCOMB_X50_Y68_N22
\vga_adpater_1|h_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|h_state~19_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|h_state~11_combout\) # ((\vga_adpater_1|h_state.BACK_PORCH~q\ & !\vga_adpater_1|h_state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \vga_adpater_1|h_state~11_combout\,
	datac => \vga_adpater_1|h_state.BACK_PORCH~q\,
	datad => \vga_adpater_1|h_state~18_combout\,
	combout => \vga_adpater_1|h_state~19_combout\);

-- Location: FF_X50_Y68_N23
\vga_adpater_1|h_state.BACK_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|h_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_state.BACK_PORCH~q\);

-- Location: LCCOMB_X50_Y68_N0
\vga_adpater_1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Selector0~0_combout\ = (\vga_adpater_1|h_state.BACK_PORCH~q\) # (((\vga_adpater_1|h_state.FRONT_PORCH~q\ & \vga_adpater_1|h_sync~q\)) # (!\vga_adpater_1|h_state.DISPLAY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|h_state.BACK_PORCH~q\,
	datab => \vga_adpater_1|h_state.FRONT_PORCH~q\,
	datac => \vga_adpater_1|h_sync~q\,
	datad => \vga_adpater_1|h_state.DISPLAY~q\,
	combout => \vga_adpater_1|Selector0~0_combout\);

-- Location: FF_X50_Y68_N1
\vga_adpater_1|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Selector0~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|h_sync~q\);

-- Location: LCCOMB_X47_Y68_N8
\vga_adpater_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~0_combout\ = \vga_adpater_1|v_counter\(0) $ (VCC)
-- \vga_adpater_1|Add1~1\ = CARRY(\vga_adpater_1|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(0),
	datad => VCC,
	combout => \vga_adpater_1|Add1~0_combout\,
	cout => \vga_adpater_1|Add1~1\);

-- Location: LCCOMB_X48_Y68_N10
\vga_adpater_1|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~21_combout\ = (!\vga_adpater_1|v_state~22_combout\ & (\KEY[3]~input_o\ & \vga_adpater_1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|Add1~0_combout\,
	combout => \vga_adpater_1|Add1~21_combout\);

-- Location: LCCOMB_X48_Y68_N14
\vga_adpater_1|v_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_counter[0]~1_combout\ = (\vga_adpater_1|h_counter~30_combout\) # ((\vga_adpater_1|v_state~22_combout\ & \vga_adpater_1|v_state.BACK_PORCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \vga_adpater_1|v_state.BACK_PORCH~q\,
	datad => \vga_adpater_1|h_counter~30_combout\,
	combout => \vga_adpater_1|v_counter[0]~1_combout\);

-- Location: FF_X48_Y68_N11
\vga_adpater_1|v_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~21_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(0));

-- Location: LCCOMB_X47_Y68_N10
\vga_adpater_1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~2_combout\ = (\vga_adpater_1|v_counter\(1) & (!\vga_adpater_1|Add1~1\)) # (!\vga_adpater_1|v_counter\(1) & ((\vga_adpater_1|Add1~1\) # (GND)))
-- \vga_adpater_1|Add1~3\ = CARRY((!\vga_adpater_1|Add1~1\) # (!\vga_adpater_1|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(1),
	datad => VCC,
	cin => \vga_adpater_1|Add1~1\,
	combout => \vga_adpater_1|Add1~2_combout\,
	cout => \vga_adpater_1|Add1~3\);

-- Location: LCCOMB_X48_Y68_N4
\vga_adpater_1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~22_combout\ = (!\vga_adpater_1|v_state~22_combout\ & (\KEY[3]~input_o\ & \vga_adpater_1|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|Add1~2_combout\,
	combout => \vga_adpater_1|Add1~22_combout\);

-- Location: FF_X48_Y68_N5
\vga_adpater_1|v_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~22_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(1));

-- Location: LCCOMB_X47_Y68_N12
\vga_adpater_1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~4_combout\ = (\vga_adpater_1|v_counter\(2) & (\vga_adpater_1|Add1~3\ $ (GND))) # (!\vga_adpater_1|v_counter\(2) & (!\vga_adpater_1|Add1~3\ & VCC))
-- \vga_adpater_1|Add1~5\ = CARRY((\vga_adpater_1|v_counter\(2) & !\vga_adpater_1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(2),
	datad => VCC,
	cin => \vga_adpater_1|Add1~3\,
	combout => \vga_adpater_1|Add1~4_combout\,
	cout => \vga_adpater_1|Add1~5\);

-- Location: LCCOMB_X48_Y68_N12
\vga_adpater_1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~20_combout\ = (!\vga_adpater_1|v_state~22_combout\ & (\KEY[3]~input_o\ & \vga_adpater_1|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|Add1~4_combout\,
	combout => \vga_adpater_1|Add1~20_combout\);

-- Location: FF_X48_Y68_N13
\vga_adpater_1|v_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~20_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(2));

-- Location: LCCOMB_X47_Y68_N14
\vga_adpater_1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~6_combout\ = (\vga_adpater_1|v_counter\(3) & (!\vga_adpater_1|Add1~5\)) # (!\vga_adpater_1|v_counter\(3) & ((\vga_adpater_1|Add1~5\) # (GND)))
-- \vga_adpater_1|Add1~7\ = CARRY((!\vga_adpater_1|Add1~5\) # (!\vga_adpater_1|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(3),
	datad => VCC,
	cin => \vga_adpater_1|Add1~5\,
	combout => \vga_adpater_1|Add1~6_combout\,
	cout => \vga_adpater_1|Add1~7\);

-- Location: LCCOMB_X48_Y68_N20
\vga_adpater_1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~18_combout\ = (!\vga_adpater_1|v_state~22_combout\ & (\KEY[3]~input_o\ & \vga_adpater_1|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|Add1~6_combout\,
	combout => \vga_adpater_1|Add1~18_combout\);

-- Location: FF_X48_Y68_N21
\vga_adpater_1|v_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~18_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(3));

-- Location: LCCOMB_X47_Y68_N16
\vga_adpater_1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~8_combout\ = (\vga_adpater_1|v_counter\(4) & (\vga_adpater_1|Add1~7\ $ (GND))) # (!\vga_adpater_1|v_counter\(4) & (!\vga_adpater_1|Add1~7\ & VCC))
-- \vga_adpater_1|Add1~9\ = CARRY((\vga_adpater_1|v_counter\(4) & !\vga_adpater_1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(4),
	datad => VCC,
	cin => \vga_adpater_1|Add1~7\,
	combout => \vga_adpater_1|Add1~8_combout\,
	cout => \vga_adpater_1|Add1~9\);

-- Location: LCCOMB_X48_Y68_N8
\vga_adpater_1|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~23_combout\ = (\KEY[3]~input_o\ & (\vga_adpater_1|Add1~8_combout\ & !\vga_adpater_1|v_state~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \vga_adpater_1|Add1~8_combout\,
	datad => \vga_adpater_1|v_state~22_combout\,
	combout => \vga_adpater_1|Add1~23_combout\);

-- Location: FF_X48_Y68_N9
\vga_adpater_1|v_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~23_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(4));

-- Location: LCCOMB_X47_Y68_N18
\vga_adpater_1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~10_combout\ = (\vga_adpater_1|v_counter\(5) & (!\vga_adpater_1|Add1~9\)) # (!\vga_adpater_1|v_counter\(5) & ((\vga_adpater_1|Add1~9\) # (GND)))
-- \vga_adpater_1|Add1~11\ = CARRY((!\vga_adpater_1|Add1~9\) # (!\vga_adpater_1|v_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(5),
	datad => VCC,
	cin => \vga_adpater_1|Add1~9\,
	combout => \vga_adpater_1|Add1~10_combout\,
	cout => \vga_adpater_1|Add1~11\);

-- Location: LCCOMB_X48_Y68_N18
\vga_adpater_1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~24_combout\ = (!\vga_adpater_1|v_state~22_combout\ & (\KEY[3]~input_o\ & \vga_adpater_1|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|Add1~10_combout\,
	combout => \vga_adpater_1|Add1~24_combout\);

-- Location: FF_X48_Y68_N19
\vga_adpater_1|v_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~24_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(5));

-- Location: LCCOMB_X47_Y68_N20
\vga_adpater_1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~12_combout\ = (\vga_adpater_1|v_counter\(6) & (\vga_adpater_1|Add1~11\ $ (GND))) # (!\vga_adpater_1|v_counter\(6) & (!\vga_adpater_1|Add1~11\ & VCC))
-- \vga_adpater_1|Add1~13\ = CARRY((\vga_adpater_1|v_counter\(6) & !\vga_adpater_1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(6),
	datad => VCC,
	cin => \vga_adpater_1|Add1~11\,
	combout => \vga_adpater_1|Add1~12_combout\,
	cout => \vga_adpater_1|Add1~13\);

-- Location: LCCOMB_X48_Y68_N28
\vga_adpater_1|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~25_combout\ = (!\vga_adpater_1|v_state~22_combout\ & (\KEY[3]~input_o\ & \vga_adpater_1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|Add1~12_combout\,
	combout => \vga_adpater_1|Add1~25_combout\);

-- Location: FF_X48_Y68_N29
\vga_adpater_1|v_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~25_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(6));

-- Location: LCCOMB_X48_Y68_N26
\vga_adpater_1|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|LessThan9~1_combout\ = ((!\vga_adpater_1|v_counter\(6) & !\vga_adpater_1|v_counter\(5))) # (!\vga_adpater_1|v_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(6),
	datac => \vga_adpater_1|v_counter\(7),
	datad => \vga_adpater_1|v_counter\(5),
	combout => \vga_adpater_1|LessThan9~1_combout\);

-- Location: LCCOMB_X48_Y68_N24
\vga_adpater_1|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|LessThan9~0_combout\ = (!\vga_adpater_1|v_counter\(6) & (!\vga_adpater_1|v_counter\(4) & ((!\vga_adpater_1|v_counter\(3)) # (!\vga_adpater_1|v_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(2),
	datab => \vga_adpater_1|v_counter\(6),
	datac => \vga_adpater_1|v_counter\(4),
	datad => \vga_adpater_1|v_counter\(3),
	combout => \vga_adpater_1|LessThan9~0_combout\);

-- Location: LCCOMB_X48_Y68_N0
\vga_adpater_1|v_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~22_combout\ = (\vga_adpater_1|v_counter\(9) & ((\vga_adpater_1|v_counter\(8)) # ((!\vga_adpater_1|LessThan9~1_combout\ & !\vga_adpater_1|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(9),
	datab => \vga_adpater_1|v_counter\(8),
	datac => \vga_adpater_1|LessThan9~1_combout\,
	datad => \vga_adpater_1|LessThan9~0_combout\,
	combout => \vga_adpater_1|v_state~22_combout\);

-- Location: LCCOMB_X47_Y68_N22
\vga_adpater_1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~14_combout\ = (\vga_adpater_1|v_counter\(7) & (!\vga_adpater_1|Add1~13\)) # (!\vga_adpater_1|v_counter\(7) & ((\vga_adpater_1|Add1~13\) # (GND)))
-- \vga_adpater_1|Add1~15\ = CARRY((!\vga_adpater_1|Add1~13\) # (!\vga_adpater_1|v_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(7),
	datad => VCC,
	cin => \vga_adpater_1|Add1~13\,
	combout => \vga_adpater_1|Add1~14_combout\,
	cout => \vga_adpater_1|Add1~15\);

-- Location: LCCOMB_X48_Y68_N22
\vga_adpater_1|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~19_combout\ = (!\vga_adpater_1|v_state~22_combout\ & (\KEY[3]~input_o\ & \vga_adpater_1|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|Add1~14_combout\,
	combout => \vga_adpater_1|Add1~19_combout\);

-- Location: FF_X48_Y68_N23
\vga_adpater_1|v_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Add1~19_combout\,
	ena => \vga_adpater_1|v_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(7));

-- Location: LCCOMB_X47_Y68_N24
\vga_adpater_1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~16_combout\ = (\vga_adpater_1|v_counter\(8) & (\vga_adpater_1|Add1~15\ $ (GND))) # (!\vga_adpater_1|v_counter\(8) & (!\vga_adpater_1|Add1~15\ & VCC))
-- \vga_adpater_1|Add1~17\ = CARRY((\vga_adpater_1|v_counter\(8) & !\vga_adpater_1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(8),
	datad => VCC,
	cin => \vga_adpater_1|Add1~15\,
	combout => \vga_adpater_1|Add1~16_combout\,
	cout => \vga_adpater_1|Add1~17\);

-- Location: LCCOMB_X46_Y68_N24
\vga_adpater_1|v_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_counter~0_combout\ = (!\vga_adpater_1|v_state~22_combout\ & \KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state~22_combout\,
	datac => \KEY[3]~input_o\,
	combout => \vga_adpater_1|v_counter~0_combout\);

-- Location: LCCOMB_X47_Y68_N4
\vga_adpater_1|v_counter[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_counter[8]~2_combout\ = (\vga_adpater_1|v_counter[0]~1_combout\ & (\vga_adpater_1|Add1~16_combout\ & (\vga_adpater_1|v_counter~0_combout\))) # (!\vga_adpater_1|v_counter[0]~1_combout\ & (((\vga_adpater_1|v_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|Add1~16_combout\,
	datab => \vga_adpater_1|v_counter~0_combout\,
	datac => \vga_adpater_1|v_counter\(8),
	datad => \vga_adpater_1|v_counter[0]~1_combout\,
	combout => \vga_adpater_1|v_counter[8]~2_combout\);

-- Location: FF_X47_Y68_N5
\vga_adpater_1|v_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|v_counter[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(8));

-- Location: LCCOMB_X47_Y68_N26
\vga_adpater_1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Add1~26_combout\ = \vga_adpater_1|Add1~17\ $ (\vga_adpater_1|v_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_adpater_1|v_counter\(9),
	cin => \vga_adpater_1|Add1~17\,
	combout => \vga_adpater_1|Add1~26_combout\);

-- Location: LCCOMB_X47_Y68_N2
\vga_adpater_1|v_counter[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_counter[9]~3_combout\ = (\vga_adpater_1|v_counter[0]~1_combout\ & (\vga_adpater_1|Add1~26_combout\ & (\vga_adpater_1|v_counter~0_combout\))) # (!\vga_adpater_1|v_counter[0]~1_combout\ & (((\vga_adpater_1|v_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|Add1~26_combout\,
	datab => \vga_adpater_1|v_counter~0_combout\,
	datac => \vga_adpater_1|v_counter\(9),
	datad => \vga_adpater_1|v_counter[0]~1_combout\,
	combout => \vga_adpater_1|v_counter[9]~3_combout\);

-- Location: FF_X47_Y68_N3
\vga_adpater_1|v_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|v_counter[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_counter\(9));

-- Location: LCCOMB_X47_Y68_N30
\vga_adpater_1|v_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~14_combout\ = (\vga_adpater_1|v_counter\(3) & \vga_adpater_1|v_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_adpater_1|v_counter\(3),
	datad => \vga_adpater_1|v_counter\(7),
	combout => \vga_adpater_1|v_state~14_combout\);

-- Location: LCCOMB_X48_Y68_N2
\vga_adpater_1|v_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~16_combout\ = ((!\vga_adpater_1|v_counter\(5) & (!\vga_adpater_1|v_counter\(4) & !\vga_adpater_1|v_counter\(6)))) # (!\vga_adpater_1|v_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(7),
	datab => \vga_adpater_1|v_counter\(5),
	datac => \vga_adpater_1|v_counter\(4),
	datad => \vga_adpater_1|v_counter\(6),
	combout => \vga_adpater_1|v_state~16_combout\);

-- Location: LCCOMB_X47_Y68_N28
\vga_adpater_1|v_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~19_combout\ = (\vga_adpater_1|v_counter\(0)) # ((\vga_adpater_1|v_counter\(2)) # (\vga_adpater_1|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_counter\(0),
	datac => \vga_adpater_1|v_counter\(2),
	datad => \vga_adpater_1|v_counter\(1),
	combout => \vga_adpater_1|v_state~19_combout\);

-- Location: LCCOMB_X47_Y68_N6
\vga_adpater_1|v_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~20_combout\ = (\vga_adpater_1|v_counter\(8)) # (((\vga_adpater_1|v_state~14_combout\ & \vga_adpater_1|v_state~19_combout\)) # (!\vga_adpater_1|v_state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state~14_combout\,
	datab => \vga_adpater_1|v_counter\(8),
	datac => \vga_adpater_1|v_state~16_combout\,
	datad => \vga_adpater_1|v_state~19_combout\,
	combout => \vga_adpater_1|v_state~20_combout\);

-- Location: LCCOMB_X48_Y69_N30
\vga_adpater_1|v_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~18_combout\ = (\vga_adpater_1|v_counter\(9) & \vga_adpater_1|v_state.SYNC_PULSE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_adpater_1|v_counter\(9),
	datad => \vga_adpater_1|v_state.SYNC_PULSE~q\,
	combout => \vga_adpater_1|v_state~18_combout\);

-- Location: LCCOMB_X48_Y68_N30
\vga_adpater_1|v_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~15_combout\ = (\vga_adpater_1|v_counter\(2)) # ((\vga_adpater_1|v_counter\(1) & \vga_adpater_1|v_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(2),
	datac => \vga_adpater_1|v_counter\(1),
	datad => \vga_adpater_1|v_counter\(0),
	combout => \vga_adpater_1|v_state~15_combout\);

-- Location: LCCOMB_X47_Y68_N0
\vga_adpater_1|v_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~17_combout\ = (\vga_adpater_1|v_counter\(8)) # (((\vga_adpater_1|v_state~15_combout\ & \vga_adpater_1|v_state~14_combout\)) # (!\vga_adpater_1|v_state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state~15_combout\,
	datab => \vga_adpater_1|v_counter\(8),
	datac => \vga_adpater_1|v_state~14_combout\,
	datad => \vga_adpater_1|v_state~16_combout\,
	combout => \vga_adpater_1|v_state~17_combout\);

-- Location: LCCOMB_X48_Y69_N18
\vga_adpater_1|v_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~23_combout\ = (\vga_adpater_1|v_state~18_combout\ & (!\vga_adpater_1|v_state~17_combout\ & ((!\vga_adpater_1|v_state~22_combout\) # (!\vga_adpater_1|v_state.BACK_PORCH~q\)))) # (!\vga_adpater_1|v_state~18_combout\ & 
-- (((!\vga_adpater_1|v_state~22_combout\)) # (!\vga_adpater_1|v_state.BACK_PORCH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state~18_combout\,
	datab => \vga_adpater_1|v_state.BACK_PORCH~q\,
	datac => \vga_adpater_1|v_state~22_combout\,
	datad => \vga_adpater_1|v_state~17_combout\,
	combout => \vga_adpater_1|v_state~23_combout\);

-- Location: LCCOMB_X48_Y69_N16
\vga_adpater_1|v_state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~34_combout\ = (\vga_adpater_1|v_state~23_combout\ & (((!\vga_adpater_1|v_state.FRONT_PORCH~q\) # (!\vga_adpater_1|v_state~20_combout\)) # (!\vga_adpater_1|v_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(9),
	datab => \vga_adpater_1|v_state~20_combout\,
	datac => \vga_adpater_1|v_state.FRONT_PORCH~q\,
	datad => \vga_adpater_1|v_state~23_combout\,
	combout => \vga_adpater_1|v_state~34_combout\);

-- Location: LCCOMB_X48_Y69_N12
\vga_adpater_1|v_state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~30_combout\ = (\vga_adpater_1|v_state~22_combout\ & \vga_adpater_1|v_state.BACK_PORCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state~22_combout\,
	datac => \vga_adpater_1|v_state.BACK_PORCH~q\,
	combout => \vga_adpater_1|v_state~30_combout\);

-- Location: LCCOMB_X48_Y69_N14
\vga_adpater_1|v_state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~31_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|v_state~27_combout\ & (!\vga_adpater_1|v_state~30_combout\)) # (!\vga_adpater_1|v_state~27_combout\ & ((\vga_adpater_1|v_state.DISPLAY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state~30_combout\,
	datab => \KEY[3]~input_o\,
	datac => \vga_adpater_1|v_state.DISPLAY~q\,
	datad => \vga_adpater_1|v_state~27_combout\,
	combout => \vga_adpater_1|v_state~31_combout\);

-- Location: FF_X48_Y69_N15
\vga_adpater_1|v_state.DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|v_state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_state.DISPLAY~q\);

-- Location: LCCOMB_X48_Y68_N6
\vga_adpater_1|v_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~24_combout\ = (\vga_adpater_1|v_counter\(2) & (\vga_adpater_1|v_counter\(3) & (\vga_adpater_1|v_counter\(1) & \vga_adpater_1|v_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(2),
	datab => \vga_adpater_1|v_counter\(3),
	datac => \vga_adpater_1|v_counter\(1),
	datad => \vga_adpater_1|v_counter\(0),
	combout => \vga_adpater_1|v_state~24_combout\);

-- Location: LCCOMB_X48_Y68_N16
\vga_adpater_1|v_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~25_combout\ = (\vga_adpater_1|v_counter\(4) & (\vga_adpater_1|v_counter\(5) & (\vga_adpater_1|v_counter\(6) & \vga_adpater_1|v_state~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(4),
	datab => \vga_adpater_1|v_counter\(5),
	datac => \vga_adpater_1|v_counter\(6),
	datad => \vga_adpater_1|v_state~24_combout\,
	combout => \vga_adpater_1|v_state~25_combout\);

-- Location: LCCOMB_X48_Y69_N20
\vga_adpater_1|v_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~26_combout\ = (!\vga_adpater_1|v_state.DISPLAY~q\ & ((\vga_adpater_1|v_counter\(8)) # ((\vga_adpater_1|v_counter\(7)) # (\vga_adpater_1|v_state~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state.DISPLAY~q\,
	datab => \vga_adpater_1|v_counter\(8),
	datac => \vga_adpater_1|v_counter\(7),
	datad => \vga_adpater_1|v_state~25_combout\,
	combout => \vga_adpater_1|v_state~26_combout\);

-- Location: LCCOMB_X48_Y69_N10
\vga_adpater_1|v_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~27_combout\ = (\vga_adpater_1|v_state~21_combout\) # (((\vga_adpater_1|v_counter\(9) & \vga_adpater_1|v_state~26_combout\)) # (!\vga_adpater_1|v_state~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_counter\(9),
	datab => \vga_adpater_1|v_state~26_combout\,
	datac => \vga_adpater_1|v_state~21_combout\,
	datad => \vga_adpater_1|v_state~23_combout\,
	combout => \vga_adpater_1|v_state~27_combout\);

-- Location: LCCOMB_X48_Y69_N24
\vga_adpater_1|v_state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~29_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|v_state~27_combout\ & (\vga_adpater_1|v_state~34_combout\)) # (!\vga_adpater_1|v_state~27_combout\ & ((\vga_adpater_1|v_state.FRONT_PORCH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \vga_adpater_1|v_state~34_combout\,
	datac => \vga_adpater_1|v_state.FRONT_PORCH~q\,
	datad => \vga_adpater_1|v_state~27_combout\,
	combout => \vga_adpater_1|v_state~29_combout\);

-- Location: FF_X48_Y69_N25
\vga_adpater_1|v_state.FRONT_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|v_state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_state.FRONT_PORCH~q\);

-- Location: LCCOMB_X48_Y69_N8
\vga_adpater_1|v_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~21_combout\ = (\vga_adpater_1|v_state.FRONT_PORCH~q\ & (\vga_adpater_1|v_counter\(9) & \vga_adpater_1|v_state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state.FRONT_PORCH~q\,
	datac => \vga_adpater_1|v_counter\(9),
	datad => \vga_adpater_1|v_state~20_combout\,
	combout => \vga_adpater_1|v_state~21_combout\);

-- Location: LCCOMB_X48_Y69_N0
\vga_adpater_1|v_state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~32_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|v_state~27_combout\ & (\vga_adpater_1|v_state~21_combout\)) # (!\vga_adpater_1|v_state~27_combout\ & ((\vga_adpater_1|v_state.SYNC_PULSE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \vga_adpater_1|v_state~21_combout\,
	datac => \vga_adpater_1|v_state.SYNC_PULSE~q\,
	datad => \vga_adpater_1|v_state~27_combout\,
	combout => \vga_adpater_1|v_state~32_combout\);

-- Location: FF_X48_Y69_N1
\vga_adpater_1|v_state.SYNC_PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|v_state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_state.SYNC_PULSE~q\);

-- Location: LCCOMB_X48_Y69_N22
\vga_adpater_1|v_state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~33_combout\ = (\vga_adpater_1|v_state.SYNC_PULSE~q\ & (\vga_adpater_1|v_counter\(9) & \vga_adpater_1|v_state~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_adpater_1|v_state.SYNC_PULSE~q\,
	datac => \vga_adpater_1|v_counter\(9),
	datad => \vga_adpater_1|v_state~17_combout\,
	combout => \vga_adpater_1|v_state~33_combout\);

-- Location: LCCOMB_X48_Y69_N26
\vga_adpater_1|v_state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|v_state~28_combout\ = (\KEY[3]~input_o\ & ((\vga_adpater_1|v_state~27_combout\ & (\vga_adpater_1|v_state~33_combout\)) # (!\vga_adpater_1|v_state~27_combout\ & ((\vga_adpater_1|v_state.BACK_PORCH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state~33_combout\,
	datab => \KEY[3]~input_o\,
	datac => \vga_adpater_1|v_state.BACK_PORCH~q\,
	datad => \vga_adpater_1|v_state~27_combout\,
	combout => \vga_adpater_1|v_state~28_combout\);

-- Location: FF_X48_Y69_N27
\vga_adpater_1|v_state.BACK_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|v_state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_state.BACK_PORCH~q\);

-- Location: LCCOMB_X48_Y69_N28
\vga_adpater_1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|Selector5~0_combout\ = (\vga_adpater_1|v_state.BACK_PORCH~q\) # (((\vga_adpater_1|v_sync~q\ & \vga_adpater_1|v_state.FRONT_PORCH~q\)) # (!\vga_adpater_1|v_state.DISPLAY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|v_state.BACK_PORCH~q\,
	datab => \vga_adpater_1|v_state.DISPLAY~q\,
	datac => \vga_adpater_1|v_sync~q\,
	datad => \vga_adpater_1|v_state.FRONT_PORCH~q\,
	combout => \vga_adpater_1|Selector5~0_combout\);

-- Location: FF_X48_Y69_N29
\vga_adpater_1|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|Selector5~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|v_sync~q\);

-- Location: LCCOMB_X46_Y69_N12
\vga_adpater_1|row~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row~5_combout\ = (\KEY[3]~input_o\ & \vga_adpater_1|v_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|v_counter\(8),
	combout => \vga_adpater_1|row~5_combout\);

-- Location: LCCOMB_X46_Y69_N22
\vga_adpater_1|row[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row[4]~1_combout\ = (!\vga_adpater_1|v_state.DISPLAY~q\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datad => \vga_adpater_1|v_state.DISPLAY~q\,
	combout => \vga_adpater_1|row[4]~1_combout\);

-- Location: FF_X46_Y69_N13
\vga_adpater_1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|row~5_combout\,
	ena => \vga_adpater_1|row[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|row\(8));

-- Location: LCCOMB_X46_Y69_N4
\vga_adpater_1|row[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row[31]~7_combout\ = ((\vga_adpater_1|row\(31)) # (!\vga_adpater_1|v_state.DISPLAY~q\)) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \vga_adpater_1|row\(31),
	datad => \vga_adpater_1|v_state.DISPLAY~q\,
	combout => \vga_adpater_1|row[31]~7_combout\);

-- Location: FF_X46_Y69_N5
\vga_adpater_1|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|row[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|row\(31));

-- Location: LCCOMB_X46_Y69_N30
\vga_adpater_1|row~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row~6_combout\ = (\KEY[3]~input_o\ & \vga_adpater_1|v_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datad => \vga_adpater_1|v_counter\(9),
	combout => \vga_adpater_1|row~6_combout\);

-- Location: FF_X46_Y69_N31
\vga_adpater_1|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|row~6_combout\,
	ena => \vga_adpater_1|row[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|row\(9));

-- Location: LCCOMB_X47_Y69_N28
\vga_adpater_1|row~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row~4_combout\ = (\KEY[3]~input_o\ & \vga_adpater_1|v_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datad => \vga_adpater_1|v_counter\(7),
	combout => \vga_adpater_1|row~4_combout\);

-- Location: LCCOMB_X46_Y69_N10
\vga_adpater_1|row[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row[7]~feeder_combout\ = \vga_adpater_1|row~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_adpater_1|row~4_combout\,
	combout => \vga_adpater_1|row[7]~feeder_combout\);

-- Location: FF_X46_Y69_N11
\vga_adpater_1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|row[7]~feeder_combout\,
	ena => \vga_adpater_1|row[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|row\(7));

-- Location: LCCOMB_X47_Y69_N2
\vga_adpater_1|row~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row~0_combout\ = (\KEY[3]~input_o\ & \vga_adpater_1|v_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|v_counter\(4),
	combout => \vga_adpater_1|row~0_combout\);

-- Location: LCCOMB_X46_Y69_N28
\vga_adpater_1|row[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row[4]~feeder_combout\ = \vga_adpater_1|row~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_adpater_1|row~0_combout\,
	combout => \vga_adpater_1|row[4]~feeder_combout\);

-- Location: FF_X46_Y69_N29
\vga_adpater_1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|row[4]~feeder_combout\,
	ena => \vga_adpater_1|row[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|row\(4));

-- Location: LCCOMB_X47_Y69_N30
\vga_adpater_1|row~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row~3_combout\ = (\KEY[3]~input_o\ & \vga_adpater_1|v_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \vga_adpater_1|v_counter\(6),
	combout => \vga_adpater_1|row~3_combout\);

-- Location: FF_X46_Y69_N9
\vga_adpater_1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	asdata => \vga_adpater_1|row~3_combout\,
	sload => VCC,
	ena => \vga_adpater_1|row[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|row\(6));

-- Location: LCCOMB_X47_Y69_N24
\vga_adpater_1|row~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row~2_combout\ = (\KEY[3]~input_o\ & \vga_adpater_1|v_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datad => \vga_adpater_1|v_counter\(5),
	combout => \vga_adpater_1|row~2_combout\);

-- Location: LCCOMB_X46_Y69_N18
\vga_adpater_1|row[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|row[5]~feeder_combout\ = \vga_adpater_1|row~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_adpater_1|row~2_combout\,
	combout => \vga_adpater_1|row[5]~feeder_combout\);

-- Location: FF_X46_Y69_N19
\vga_adpater_1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|row[5]~feeder_combout\,
	ena => \vga_adpater_1|row[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|row\(5));

-- Location: LCCOMB_X46_Y69_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!\vga_adpater_1|row\(5)) # (!\vga_adpater_1|row\(6))) # (!\vga_adpater_1|row\(4))) # (!\vga_adpater_1|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|row\(7),
	datab => \vga_adpater_1|row\(4),
	datac => \vga_adpater_1|row\(6),
	datad => \vga_adpater_1|row\(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y69_N20
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!\vga_adpater_1|row\(8) & (!\vga_adpater_1|row\(9) & \LessThan0~0_combout\))) # (!\vga_adpater_1|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_adpater_1|row\(8),
	datab => \vga_adpater_1|row\(31),
	datac => \vga_adpater_1|row\(9),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y69_N12
\VGA_R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]~0_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[0]~0_combout\);

-- Location: LCCOMB_X47_Y69_N16
\vga_adpater_1|vga_timing~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_adpater_1|vga_timing~0_combout\ = (!\vga_adpater_1|v_state.DISPLAY~q\ & !\vga_adpater_1|h_state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_adpater_1|v_state.DISPLAY~q\,
	datad => \vga_adpater_1|h_state.DISPLAY~q\,
	combout => \vga_adpater_1|vga_timing~0_combout\);

-- Location: FF_X47_Y69_N17
\vga_adpater_1|display_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \vga_adpater_1|vga_timing~0_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_adpater_1|display_en~q\);

-- Location: FF_X39_Y69_N13
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[0]~0_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N18
\VGA_R[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[1]~1_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[1]~1_combout\);

-- Location: FF_X39_Y69_N19
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[1]~1_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N8
\VGA_R[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[2]~2_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[2]~2_combout\);

-- Location: FF_X39_Y69_N9
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[2]~2_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N6
\VGA_R[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[3]~3_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[3]~3_combout\);

-- Location: FF_X39_Y69_N7
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[3]~3_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N16
\VGA_R[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[4]~4_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[4]~4_combout\);

-- Location: FF_X39_Y69_N17
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[4]~4_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N2
\VGA_R[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]~5_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[5]~5_combout\);

-- Location: FF_X39_Y69_N3
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[5]~5_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N24
\VGA_R[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]~6_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[6]~6_combout\);

-- Location: FF_X39_Y69_N25
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[6]~6_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N22
\VGA_R[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]~7_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_R[7]~7_combout\);

-- Location: FF_X39_Y69_N23
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_R[7]~7_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: FF_X39_Y69_N21
\VGA_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \LessThan0~1_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[0]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N10
\VGA_B[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[1]~reg0feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_B[1]~reg0feeder_combout\);

-- Location: FF_X39_Y69_N11
\VGA_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_B[1]~reg0feeder_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[1]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N4
\VGA_B[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[2]~reg0feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_B[2]~reg0feeder_combout\);

-- Location: FF_X39_Y69_N5
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_B[2]~reg0feeder_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N30
\VGA_B[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[3]~reg0feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_B[3]~reg0feeder_combout\);

-- Location: FF_X39_Y69_N31
\VGA_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_B[3]~reg0feeder_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[3]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N0
\VGA_B[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[4]~reg0feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_B[4]~reg0feeder_combout\);

-- Location: FF_X39_Y69_N1
\VGA_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_B[4]~reg0feeder_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[4]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N14
\VGA_B[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[5]~reg0feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_B[5]~reg0feeder_combout\);

-- Location: FF_X39_Y69_N15
\VGA_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_B[5]~reg0feeder_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[5]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N28
\VGA_B[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[6]~reg0feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_B[6]~reg0feeder_combout\);

-- Location: FF_X39_Y69_N29
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_B[6]~reg0feeder_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: LCCOMB_X39_Y69_N26
\VGA_B[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[7]~reg0feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \VGA_B[7]~reg0feeder_combout\);

-- Location: FF_X39_Y69_N27
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~inputclkctrl_outclk\,
	d => \VGA_B[7]~reg0feeder_combout\,
	ena => \vga_adpater_1|display_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_VGA_BLANK_N <= \VGA_BLANK_N~output_o\;

ww_VGA_SYNC_N <= \VGA_SYNC_N~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;
END structure;


