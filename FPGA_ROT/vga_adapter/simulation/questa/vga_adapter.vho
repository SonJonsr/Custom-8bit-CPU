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

-- DATE "01/22/2026 14:50:59"

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
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	vga_adapter IS
    PORT (
	pixel_clk : IN std_logic;
	reset_n : IN std_logic;
	h_sync : OUT std_logic;
	v_sync : OUT std_logic;
	blank_n : OUT std_logic;
	sync_n : OUT std_logic;
	column : OUT STD.STANDARD.integer;
	row : OUT STD.STANDARD.integer
	);
END vga_adapter;

-- Design Ports Information
-- h_sync	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blank_n	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sync_n	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[2]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[3]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[4]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[5]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[6]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[7]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[8]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[9]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[10]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[12]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[13]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[14]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[16]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[17]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[18]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[19]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[20]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[21]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[22]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[23]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[24]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[25]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[26]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[27]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[28]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[29]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[30]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[31]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[4]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[5]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[6]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[7]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[8]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[9]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[10]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[12]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[13]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[14]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[15]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[16]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[17]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[18]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[19]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[20]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[21]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[22]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[23]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[24]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[25]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[26]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[27]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[28]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[29]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[30]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[31]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_adapter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_blank_n : std_logic;
SIGNAL ww_sync_n : std_logic;
SIGNAL ww_column : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(31 DOWNTO 0);
SIGNAL \pixel_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \h_sync~output_o\ : std_logic;
SIGNAL \v_sync~output_o\ : std_logic;
SIGNAL \blank_n~output_o\ : std_logic;
SIGNAL \sync_n~output_o\ : std_logic;
SIGNAL \column[0]~output_o\ : std_logic;
SIGNAL \column[1]~output_o\ : std_logic;
SIGNAL \column[2]~output_o\ : std_logic;
SIGNAL \column[3]~output_o\ : std_logic;
SIGNAL \column[4]~output_o\ : std_logic;
SIGNAL \column[5]~output_o\ : std_logic;
SIGNAL \column[6]~output_o\ : std_logic;
SIGNAL \column[7]~output_o\ : std_logic;
SIGNAL \column[8]~output_o\ : std_logic;
SIGNAL \column[9]~output_o\ : std_logic;
SIGNAL \column[10]~output_o\ : std_logic;
SIGNAL \column[11]~output_o\ : std_logic;
SIGNAL \column[12]~output_o\ : std_logic;
SIGNAL \column[13]~output_o\ : std_logic;
SIGNAL \column[14]~output_o\ : std_logic;
SIGNAL \column[15]~output_o\ : std_logic;
SIGNAL \column[16]~output_o\ : std_logic;
SIGNAL \column[17]~output_o\ : std_logic;
SIGNAL \column[18]~output_o\ : std_logic;
SIGNAL \column[19]~output_o\ : std_logic;
SIGNAL \column[20]~output_o\ : std_logic;
SIGNAL \column[21]~output_o\ : std_logic;
SIGNAL \column[22]~output_o\ : std_logic;
SIGNAL \column[23]~output_o\ : std_logic;
SIGNAL \column[24]~output_o\ : std_logic;
SIGNAL \column[25]~output_o\ : std_logic;
SIGNAL \column[26]~output_o\ : std_logic;
SIGNAL \column[27]~output_o\ : std_logic;
SIGNAL \column[28]~output_o\ : std_logic;
SIGNAL \column[29]~output_o\ : std_logic;
SIGNAL \column[30]~output_o\ : std_logic;
SIGNAL \column[31]~output_o\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[3]~output_o\ : std_logic;
SIGNAL \row[4]~output_o\ : std_logic;
SIGNAL \row[5]~output_o\ : std_logic;
SIGNAL \row[6]~output_o\ : std_logic;
SIGNAL \row[7]~output_o\ : std_logic;
SIGNAL \row[8]~output_o\ : std_logic;
SIGNAL \row[9]~output_o\ : std_logic;
SIGNAL \row[10]~output_o\ : std_logic;
SIGNAL \row[11]~output_o\ : std_logic;
SIGNAL \row[12]~output_o\ : std_logic;
SIGNAL \row[13]~output_o\ : std_logic;
SIGNAL \row[14]~output_o\ : std_logic;
SIGNAL \row[15]~output_o\ : std_logic;
SIGNAL \row[16]~output_o\ : std_logic;
SIGNAL \row[17]~output_o\ : std_logic;
SIGNAL \row[18]~output_o\ : std_logic;
SIGNAL \row[19]~output_o\ : std_logic;
SIGNAL \row[20]~output_o\ : std_logic;
SIGNAL \row[21]~output_o\ : std_logic;
SIGNAL \row[22]~output_o\ : std_logic;
SIGNAL \row[23]~output_o\ : std_logic;
SIGNAL \row[24]~output_o\ : std_logic;
SIGNAL \row[25]~output_o\ : std_logic;
SIGNAL \row[26]~output_o\ : std_logic;
SIGNAL \row[27]~output_o\ : std_logic;
SIGNAL \row[28]~output_o\ : std_logic;
SIGNAL \row[29]~output_o\ : std_logic;
SIGNAL \row[30]~output_o\ : std_logic;
SIGNAL \row[31]~output_o\ : std_logic;
SIGNAL \pixel_clk~input_o\ : std_logic;
SIGNAL \pixel_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \h_counter[0]~10_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \h_counter~12_combout\ : std_logic;
SIGNAL \h_counter[0]~11\ : std_logic;
SIGNAL \h_counter[1]~13_combout\ : std_logic;
SIGNAL \h_counter[1]~14\ : std_logic;
SIGNAL \h_counter[2]~15_combout\ : std_logic;
SIGNAL \h_counter[2]~16\ : std_logic;
SIGNAL \h_counter[3]~17_combout\ : std_logic;
SIGNAL \h_counter[3]~18\ : std_logic;
SIGNAL \h_counter[4]~19_combout\ : std_logic;
SIGNAL \h_counter[4]~20\ : std_logic;
SIGNAL \h_counter[5]~21_combout\ : std_logic;
SIGNAL \h_counter[5]~22\ : std_logic;
SIGNAL \h_counter[6]~23_combout\ : std_logic;
SIGNAL \h_counter[6]~24\ : std_logic;
SIGNAL \h_counter[7]~25_combout\ : std_logic;
SIGNAL \h_counter[7]~26\ : std_logic;
SIGNAL \h_counter[8]~27_combout\ : std_logic;
SIGNAL \h_counter[8]~28\ : std_logic;
SIGNAL \h_counter[9]~29_combout\ : std_logic;
SIGNAL \h_state~12_combout\ : std_logic;
SIGNAL \h_state~13_combout\ : std_logic;
SIGNAL \h_state~14_combout\ : std_logic;
SIGNAL \h_state~19_combout\ : std_logic;
SIGNAL \h_state~21_combout\ : std_logic;
SIGNAL \h_state~22_combout\ : std_logic;
SIGNAL \h_state.FRONT_PORCH~q\ : std_logic;
SIGNAL \h_state~16_combout\ : std_logic;
SIGNAL \h_state~17_combout\ : std_logic;
SIGNAL \h_state~18_combout\ : std_logic;
SIGNAL \h_state~24_combout\ : std_logic;
SIGNAL \h_state.SYNC_PULSE~q\ : std_logic;
SIGNAL \h_state~10_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \h_state~11_combout\ : std_logic;
SIGNAL \h_state~20_combout\ : std_logic;
SIGNAL \h_state.BACK_PORCH~q\ : std_logic;
SIGNAL \h_state~15_combout\ : std_logic;
SIGNAL \h_state~23_combout\ : std_logic;
SIGNAL \h_state.DISPLAY~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \h_sync~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \v_state~29_combout\ : std_logic;
SIGNAL \v_state~30_combout\ : std_logic;
SIGNAL \v_state.DISPLAY~q\ : std_logic;
SIGNAL \v_state~22_combout\ : std_logic;
SIGNAL \v_state~23_combout\ : std_logic;
SIGNAL \v_state~24_combout\ : std_logic;
SIGNAL \v_state~16_combout\ : std_logic;
SIGNAL \v_state~12_combout\ : std_logic;
SIGNAL \v_state~14_combout\ : std_logic;
SIGNAL \v_state~13_combout\ : std_logic;
SIGNAL \v_state~15_combout\ : std_logic;
SIGNAL \v_state~21_combout\ : std_logic;
SIGNAL \v_state~25_combout\ : std_logic;
SIGNAL \v_state~31_combout\ : std_logic;
SIGNAL \v_state.SYNC_PULSE~q\ : std_logic;
SIGNAL \v_state~32_combout\ : std_logic;
SIGNAL \v_state~26_combout\ : std_logic;
SIGNAL \v_state.BACK_PORCH~q\ : std_logic;
SIGNAL \v_counter[0]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \v_counter[8]~2_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \v_state~20_combout\ : std_logic;
SIGNAL \v_counter~1_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \v_counter[9]~3_combout\ : std_logic;
SIGNAL \v_state~17_combout\ : std_logic;
SIGNAL \v_state~18_combout\ : std_logic;
SIGNAL \v_state~19_combout\ : std_logic;
SIGNAL \v_state~27_combout\ : std_logic;
SIGNAL \v_state~28_combout\ : std_logic;
SIGNAL \v_state.FRONT_PORCH~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \v_sync~reg0_q\ : std_logic;
SIGNAL \column~0_combout\ : std_logic;
SIGNAL \column[0]~reg0_q\ : std_logic;
SIGNAL \column~1_combout\ : std_logic;
SIGNAL \column[5]~2_combout\ : std_logic;
SIGNAL \column[1]~reg0_q\ : std_logic;
SIGNAL \column~3_combout\ : std_logic;
SIGNAL \column[2]~reg0_q\ : std_logic;
SIGNAL \column~4_combout\ : std_logic;
SIGNAL \column[3]~reg0_q\ : std_logic;
SIGNAL \column~5_combout\ : std_logic;
SIGNAL \column[4]~reg0_q\ : std_logic;
SIGNAL \column~6_combout\ : std_logic;
SIGNAL \column[5]~reg0_q\ : std_logic;
SIGNAL \column~7_combout\ : std_logic;
SIGNAL \column[6]~reg0_q\ : std_logic;
SIGNAL \column~8_combout\ : std_logic;
SIGNAL \column[7]~reg0_q\ : std_logic;
SIGNAL \column~9_combout\ : std_logic;
SIGNAL \column[8]~reg0_q\ : std_logic;
SIGNAL \column~10_combout\ : std_logic;
SIGNAL \column[9]~reg0_q\ : std_logic;
SIGNAL \column[31]~11_combout\ : std_logic;
SIGNAL \column[31]~reg0_q\ : std_logic;
SIGNAL \row~0_combout\ : std_logic;
SIGNAL \row[0]~reg0_q\ : std_logic;
SIGNAL \row~1_combout\ : std_logic;
SIGNAL \row[8]~2_combout\ : std_logic;
SIGNAL \row[1]~reg0_q\ : std_logic;
SIGNAL \row~3_combout\ : std_logic;
SIGNAL \row[2]~reg0_q\ : std_logic;
SIGNAL \row~4_combout\ : std_logic;
SIGNAL \row[3]~reg0_q\ : std_logic;
SIGNAL \row~5_combout\ : std_logic;
SIGNAL \row[4]~reg0_q\ : std_logic;
SIGNAL \row~6_combout\ : std_logic;
SIGNAL \row[5]~reg0_q\ : std_logic;
SIGNAL \row~7_combout\ : std_logic;
SIGNAL \row[6]~reg0_q\ : std_logic;
SIGNAL \row~8_combout\ : std_logic;
SIGNAL \row[7]~reg0_q\ : std_logic;
SIGNAL \row~9_combout\ : std_logic;
SIGNAL \row[8]~reg0_q\ : std_logic;
SIGNAL \row~10_combout\ : std_logic;
SIGNAL \row[9]~reg0_q\ : std_logic;
SIGNAL \row[31]~11_combout\ : std_logic;
SIGNAL \row[31]~reg0_q\ : std_logic;
SIGNAL v_counter : std_logic_vector(9 DOWNTO 0);
SIGNAL h_counter : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_row[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_row[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_column[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_column[0]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_pixel_clk <= pixel_clk;
ww_reset_n <= reset_n;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
blank_n <= ww_blank_n;
sync_n <= ww_sync_n;
column <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_column));
row <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_row));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pixel_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pixel_clk~input_o\);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_row[31]~reg0_q\ <= NOT \row[31]~reg0_q\;
\ALT_INV_row[0]~reg0_q\ <= NOT \row[0]~reg0_q\;
\ALT_INV_column[31]~reg0_q\ <= NOT \column[31]~reg0_q\;
\ALT_INV_column[0]~reg0_q\ <= NOT \column[0]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y57_N16
\h_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_sync~reg0_q\,
	devoe => ww_devoe,
	o => \h_sync~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\v_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v_sync~reg0_q\,
	devoe => ww_devoe,
	o => \v_sync~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\blank_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \blank_n~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\sync_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sync_n~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\column[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_column[0]~reg0_q\,
	devoe => ww_devoe,
	o => \column[0]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\column[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[1]~reg0_q\,
	devoe => ww_devoe,
	o => \column[1]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\column[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[2]~reg0_q\,
	devoe => ww_devoe,
	o => \column[2]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\column[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[3]~reg0_q\,
	devoe => ww_devoe,
	o => \column[3]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\column[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[4]~reg0_q\,
	devoe => ww_devoe,
	o => \column[4]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\column[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[5]~reg0_q\,
	devoe => ww_devoe,
	o => \column[5]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\column[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[6]~reg0_q\,
	devoe => ww_devoe,
	o => \column[6]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\column[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[7]~reg0_q\,
	devoe => ww_devoe,
	o => \column[7]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\column[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[8]~reg0_q\,
	devoe => ww_devoe,
	o => \column[8]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\column[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[9]~reg0_q\,
	devoe => ww_devoe,
	o => \column[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\column[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[10]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\column[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[11]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\column[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[12]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\column[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\column[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[14]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\column[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[15]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\column[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[16]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\column[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[17]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\column[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[18]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\column[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[19]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\column[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[20]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\column[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[21]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\column[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[22]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\column[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[23]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\column[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[24]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\column[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[25]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\column[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[26]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\column[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[27]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\column[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[28]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\column[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[29]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\column[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[30]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\column[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_column[31]~reg0_q\,
	devoe => ww_devoe,
	o => \column[31]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\row[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_row[0]~reg0_q\,
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\row[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[1]~reg0_q\,
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\row[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[2]~reg0_q\,
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\row[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[3]~reg0_q\,
	devoe => ww_devoe,
	o => \row[3]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\row[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[4]~reg0_q\,
	devoe => ww_devoe,
	o => \row[4]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\row[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[5]~reg0_q\,
	devoe => ww_devoe,
	o => \row[5]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\row[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[6]~reg0_q\,
	devoe => ww_devoe,
	o => \row[6]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\row[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[7]~reg0_q\,
	devoe => ww_devoe,
	o => \row[7]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\row[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[8]~reg0_q\,
	devoe => ww_devoe,
	o => \row[8]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\row[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[9]~reg0_q\,
	devoe => ww_devoe,
	o => \row[9]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\row[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[10]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\row[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[11]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\row[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\row[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[13]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\row[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[14]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\row[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[15]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\row[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[16]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\row[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[17]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\row[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[18]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\row[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[19]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\row[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[20]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\row[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[21]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\row[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[22]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\row[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[23]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\row[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[24]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\row[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[25]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\row[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[26]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\row[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[27]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\row[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[28]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\row[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[29]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\row[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[30]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\row[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_row[31]~reg0_q\,
	devoe => ww_devoe,
	o => \row[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\pixel_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_clk,
	o => \pixel_clk~input_o\);

-- Location: CLKCTRL_G2
\pixel_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pixel_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pixel_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X111_Y50_N6
\h_counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[0]~10_combout\ = h_counter(0) $ (VCC)
-- \h_counter[0]~11\ = CARRY(h_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(0),
	datad => VCC,
	combout => \h_counter[0]~10_combout\,
	cout => \h_counter[0]~11\);

-- Location: IOIBUF_X115_Y51_N1
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X111_Y50_N2
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (h_counter(0) & (h_counter(1) & (h_counter(2) & h_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(0),
	datab => h_counter(1),
	datac => h_counter(2),
	datad => h_counter(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X111_Y50_N30
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (((!\LessThan2~0_combout\) # (!h_counter(4))) # (!h_counter(6))) # (!h_counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(5),
	datab => h_counter(6),
	datac => h_counter(4),
	datad => \LessThan2~0_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X111_Y50_N4
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!h_counter(8) & !h_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(8),
	datad => h_counter(7),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X111_Y50_N28
\h_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter~12_combout\ = ((h_counter(9) & ((!\LessThan4~0_combout\) # (!\LessThan5~0_combout\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => h_counter(9),
	datac => \LessThan5~0_combout\,
	datad => \LessThan4~0_combout\,
	combout => \h_counter~12_combout\);

-- Location: FF_X111_Y50_N7
\h_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[0]~10_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(0));

-- Location: LCCOMB_X111_Y50_N8
\h_counter[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[1]~13_combout\ = (h_counter(1) & (!\h_counter[0]~11\)) # (!h_counter(1) & ((\h_counter[0]~11\) # (GND)))
-- \h_counter[1]~14\ = CARRY((!\h_counter[0]~11\) # (!h_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(1),
	datad => VCC,
	cin => \h_counter[0]~11\,
	combout => \h_counter[1]~13_combout\,
	cout => \h_counter[1]~14\);

-- Location: FF_X111_Y50_N9
\h_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[1]~13_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(1));

-- Location: LCCOMB_X111_Y50_N10
\h_counter[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[2]~15_combout\ = (h_counter(2) & (\h_counter[1]~14\ $ (GND))) # (!h_counter(2) & (!\h_counter[1]~14\ & VCC))
-- \h_counter[2]~16\ = CARRY((h_counter(2) & !\h_counter[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_counter(2),
	datad => VCC,
	cin => \h_counter[1]~14\,
	combout => \h_counter[2]~15_combout\,
	cout => \h_counter[2]~16\);

-- Location: FF_X111_Y50_N11
\h_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[2]~15_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(2));

-- Location: LCCOMB_X111_Y50_N12
\h_counter[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[3]~17_combout\ = (h_counter(3) & (!\h_counter[2]~16\)) # (!h_counter(3) & ((\h_counter[2]~16\) # (GND)))
-- \h_counter[3]~18\ = CARRY((!\h_counter[2]~16\) # (!h_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_counter(3),
	datad => VCC,
	cin => \h_counter[2]~16\,
	combout => \h_counter[3]~17_combout\,
	cout => \h_counter[3]~18\);

-- Location: FF_X111_Y50_N13
\h_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[3]~17_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(3));

-- Location: LCCOMB_X111_Y50_N14
\h_counter[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[4]~19_combout\ = (h_counter(4) & (\h_counter[3]~18\ $ (GND))) # (!h_counter(4) & (!\h_counter[3]~18\ & VCC))
-- \h_counter[4]~20\ = CARRY((h_counter(4) & !\h_counter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_counter(4),
	datad => VCC,
	cin => \h_counter[3]~18\,
	combout => \h_counter[4]~19_combout\,
	cout => \h_counter[4]~20\);

-- Location: FF_X111_Y50_N15
\h_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[4]~19_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(4));

-- Location: LCCOMB_X111_Y50_N16
\h_counter[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[5]~21_combout\ = (h_counter(5) & (!\h_counter[4]~20\)) # (!h_counter(5) & ((\h_counter[4]~20\) # (GND)))
-- \h_counter[5]~22\ = CARRY((!\h_counter[4]~20\) # (!h_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_counter(5),
	datad => VCC,
	cin => \h_counter[4]~20\,
	combout => \h_counter[5]~21_combout\,
	cout => \h_counter[5]~22\);

-- Location: FF_X111_Y50_N17
\h_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[5]~21_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(5));

-- Location: LCCOMB_X111_Y50_N18
\h_counter[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[6]~23_combout\ = (h_counter(6) & (\h_counter[5]~22\ $ (GND))) # (!h_counter(6) & (!\h_counter[5]~22\ & VCC))
-- \h_counter[6]~24\ = CARRY((h_counter(6) & !\h_counter[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(6),
	datad => VCC,
	cin => \h_counter[5]~22\,
	combout => \h_counter[6]~23_combout\,
	cout => \h_counter[6]~24\);

-- Location: FF_X111_Y50_N19
\h_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[6]~23_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(6));

-- Location: LCCOMB_X111_Y50_N20
\h_counter[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[7]~25_combout\ = (h_counter(7) & (!\h_counter[6]~24\)) # (!h_counter(7) & ((\h_counter[6]~24\) # (GND)))
-- \h_counter[7]~26\ = CARRY((!\h_counter[6]~24\) # (!h_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_counter(7),
	datad => VCC,
	cin => \h_counter[6]~24\,
	combout => \h_counter[7]~25_combout\,
	cout => \h_counter[7]~26\);

-- Location: FF_X111_Y50_N21
\h_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[7]~25_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(7));

-- Location: LCCOMB_X111_Y50_N22
\h_counter[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[8]~27_combout\ = (h_counter(8) & (\h_counter[7]~26\ $ (GND))) # (!h_counter(8) & (!\h_counter[7]~26\ & VCC))
-- \h_counter[8]~28\ = CARRY((h_counter(8) & !\h_counter[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(8),
	datad => VCC,
	cin => \h_counter[7]~26\,
	combout => \h_counter[8]~27_combout\,
	cout => \h_counter[8]~28\);

-- Location: FF_X111_Y50_N23
\h_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[8]~27_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(8));

-- Location: LCCOMB_X111_Y50_N24
\h_counter[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_counter[9]~29_combout\ = \h_counter[8]~28\ $ (h_counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => h_counter(9),
	cin => \h_counter[8]~28\,
	combout => \h_counter[9]~29_combout\);

-- Location: FF_X111_Y50_N25
\h_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_counter[9]~29_combout\,
	sclr => \h_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_counter(9));

-- Location: LCCOMB_X111_Y50_N0
\h_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~12_combout\ = (h_counter(8) & (h_counter(6) & h_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(8),
	datab => h_counter(6),
	datad => h_counter(7),
	combout => \h_state~12_combout\);

-- Location: LCCOMB_X112_Y50_N24
\h_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~13_combout\ = (\h_state~12_combout\ & ((h_counter(5)) # ((h_counter(4) & \LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(5),
	datab => h_counter(4),
	datac => \h_state~12_combout\,
	datad => \LessThan2~0_combout\,
	combout => \h_state~13_combout\);

-- Location: LCCOMB_X112_Y50_N18
\h_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~14_combout\ = (!\h_state.DISPLAY~q\ & ((h_counter(9)) # (\h_state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state.DISPLAY~q\,
	datab => h_counter(9),
	datad => \h_state~13_combout\,
	combout => \h_state~14_combout\);

-- Location: LCCOMB_X112_Y50_N28
\h_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~19_combout\ = (\h_state~15_combout\) # ((\h_state~14_combout\) # ((\h_state~18_combout\) # (\h_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state~15_combout\,
	datab => \h_state~14_combout\,
	datac => \h_state~18_combout\,
	datad => \h_state~11_combout\,
	combout => \h_state~19_combout\);

-- Location: LCCOMB_X112_Y50_N2
\h_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~21_combout\ = (!\h_state~11_combout\ & (!\h_state~18_combout\ & !\h_state~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state~11_combout\,
	datac => \h_state~18_combout\,
	datad => \h_state~15_combout\,
	combout => \h_state~21_combout\);

-- Location: LCCOMB_X112_Y50_N8
\h_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~22_combout\ = (\reset_n~input_o\ & ((\h_state~19_combout\ & ((\h_state~21_combout\))) # (!\h_state~19_combout\ & (\h_state.FRONT_PORCH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \h_state~19_combout\,
	datac => \h_state.FRONT_PORCH~q\,
	datad => \h_state~21_combout\,
	combout => \h_state~22_combout\);

-- Location: FF_X112_Y50_N9
\h_state.FRONT_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_state.FRONT_PORCH~q\);

-- Location: LCCOMB_X112_Y50_N26
\h_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~16_combout\ = (\h_state.FRONT_PORCH~q\ & (h_counter(6) & (h_counter(7) & h_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state.FRONT_PORCH~q\,
	datab => h_counter(6),
	datac => h_counter(7),
	datad => h_counter(8),
	combout => \h_state~16_combout\);

-- Location: LCCOMB_X112_Y50_N16
\h_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~17_combout\ = (h_counter(5) & (\h_state~16_combout\ & ((h_counter(4)) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(5),
	datab => h_counter(4),
	datac => \h_state~16_combout\,
	datad => \LessThan2~0_combout\,
	combout => \h_state~17_combout\);

-- Location: LCCOMB_X112_Y50_N30
\h_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~18_combout\ = (\h_state~17_combout\) # ((h_counter(9) & \h_state.FRONT_PORCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_counter(9),
	datac => \h_state.FRONT_PORCH~q\,
	datad => \h_state~17_combout\,
	combout => \h_state~18_combout\);

-- Location: LCCOMB_X112_Y50_N4
\h_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~24_combout\ = (\reset_n~input_o\ & ((\h_state~18_combout\) # ((\h_state.SYNC_PULSE~q\ & !\h_state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state~18_combout\,
	datab => \reset_n~input_o\,
	datac => \h_state.SYNC_PULSE~q\,
	datad => \h_state~19_combout\,
	combout => \h_state~24_combout\);

-- Location: FF_X112_Y50_N5
\h_state.SYNC_PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_state.SYNC_PULSE~q\);

-- Location: LCCOMB_X112_Y50_N22
\h_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~10_combout\ = (\h_state.SYNC_PULSE~q\ & ((h_counter(7)) # ((h_counter(6)) # (h_counter(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(7),
	datab => h_counter(6),
	datac => \h_state.SYNC_PULSE~q\,
	datad => h_counter(8),
	combout => \h_state~10_combout\);

-- Location: LCCOMB_X112_Y50_N20
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!h_counter(5) & (!h_counter(4) & (\LessThan4~0_combout\ & !\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(5),
	datab => h_counter(4),
	datac => \LessThan4~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X112_Y50_N6
\h_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~11_combout\ = (h_counter(9) & (\h_state~10_combout\ & !\LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_counter(9),
	datac => \h_state~10_combout\,
	datad => \LessThan4~1_combout\,
	combout => \h_state~11_combout\);

-- Location: LCCOMB_X112_Y50_N14
\h_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~20_combout\ = (\reset_n~input_o\ & ((\h_state~11_combout\) # ((\h_state.BACK_PORCH~q\ & !\h_state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state~11_combout\,
	datab => \reset_n~input_o\,
	datac => \h_state.BACK_PORCH~q\,
	datad => \h_state~19_combout\,
	combout => \h_state~20_combout\);

-- Location: FF_X112_Y50_N15
\h_state.BACK_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_state.BACK_PORCH~q\);

-- Location: LCCOMB_X112_Y50_N12
\h_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~15_combout\ = (h_counter(9) & (\h_state.BACK_PORCH~q\ & ((!\LessThan5~0_combout\) # (!\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(9),
	datab => \h_state.BACK_PORCH~q\,
	datac => \LessThan4~0_combout\,
	datad => \LessThan5~0_combout\,
	combout => \h_state~15_combout\);

-- Location: LCCOMB_X112_Y50_N10
\h_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_state~23_combout\ = (\reset_n~input_o\ & ((\h_state~19_combout\ & (!\h_state~15_combout\)) # (!\h_state~19_combout\ & ((\h_state.DISPLAY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state~15_combout\,
	datab => \reset_n~input_o\,
	datac => \h_state.DISPLAY~q\,
	datad => \h_state~19_combout\,
	combout => \h_state~23_combout\);

-- Location: FF_X112_Y50_N11
\h_state.DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_state.DISPLAY~q\);

-- Location: LCCOMB_X112_Y50_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\h_state.BACK_PORCH~q\) # ((\h_sync~reg0_q\ & \h_state.FRONT_PORCH~q\))) # (!\h_state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_state.DISPLAY~q\,
	datab => \h_state.BACK_PORCH~q\,
	datac => \h_sync~reg0_q\,
	datad => \h_state.FRONT_PORCH~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X112_Y50_N1
\h_sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_sync~reg0_q\);

-- Location: LCCOMB_X109_Y50_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = v_counter(0) $ (VCC)
-- \Add1~1\ = CARRY(v_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X109_Y50_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\reset_n~input_o\ & (\Add1~0_combout\ & !\v_state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \Add1~0_combout\,
	datad => \v_state~20_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X108_Y50_N12
\v_state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~29_combout\ = (\v_state.BACK_PORCH~q\ & \v_state~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v_state.BACK_PORCH~q\,
	datac => \v_state~20_combout\,
	combout => \v_state~29_combout\);

-- Location: LCCOMB_X108_Y50_N20
\v_state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~30_combout\ = (\reset_n~input_o\ & ((\v_state~25_combout\ & (!\v_state~29_combout\)) # (!\v_state~25_combout\ & ((\v_state.DISPLAY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~29_combout\,
	datab => \reset_n~input_o\,
	datac => \v_state.DISPLAY~q\,
	datad => \v_state~25_combout\,
	combout => \v_state~30_combout\);

-- Location: FF_X108_Y50_N21
\v_state.DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \v_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_state.DISPLAY~q\);

-- Location: LCCOMB_X109_Y50_N0
\v_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~22_combout\ = (v_counter(1) & (v_counter(2) & (v_counter(0) & v_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(1),
	datab => v_counter(2),
	datac => v_counter(0),
	datad => v_counter(3),
	combout => \v_state~22_combout\);

-- Location: LCCOMB_X109_Y50_N2
\v_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~23_combout\ = (v_counter(4) & (v_counter(5) & (v_counter(6) & \v_state~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(4),
	datab => v_counter(5),
	datac => v_counter(6),
	datad => \v_state~22_combout\,
	combout => \v_state~23_combout\);

-- Location: LCCOMB_X108_Y50_N26
\v_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~24_combout\ = (!\v_state.DISPLAY~q\ & ((v_counter(7)) # ((v_counter(8)) # (\v_state~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(7),
	datab => \v_state.DISPLAY~q\,
	datac => v_counter(8),
	datad => \v_state~23_combout\,
	combout => \v_state~24_combout\);

-- Location: LCCOMB_X108_Y50_N4
\v_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~16_combout\ = (\v_state.SYNC_PULSE~q\ & v_counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v_state.SYNC_PULSE~q\,
	datad => v_counter(9),
	combout => \v_state~16_combout\);

-- Location: LCCOMB_X110_Y50_N10
\v_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~12_combout\ = (v_counter(3) & v_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_counter(3),
	datad => v_counter(7),
	combout => \v_state~12_combout\);

-- Location: LCCOMB_X110_Y50_N0
\v_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~14_combout\ = ((!v_counter(5) & (!v_counter(4) & !v_counter(6)))) # (!v_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(5),
	datab => v_counter(4),
	datac => v_counter(6),
	datad => v_counter(7),
	combout => \v_state~14_combout\);

-- Location: LCCOMB_X109_Y50_N28
\v_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~13_combout\ = (v_counter(2)) # ((v_counter(1) & v_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(1),
	datac => v_counter(0),
	datad => v_counter(2),
	combout => \v_state~13_combout\);

-- Location: LCCOMB_X109_Y50_N26
\v_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~15_combout\ = (v_counter(8)) # (((\v_state~12_combout\ & \v_state~13_combout\)) # (!\v_state~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(8),
	datab => \v_state~12_combout\,
	datac => \v_state~14_combout\,
	datad => \v_state~13_combout\,
	combout => \v_state~15_combout\);

-- Location: LCCOMB_X108_Y50_N16
\v_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~21_combout\ = (\v_state.BACK_PORCH~q\ & (!\v_state~20_combout\ & ((!\v_state~15_combout\) # (!\v_state~16_combout\)))) # (!\v_state.BACK_PORCH~q\ & (((!\v_state~15_combout\)) # (!\v_state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state.BACK_PORCH~q\,
	datab => \v_state~16_combout\,
	datac => \v_state~20_combout\,
	datad => \v_state~15_combout\,
	combout => \v_state~21_combout\);

-- Location: LCCOMB_X108_Y50_N24
\v_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~25_combout\ = (\v_state~19_combout\) # (((v_counter(9) & \v_state~24_combout\)) # (!\v_state~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~19_combout\,
	datab => v_counter(9),
	datac => \v_state~24_combout\,
	datad => \v_state~21_combout\,
	combout => \v_state~25_combout\);

-- Location: LCCOMB_X108_Y50_N2
\v_state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~31_combout\ = (\reset_n~input_o\ & ((\v_state~25_combout\ & (\v_state~19_combout\)) # (!\v_state~25_combout\ & ((\v_state.SYNC_PULSE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~19_combout\,
	datab => \reset_n~input_o\,
	datac => \v_state.SYNC_PULSE~q\,
	datad => \v_state~25_combout\,
	combout => \v_state~31_combout\);

-- Location: FF_X108_Y50_N3
\v_state.SYNC_PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \v_state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_state.SYNC_PULSE~q\);

-- Location: LCCOMB_X108_Y50_N10
\v_state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~32_combout\ = (v_counter(9) & (\v_state.SYNC_PULSE~q\ & \v_state~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_counter(9),
	datac => \v_state.SYNC_PULSE~q\,
	datad => \v_state~15_combout\,
	combout => \v_state~32_combout\);

-- Location: LCCOMB_X108_Y50_N8
\v_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~26_combout\ = (\reset_n~input_o\ & ((\v_state~25_combout\ & (\v_state~32_combout\)) # (!\v_state~25_combout\ & ((\v_state.BACK_PORCH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~32_combout\,
	datab => \reset_n~input_o\,
	datac => \v_state.BACK_PORCH~q\,
	datad => \v_state~25_combout\,
	combout => \v_state~26_combout\);

-- Location: FF_X108_Y50_N9
\v_state.BACK_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \v_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_state.BACK_PORCH~q\);

-- Location: LCCOMB_X111_Y50_N26
\v_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_counter[0]~0_combout\ = (\h_counter~12_combout\) # ((\v_state.BACK_PORCH~q\ & \v_state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state.BACK_PORCH~q\,
	datac => \v_state~20_combout\,
	datad => \h_counter~12_combout\,
	combout => \v_counter[0]~0_combout\);

-- Location: FF_X109_Y50_N5
\v_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(0));

-- Location: LCCOMB_X109_Y50_N8
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (v_counter(1) & (!\Add1~1\)) # (!v_counter(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!v_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X109_Y50_N30
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\reset_n~input_o\ & (\Add1~3_combout\ & !\v_state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \Add1~3_combout\,
	datad => \v_state~20_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X109_Y50_N31
\v_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(1));

-- Location: LCCOMB_X109_Y50_N10
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (v_counter(2) & (\Add1~4\ $ (GND))) # (!v_counter(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((v_counter(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_counter(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X110_Y50_N28
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (!\v_state~20_combout\ & (\reset_n~input_o\ & \Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~20_combout\,
	datab => \reset_n~input_o\,
	datad => \Add1~6_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X110_Y50_N29
\v_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(2));

-- Location: LCCOMB_X109_Y50_N12
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (v_counter(3) & (!\Add1~7\)) # (!v_counter(3) & ((\Add1~7\) # (GND)))
-- \Add1~10\ = CARRY((!\Add1~7\) # (!v_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_counter(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X110_Y50_N22
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (!\v_state~20_combout\ & (\reset_n~input_o\ & \Add1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~20_combout\,
	datab => \reset_n~input_o\,
	datad => \Add1~9_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X110_Y50_N23
\v_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(3));

-- Location: LCCOMB_X109_Y50_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (v_counter(4) & (\Add1~10\ $ (GND))) # (!v_counter(4) & (!\Add1~10\ & VCC))
-- \Add1~13\ = CARRY((v_counter(4) & !\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X110_Y50_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\v_state~20_combout\ & (\reset_n~input_o\ & \Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~20_combout\,
	datab => \reset_n~input_o\,
	datad => \Add1~12_combout\,
	combout => \Add1~14_combout\);

-- Location: FF_X110_Y50_N17
\v_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(4));

-- Location: LCCOMB_X109_Y50_N16
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (v_counter(5) & (!\Add1~13\)) # (!v_counter(5) & ((\Add1~13\) # (GND)))
-- \Add1~16\ = CARRY((!\Add1~13\) # (!v_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_counter(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X110_Y50_N26
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\reset_n~input_o\ & (\Add1~15_combout\ & !\v_state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \Add1~15_combout\,
	datad => \v_state~20_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X110_Y50_N27
\v_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~17_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(5));

-- Location: LCCOMB_X109_Y50_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (v_counter(6) & (\Add1~16\ $ (GND))) # (!v_counter(6) & (!\Add1~16\ & VCC))
-- \Add1~19\ = CARRY((v_counter(6) & !\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_counter(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X110_Y50_N8
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\v_state~20_combout\ & (\reset_n~input_o\ & \Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~20_combout\,
	datab => \reset_n~input_o\,
	datad => \Add1~18_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X110_Y50_N9
\v_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(6));

-- Location: LCCOMB_X109_Y50_N20
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (v_counter(7) & (!\Add1~19\)) # (!v_counter(7) & ((\Add1~19\) # (GND)))
-- \Add1~22\ = CARRY((!\Add1~19\) # (!v_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(7),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X110_Y50_N18
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (!\v_state~20_combout\ & (\reset_n~input_o\ & \Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~20_combout\,
	datab => \reset_n~input_o\,
	datad => \Add1~21_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X110_Y50_N19
\v_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~23_combout\,
	ena => \v_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(7));

-- Location: LCCOMB_X109_Y50_N22
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (v_counter(8) & (\Add1~22\ $ (GND))) # (!v_counter(8) & (!\Add1~22\ & VCC))
-- \Add1~25\ = CARRY((v_counter(8) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_counter(8),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X110_Y50_N12
\v_counter[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_counter[8]~2_combout\ = (\v_counter[0]~0_combout\ & (\v_counter~1_combout\ & (\Add1~24_combout\))) # (!\v_counter[0]~0_combout\ & (((v_counter(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_counter~1_combout\,
	datab => \Add1~24_combout\,
	datac => v_counter(8),
	datad => \v_counter[0]~0_combout\,
	combout => \v_counter[8]~2_combout\);

-- Location: FF_X110_Y50_N13
\v_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \v_counter[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(8));

-- Location: LCCOMB_X110_Y50_N4
\LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = ((!v_counter(6) & !v_counter(5))) # (!v_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_counter(6),
	datac => v_counter(5),
	datad => v_counter(7),
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X110_Y50_N2
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!v_counter(4) & (!v_counter(6) & ((!v_counter(2)) # (!v_counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(3),
	datab => v_counter(4),
	datac => v_counter(6),
	datad => v_counter(2),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X110_Y50_N6
\v_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~20_combout\ = (v_counter(9) & ((v_counter(8)) # ((!\LessThan9~1_combout\ & !\LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(8),
	datab => v_counter(9),
	datac => \LessThan9~1_combout\,
	datad => \LessThan9~0_combout\,
	combout => \v_state~20_combout\);

-- Location: LCCOMB_X110_Y50_N20
\v_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_counter~1_combout\ = (\reset_n~input_o\ & !\v_state~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \v_state~20_combout\,
	combout => \v_counter~1_combout\);

-- Location: LCCOMB_X109_Y50_N24
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = \Add1~25\ $ (v_counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => v_counter(9),
	cin => \Add1~25\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X110_Y50_N24
\v_counter[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_counter[9]~3_combout\ = (\v_counter[0]~0_combout\ & (\v_counter~1_combout\ & ((\Add1~26_combout\)))) # (!\v_counter[0]~0_combout\ & (((v_counter(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_counter~1_combout\,
	datab => \v_counter[0]~0_combout\,
	datac => v_counter(9),
	datad => \Add1~26_combout\,
	combout => \v_counter[9]~3_combout\);

-- Location: FF_X110_Y50_N25
\v_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \v_counter[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_counter(9));

-- Location: LCCOMB_X108_Y50_N6
\v_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~17_combout\ = (\v_state.FRONT_PORCH~q\ & v_counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v_state.FRONT_PORCH~q\,
	datad => v_counter(9),
	combout => \v_state~17_combout\);

-- Location: LCCOMB_X108_Y50_N0
\v_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~18_combout\ = (\v_state~12_combout\ & ((v_counter(0)) # ((v_counter(2)) # (v_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(0),
	datab => v_counter(2),
	datac => v_counter(1),
	datad => \v_state~12_combout\,
	combout => \v_state~18_combout\);

-- Location: LCCOMB_X108_Y50_N30
\v_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~19_combout\ = (\v_state~17_combout\ & ((v_counter(8)) # ((\v_state~18_combout\) # (!\v_state~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state~17_combout\,
	datab => v_counter(8),
	datac => \v_state~14_combout\,
	datad => \v_state~18_combout\,
	combout => \v_state~19_combout\);

-- Location: LCCOMB_X108_Y50_N18
\v_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~27_combout\ = (!\v_state~19_combout\ & \v_state~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v_state~19_combout\,
	datad => \v_state~21_combout\,
	combout => \v_state~27_combout\);

-- Location: LCCOMB_X108_Y50_N22
\v_state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_state~28_combout\ = (\reset_n~input_o\ & ((\v_state~25_combout\ & (\v_state~27_combout\)) # (!\v_state~25_combout\ & ((\v_state.FRONT_PORCH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \v_state~27_combout\,
	datac => \v_state.FRONT_PORCH~q\,
	datad => \v_state~25_combout\,
	combout => \v_state~28_combout\);

-- Location: FF_X108_Y50_N23
\v_state.FRONT_PORCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \v_state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_state.FRONT_PORCH~q\);

-- Location: LCCOMB_X108_Y50_N28
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\v_state.BACK_PORCH~q\) # (((\v_state.FRONT_PORCH~q\ & \v_sync~reg0_q\)) # (!\v_state.DISPLAY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_state.FRONT_PORCH~q\,
	datab => \v_state.BACK_PORCH~q\,
	datac => \v_sync~reg0_q\,
	datad => \v_state.DISPLAY~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X108_Y50_N29
\v_sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_sync~reg0_q\);

-- Location: LCCOMB_X114_Y50_N28
\column~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~0_combout\ = ((\h_state.DISPLAY~q\ & ((\column[0]~reg0_q\))) # (!\h_state.DISPLAY~q\ & (!h_counter(0)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => h_counter(0),
	datac => \column[0]~reg0_q\,
	datad => \h_state.DISPLAY~q\,
	combout => \column~0_combout\);

-- Location: FF_X114_Y50_N29
\column[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[0]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N14
\column~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~1_combout\ = (h_counter(1) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(1),
	datad => \reset_n~input_o\,
	combout => \column~1_combout\);

-- Location: LCCOMB_X114_Y50_N24
\column[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \column[5]~2_combout\ = (!\h_state.DISPLAY~q\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \h_state.DISPLAY~q\,
	combout => \column[5]~2_combout\);

-- Location: FF_X114_Y50_N15
\column[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~1_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[1]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N4
\column~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~3_combout\ = (h_counter(2) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(2),
	datad => \reset_n~input_o\,
	combout => \column~3_combout\);

-- Location: FF_X114_Y50_N5
\column[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~3_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[2]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N6
\column~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~4_combout\ = (h_counter(3) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(3),
	datad => \reset_n~input_o\,
	combout => \column~4_combout\);

-- Location: FF_X114_Y50_N7
\column[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~4_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[3]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N0
\column~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~5_combout\ = (h_counter(4) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_counter(4),
	datad => \reset_n~input_o\,
	combout => \column~5_combout\);

-- Location: FF_X114_Y50_N1
\column[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~5_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[4]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N18
\column~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~6_combout\ = (h_counter(5) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(5),
	datad => \reset_n~input_o\,
	combout => \column~6_combout\);

-- Location: FF_X114_Y50_N19
\column[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~6_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[5]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N12
\column~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~7_combout\ = (h_counter(6) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(6),
	datad => \reset_n~input_o\,
	combout => \column~7_combout\);

-- Location: FF_X114_Y50_N13
\column[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~7_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[6]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N2
\column~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~8_combout\ = (h_counter(7) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(7),
	datad => \reset_n~input_o\,
	combout => \column~8_combout\);

-- Location: FF_X114_Y50_N3
\column[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~8_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[7]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N16
\column~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~9_combout\ = (h_counter(8) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(8),
	datad => \reset_n~input_o\,
	combout => \column~9_combout\);

-- Location: FF_X114_Y50_N17
\column[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~9_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[8]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N10
\column~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \column~10_combout\ = (h_counter(9) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_counter(9),
	datad => \reset_n~input_o\,
	combout => \column~10_combout\);

-- Location: FF_X114_Y50_N11
\column[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column~10_combout\,
	ena => \column[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[9]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N20
\column[31]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \column[31]~11_combout\ = ((\column[31]~reg0_q\) # (!\h_state.DISPLAY~q\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \column[31]~reg0_q\,
	datad => \h_state.DISPLAY~q\,
	combout => \column[31]~11_combout\);

-- Location: FF_X114_Y50_N21
\column[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column[31]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[31]~reg0_q\);

-- Location: LCCOMB_X108_Y50_N14
\row~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~0_combout\ = ((\v_state.DISPLAY~q\ & ((\row[0]~reg0_q\))) # (!\v_state.DISPLAY~q\ & (!v_counter(0)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(0),
	datab => \reset_n~input_o\,
	datac => \row[0]~reg0_q\,
	datad => \v_state.DISPLAY~q\,
	combout => \row~0_combout\);

-- Location: FF_X108_Y50_N15
\row[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[0]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N16
\row~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~1_combout\ = (\reset_n~input_o\ & v_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => v_counter(1),
	combout => \row~1_combout\);

-- Location: LCCOMB_X113_Y50_N2
\row[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \row[8]~2_combout\ = (!\v_state.DISPLAY~q\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \v_state.DISPLAY~q\,
	combout => \row[8]~2_combout\);

-- Location: FF_X113_Y50_N17
\row[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~1_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[1]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N10
\row~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~3_combout\ = (v_counter(2) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_counter(2),
	datad => \reset_n~input_o\,
	combout => \row~3_combout\);

-- Location: FF_X113_Y50_N11
\row[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~3_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[2]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N24
\row~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~4_combout\ = (\reset_n~input_o\ & v_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => v_counter(3),
	combout => \row~4_combout\);

-- Location: FF_X113_Y50_N25
\row[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~4_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[3]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N30
\row~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~5_combout\ = (\reset_n~input_o\ & v_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => v_counter(4),
	combout => \row~5_combout\);

-- Location: FF_X113_Y50_N31
\row[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~5_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[4]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N8
\row~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~6_combout\ = (v_counter(5) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_counter(5),
	datad => \reset_n~input_o\,
	combout => \row~6_combout\);

-- Location: FF_X113_Y50_N9
\row[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~6_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[5]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N22
\row~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~7_combout\ = (v_counter(6) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_counter(6),
	datad => \reset_n~input_o\,
	combout => \row~7_combout\);

-- Location: FF_X113_Y50_N23
\row[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~7_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[6]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N0
\row~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~8_combout\ = (v_counter(7) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_counter(7),
	datad => \reset_n~input_o\,
	combout => \row~8_combout\);

-- Location: FF_X113_Y50_N1
\row[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~8_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[7]~reg0_q\);

-- Location: LCCOMB_X110_Y50_N14
\row~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~9_combout\ = (\reset_n~input_o\ & v_counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => v_counter(8),
	combout => \row~9_combout\);

-- Location: FF_X113_Y50_N3
\row[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \row~9_combout\,
	sload => VCC,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[8]~reg0_q\);

-- Location: LCCOMB_X113_Y50_N12
\row~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \row~10_combout\ = (v_counter(9) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_counter(9),
	datad => \reset_n~input_o\,
	combout => \row~10_combout\);

-- Location: FF_X113_Y50_N13
\row[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row~10_combout\,
	ena => \row[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[9]~reg0_q\);

-- Location: LCCOMB_X114_Y50_N26
\row[31]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \row[31]~11_combout\ = ((\row[31]~reg0_q\) # (!\v_state.DISPLAY~q\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \row[31]~reg0_q\,
	datad => \v_state.DISPLAY~q\,
	combout => \row[31]~11_combout\);

-- Location: FF_X114_Y50_N27
\row[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \row[31]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[31]~reg0_q\);

ww_h_sync <= \h_sync~output_o\;

ww_v_sync <= \v_sync~output_o\;

ww_blank_n <= \blank_n~output_o\;

ww_sync_n <= \sync_n~output_o\;

ww_column(0) <= \column[0]~output_o\;

ww_column(1) <= \column[1]~output_o\;

ww_column(2) <= \column[2]~output_o\;

ww_column(3) <= \column[3]~output_o\;

ww_column(4) <= \column[4]~output_o\;

ww_column(5) <= \column[5]~output_o\;

ww_column(6) <= \column[6]~output_o\;

ww_column(7) <= \column[7]~output_o\;

ww_column(8) <= \column[8]~output_o\;

ww_column(9) <= \column[9]~output_o\;

ww_column(10) <= \column[10]~output_o\;

ww_column(11) <= \column[11]~output_o\;

ww_column(12) <= \column[12]~output_o\;

ww_column(13) <= \column[13]~output_o\;

ww_column(14) <= \column[14]~output_o\;

ww_column(15) <= \column[15]~output_o\;

ww_column(16) <= \column[16]~output_o\;

ww_column(17) <= \column[17]~output_o\;

ww_column(18) <= \column[18]~output_o\;

ww_column(19) <= \column[19]~output_o\;

ww_column(20) <= \column[20]~output_o\;

ww_column(21) <= \column[21]~output_o\;

ww_column(22) <= \column[22]~output_o\;

ww_column(23) <= \column[23]~output_o\;

ww_column(24) <= \column[24]~output_o\;

ww_column(25) <= \column[25]~output_o\;

ww_column(26) <= \column[26]~output_o\;

ww_column(27) <= \column[27]~output_o\;

ww_column(28) <= \column[28]~output_o\;

ww_column(29) <= \column[29]~output_o\;

ww_column(30) <= \column[30]~output_o\;

ww_column(31) <= \column[31]~output_o\;

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(3) <= \row[3]~output_o\;

ww_row(4) <= \row[4]~output_o\;

ww_row(5) <= \row[5]~output_o\;

ww_row(6) <= \row[6]~output_o\;

ww_row(7) <= \row[7]~output_o\;

ww_row(8) <= \row[8]~output_o\;

ww_row(9) <= \row[9]~output_o\;

ww_row(10) <= \row[10]~output_o\;

ww_row(11) <= \row[11]~output_o\;

ww_row(12) <= \row[12]~output_o\;

ww_row(13) <= \row[13]~output_o\;

ww_row(14) <= \row[14]~output_o\;

ww_row(15) <= \row[15]~output_o\;

ww_row(16) <= \row[16]~output_o\;

ww_row(17) <= \row[17]~output_o\;

ww_row(18) <= \row[18]~output_o\;

ww_row(19) <= \row[19]~output_o\;

ww_row(20) <= \row[20]~output_o\;

ww_row(21) <= \row[21]~output_o\;

ww_row(22) <= \row[22]~output_o\;

ww_row(23) <= \row[23]~output_o\;

ww_row(24) <= \row[24]~output_o\;

ww_row(25) <= \row[25]~output_o\;

ww_row(26) <= \row[26]~output_o\;

ww_row(27) <= \row[27]~output_o\;

ww_row(28) <= \row[28]~output_o\;

ww_row(29) <= \row[29]~output_o\;

ww_row(30) <= \row[30]~output_o\;

ww_row(31) <= \row[31]~output_o\;
END structure;


