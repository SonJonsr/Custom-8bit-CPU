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

-- DATE "01/24/2026 16:44:36"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	font IS
    PORT (
	ascii_ucode : IN std_logic_vector(7 DOWNTO 0);
	row : IN STD.STANDARD.integer range 15 DOWNTO 0;
	char_line : OUT std_logic_vector(7 DOWNTO 0)
	);
END font;

-- Design Ports Information
-- char_line[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- char_line[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- char_line[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- char_line[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- char_line[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- char_line[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- char_line[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- char_line[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ascii_ucode[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF font IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ascii_ucode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_char_line : std_logic_vector(7 DOWNTO 0);
SIGNAL \char_line[0]~output_o\ : std_logic;
SIGNAL \char_line[1]~output_o\ : std_logic;
SIGNAL \char_line[2]~output_o\ : std_logic;
SIGNAL \char_line[3]~output_o\ : std_logic;
SIGNAL \char_line[4]~output_o\ : std_logic;
SIGNAL \char_line[5]~output_o\ : std_logic;
SIGNAL \char_line[6]~output_o\ : std_logic;
SIGNAL \char_line[7]~output_o\ : std_logic;
SIGNAL \ascii_ucode[6]~input_o\ : std_logic;
SIGNAL \ascii_ucode[4]~input_o\ : std_logic;
SIGNAL \Mux332~124_combout\ : std_logic;
SIGNAL \row[1]~input_o\ : std_logic;
SIGNAL \row[3]~input_o\ : std_logic;
SIGNAL \row[0]~input_o\ : std_logic;
SIGNAL \row[2]~input_o\ : std_logic;
SIGNAL \Mux319~0_combout\ : std_logic;
SIGNAL \ascii_ucode[0]~input_o\ : std_logic;
SIGNAL \ascii_ucode[2]~input_o\ : std_logic;
SIGNAL \Mux332~123_combout\ : std_logic;
SIGNAL \ascii_ucode[1]~input_o\ : std_logic;
SIGNAL \ascii_ucode[3]~input_o\ : std_logic;
SIGNAL \Mux332~122_combout\ : std_logic;
SIGNAL \Mux332~125_combout\ : std_logic;
SIGNAL \Mux319~3_combout\ : std_logic;
SIGNAL \Mux228~0_combout\ : std_logic;
SIGNAL \Mux332~900_combout\ : std_logic;
SIGNAL \Mux317~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux332~141_combout\ : std_logic;
SIGNAL \Mux332~142_combout\ : std_logic;
SIGNAL \Mux319~2_combout\ : std_logic;
SIGNAL \Mux331~3_combout\ : std_logic;
SIGNAL \Mux332~143_combout\ : std_logic;
SIGNAL \Mux332~139_combout\ : std_logic;
SIGNAL \Mux331~2_combout\ : std_logic;
SIGNAL \Mux332~144_combout\ : std_logic;
SIGNAL \ascii_ucode[5]~input_o\ : std_logic;
SIGNAL \Mux319~1_combout\ : std_logic;
SIGNAL \Mux332~137_combout\ : std_logic;
SIGNAL \Mux332~136_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux332~130_combout\ : std_logic;
SIGNAL \Mux332~129_combout\ : std_logic;
SIGNAL \Mux332~131_combout\ : std_logic;
SIGNAL \Mux332~128_combout\ : std_logic;
SIGNAL \Mux332~132_combout\ : std_logic;
SIGNAL \Mux332~133_combout\ : std_logic;
SIGNAL \Mux332~134_combout\ : std_logic;
SIGNAL \Mux332~126_combout\ : std_logic;
SIGNAL \Mux332~127_combout\ : std_logic;
SIGNAL \Mux332~135_combout\ : std_logic;
SIGNAL \Mux332~138_combout\ : std_logic;
SIGNAL \ascii_ucode[7]~input_o\ : std_logic;
SIGNAL \Mux332~145_combout\ : std_logic;
SIGNAL \Mux323~0_combout\ : std_logic;
SIGNAL \Mux332~150_combout\ : std_logic;
SIGNAL \Mux332~147_combout\ : std_logic;
SIGNAL \Mux332~148_combout\ : std_logic;
SIGNAL \Mux332~149_combout\ : std_logic;
SIGNAL \Mux332~146_combout\ : std_logic;
SIGNAL \Mux332~151_combout\ : std_logic;
SIGNAL \Mux203~0_combout\ : std_logic;
SIGNAL \Mux294~0_combout\ : std_logic;
SIGNAL \Mux332~152_combout\ : std_logic;
SIGNAL \Mux229~0_combout\ : std_logic;
SIGNAL \Mux332~153_combout\ : std_logic;
SIGNAL \Mux332~154_combout\ : std_logic;
SIGNAL \Mux217~0_combout\ : std_logic;
SIGNAL \Mux319~4_combout\ : std_logic;
SIGNAL \Mux332~155_combout\ : std_logic;
SIGNAL \Mux332~156_combout\ : std_logic;
SIGNAL \Mux332~157_combout\ : std_logic;
SIGNAL \Mux332~158_combout\ : std_logic;
SIGNAL \Mux332~901_combout\ : std_logic;
SIGNAL \Mux332~159_combout\ : std_logic;
SIGNAL \Mux268~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux332~233_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \Mux332~234_combout\ : std_logic;
SIGNAL \Mux274~0_combout\ : std_logic;
SIGNAL \Mux332~239_combout\ : std_logic;
SIGNAL \Mux187~0_combout\ : std_logic;
SIGNAL \Mux332~240_combout\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \Mux332~237_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux332~235_combout\ : std_logic;
SIGNAL \Mux319~7_combout\ : std_logic;
SIGNAL \Mux332~236_combout\ : std_logic;
SIGNAL \Mux332~238_combout\ : std_logic;
SIGNAL \Mux332~241_combout\ : std_logic;
SIGNAL \Mux332~242_combout\ : std_logic;
SIGNAL \Mux332~243_combout\ : std_logic;
SIGNAL \Mux332~244_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux332~963_combout\ : std_logic;
SIGNAL \Mux332~964_combout\ : std_logic;
SIGNAL \Mux331~16_combout\ : std_logic;
SIGNAL \Mux331~17_combout\ : std_logic;
SIGNAL \Mux290~0_combout\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \Mux248~0_combout\ : std_logic;
SIGNAL \Mux332~281_combout\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \Mux332~282_combout\ : std_logic;
SIGNAL \Mux147~0_combout\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \Mux319~8_combout\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \Mux332~279_combout\ : std_logic;
SIGNAL \Mux332~280_combout\ : std_logic;
SIGNAL \Mux332~283_combout\ : std_logic;
SIGNAL \Mux316~0_combout\ : std_logic;
SIGNAL \Mux316~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux332~277_combout\ : std_logic;
SIGNAL \Mux264~0_combout\ : std_logic;
SIGNAL \Mux332~275_combout\ : std_logic;
SIGNAL \Mux332~276_combout\ : std_logic;
SIGNAL \Mux126~0_combout\ : std_logic;
SIGNAL \Mux332~274_combout\ : std_logic;
SIGNAL \Mux332~278_combout\ : std_logic;
SIGNAL \Mux331~23_combout\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \Mux332~285_combout\ : std_logic;
SIGNAL \Mux170~0_combout\ : std_logic;
SIGNAL \Mux185~0_combout\ : std_logic;
SIGNAL \Mux332~286_combout\ : std_logic;
SIGNAL \Mux332~284_combout\ : std_logic;
SIGNAL \Mux332~287_combout\ : std_logic;
SIGNAL \Mux316~3_combout\ : std_logic;
SIGNAL \Mux332~270_combout\ : std_logic;
SIGNAL \Mux116~0_combout\ : std_logic;
SIGNAL \Mux119~0_combout\ : std_logic;
SIGNAL \Mux332~271_combout\ : std_logic;
SIGNAL \Mux332~272_combout\ : std_logic;
SIGNAL \Mux319~5_combout\ : std_logic;
SIGNAL \Mux332~269_combout\ : std_logic;
SIGNAL \Mux332~273_combout\ : std_logic;
SIGNAL \Mux331~24_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux332~245_combout\ : std_logic;
SIGNAL \Mux332~246_combout\ : std_logic;
SIGNAL \Mux332~247_combout\ : std_logic;
SIGNAL \Mux332~248_combout\ : std_logic;
SIGNAL \Mux332~249_combout\ : std_logic;
SIGNAL \Mux332~250_combout\ : std_logic;
SIGNAL \Mux331~18_combout\ : std_logic;
SIGNAL \Mux332~251_combout\ : std_logic;
SIGNAL \Mux332~252_combout\ : std_logic;
SIGNAL \Mux331~19_combout\ : std_logic;
SIGNAL \Mux319~9_combout\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \Mux332~259_combout\ : std_logic;
SIGNAL \Mux332~260_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux332~262_combout\ : std_logic;
SIGNAL \Mux332~263_combout\ : std_logic;
SIGNAL \Mux211~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux332~261_combout\ : std_logic;
SIGNAL \Mux332~908_combout\ : std_logic;
SIGNAL \Mux332~264_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux171~0_combout\ : std_logic;
SIGNAL \Mux332~265_combout\ : std_logic;
SIGNAL \Mux319~6_combout\ : std_logic;
SIGNAL \Mux253~0_combout\ : std_logic;
SIGNAL \Mux332~266_combout\ : std_logic;
SIGNAL \Mux332~267_combout\ : std_logic;
SIGNAL \Mux332~268_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux184~0_combout\ : std_logic;
SIGNAL \Mux332~257_combout\ : std_logic;
SIGNAL \Mux332~254_combout\ : std_logic;
SIGNAL \Mux233~0_combout\ : std_logic;
SIGNAL \Mux332~255_combout\ : std_logic;
SIGNAL \Mux332~256_combout\ : std_logic;
SIGNAL \Mux332~253_combout\ : std_logic;
SIGNAL \Mux332~258_combout\ : std_logic;
SIGNAL \Mux331~20_combout\ : std_logic;
SIGNAL \Mux331~21_combout\ : std_logic;
SIGNAL \Mux331~22_combout\ : std_logic;
SIGNAL \Mux331~25_combout\ : std_logic;
SIGNAL \Mux332~140_combout\ : std_logic;
SIGNAL \Mux332~202_combout\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Mux332~203_combout\ : std_logic;
SIGNAL \Mux331~7_combout\ : std_logic;
SIGNAL \Mux332~173_combout\ : std_logic;
SIGNAL \Mux332~197_combout\ : std_logic;
SIGNAL \Mux332~199_combout\ : std_logic;
SIGNAL \Mux305~0_combout\ : std_logic;
SIGNAL \Mux167~0_combout\ : std_logic;
SIGNAL \Mux332~198_combout\ : std_logic;
SIGNAL \Mux332~200_combout\ : std_logic;
SIGNAL \Mux332~201_combout\ : std_logic;
SIGNAL \Mux331~8_combout\ : std_logic;
SIGNAL \Mux332~213_combout\ : std_logic;
SIGNAL \Mux173~0_combout\ : std_logic;
SIGNAL \Mux275~0_combout\ : std_logic;
SIGNAL \Mux332~214_combout\ : std_logic;
SIGNAL \Mux332~210_combout\ : std_logic;
SIGNAL \Mux222~0_combout\ : std_logic;
SIGNAL \Mux332~211_combout\ : std_logic;
SIGNAL \Mux332~208_combout\ : std_logic;
SIGNAL \Mux223~0_combout\ : std_logic;
SIGNAL \Mux332~207_combout\ : std_logic;
SIGNAL \Mux332~206_combout\ : std_logic;
SIGNAL \Mux332~209_combout\ : std_logic;
SIGNAL \Mux332~212_combout\ : std_logic;
SIGNAL \Mux165~0_combout\ : std_logic;
SIGNAL \Mux332~204_combout\ : std_logic;
SIGNAL \Mux316~2_combout\ : std_logic;
SIGNAL \Mux332~205_combout\ : std_logic;
SIGNAL \Mux332~215_combout\ : std_logic;
SIGNAL \Mux331~9_combout\ : std_logic;
SIGNAL \Mux209~1_combout\ : std_logic;
SIGNAL \Mux209~0_combout\ : std_logic;
SIGNAL \Mux332~177_combout\ : std_logic;
SIGNAL \Mux201~0_combout\ : std_logic;
SIGNAL \Mux332~178_combout\ : std_logic;
SIGNAL \Mux332~179_combout\ : std_logic;
SIGNAL \Mux197~0_combout\ : std_logic;
SIGNAL \Mux332~182_combout\ : std_logic;
SIGNAL \Mux332~905_combout\ : std_logic;
SIGNAL \Mux301~0_combout\ : std_logic;
SIGNAL \Mux232~1_combout\ : std_logic;
SIGNAL \Mux332~180_combout\ : std_logic;
SIGNAL \Mux198~0_combout\ : std_logic;
SIGNAL \Mux332~181_combout\ : std_logic;
SIGNAL \Mux332~183_combout\ : std_logic;
SIGNAL \Mux215~0_combout\ : std_logic;
SIGNAL \Mux286~0_combout\ : std_logic;
SIGNAL \Mux332~184_combout\ : std_logic;
SIGNAL \Mux332~185_combout\ : std_logic;
SIGNAL \Mux332~186_combout\ : std_logic;
SIGNAL \Mux332~191_combout\ : std_logic;
SIGNAL \Mux332~189_combout\ : std_logic;
SIGNAL \Mux332~188_combout\ : std_logic;
SIGNAL \Mux332~190_combout\ : std_logic;
SIGNAL \Mux332~187_combout\ : std_logic;
SIGNAL \Mux332~192_combout\ : std_logic;
SIGNAL \Mux331~4_combout\ : std_logic;
SIGNAL \Mux237~0_combout\ : std_logic;
SIGNAL \Mux219~0_combout\ : std_logic;
SIGNAL \Mux205~0_combout\ : std_logic;
SIGNAL \Mux332~195_combout\ : std_logic;
SIGNAL \Mux332~196_combout\ : std_logic;
SIGNAL \Mux221~0_combout\ : std_logic;
SIGNAL \Mux332~193_combout\ : std_logic;
SIGNAL \Mux332~194_combout\ : std_logic;
SIGNAL \Mux331~5_combout\ : std_logic;
SIGNAL \Mux331~6_combout\ : std_logic;
SIGNAL \Mux331~10_combout\ : std_logic;
SIGNAL \Mux332~220_combout\ : std_logic;
SIGNAL \Mux332~216_combout\ : std_logic;
SIGNAL \Mux320~0_combout\ : std_logic;
SIGNAL \Mux332~218_combout\ : std_logic;
SIGNAL \Mux332~217_combout\ : std_logic;
SIGNAL \Mux332~219_combout\ : std_logic;
SIGNAL \Mux332~221_combout\ : std_logic;
SIGNAL \Mux332~224_combout\ : std_logic;
SIGNAL \Mux302~0_combout\ : std_logic;
SIGNAL \Mux331~11_combout\ : std_logic;
SIGNAL \Mux332~222_combout\ : std_logic;
SIGNAL \Mux332~223_combout\ : std_logic;
SIGNAL \Mux331~12_combout\ : std_logic;
SIGNAL \Mux331~13_combout\ : std_logic;
SIGNAL \Mux332~906_combout\ : std_logic;
SIGNAL \Mux319~10_combout\ : std_logic;
SIGNAL \Mux332~907_combout\ : std_logic;
SIGNAL \Mux332~227_combout\ : std_logic;
SIGNAL \Mux332~228_combout\ : std_logic;
SIGNAL \Mux332~229_combout\ : std_logic;
SIGNAL \Mux280~0_combout\ : std_logic;
SIGNAL \Mux332~230_combout\ : std_logic;
SIGNAL \Mux293~0_combout\ : std_logic;
SIGNAL \Mux332~231_combout\ : std_logic;
SIGNAL \Mux289~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux277~0_combout\ : std_logic;
SIGNAL \Mux332~225_combout\ : std_logic;
SIGNAL \Mux332~226_combout\ : std_logic;
SIGNAL \Mux332~232_combout\ : std_logic;
SIGNAL \Mux331~14_combout\ : std_logic;
SIGNAL \Mux270~0_combout\ : std_logic;
SIGNAL \Mux332~160_combout\ : std_logic;
SIGNAL \Mux332~902_combout\ : std_logic;
SIGNAL \Mux267~0_combout\ : std_logic;
SIGNAL \Mux332~163_combout\ : std_logic;
SIGNAL \Mux332~164_combout\ : std_logic;
SIGNAL \Mux332~903_combout\ : std_logic;
SIGNAL \Mux332~161_combout\ : std_logic;
SIGNAL \Mux332~904_combout\ : std_logic;
SIGNAL \Mux332~162_combout\ : std_logic;
SIGNAL \Mux332~165_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux332~166_combout\ : std_logic;
SIGNAL \Mux332~167_combout\ : std_logic;
SIGNAL \Mux332~170_combout\ : std_logic;
SIGNAL \Mux232~0_combout\ : std_logic;
SIGNAL \Mux332~168_combout\ : std_logic;
SIGNAL \Mux332~169_combout\ : std_logic;
SIGNAL \Mux332~171_combout\ : std_logic;
SIGNAL \Mux244~0_combout\ : std_logic;
SIGNAL \Mux332~172_combout\ : std_logic;
SIGNAL \Mux332~174_combout\ : std_logic;
SIGNAL \Mux332~175_combout\ : std_logic;
SIGNAL \Mux332~176_combout\ : std_logic;
SIGNAL \Mux331~15_combout\ : std_logic;
SIGNAL \Mux331~26_combout\ : std_logic;
SIGNAL \Mux227~0_combout\ : std_logic;
SIGNAL \Mux332~910_combout\ : std_logic;
SIGNAL \Mux332~309_combout\ : std_logic;
SIGNAL \Mux309~0_combout\ : std_logic;
SIGNAL \Mux332~310_combout\ : std_logic;
SIGNAL \Mux332~308_combout\ : std_logic;
SIGNAL \Mux332~311_combout\ : std_logic;
SIGNAL \Mux332~909_combout\ : std_logic;
SIGNAL \Mux332~312_combout\ : std_logic;
SIGNAL \Mux331~50_combout\ : std_logic;
SIGNAL \Mux331~29_combout\ : std_logic;
SIGNAL \Mux332~313_combout\ : std_logic;
SIGNAL \Mux200~0_combout\ : std_logic;
SIGNAL \Mux331~30_combout\ : std_logic;
SIGNAL \Mux331~31_combout\ : std_logic;
SIGNAL \Mux331~32_combout\ : std_logic;
SIGNAL \Mux287~0_combout\ : std_logic;
SIGNAL \Mux297~0_combout\ : std_logic;
SIGNAL \Mux204~0_combout\ : std_logic;
SIGNAL \Mux332~321_combout\ : std_logic;
SIGNAL \Mux332~322_combout\ : std_logic;
SIGNAL \Mux208~0_combout\ : std_logic;
SIGNAL \Mux316~4_combout\ : std_logic;
SIGNAL \Mux332~314_combout\ : std_logic;
SIGNAL \Mux332~911_combout\ : std_logic;
SIGNAL \Mux216~0_combout\ : std_logic;
SIGNAL \Mux332~315_combout\ : std_logic;
SIGNAL \Mux235~0_combout\ : std_logic;
SIGNAL \Mux332~316_combout\ : std_logic;
SIGNAL \Mux252~0_combout\ : std_logic;
SIGNAL \Mux332~317_combout\ : std_logic;
SIGNAL \Mux332~318_combout\ : std_logic;
SIGNAL \Mux332~319_combout\ : std_logic;
SIGNAL \Mux332~320_combout\ : std_logic;
SIGNAL \Mux332~323_combout\ : std_logic;
SIGNAL \Mux331~33_combout\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \Mux332~331_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux332~332_combout\ : std_logic;
SIGNAL \Mux332~333_combout\ : std_logic;
SIGNAL \Mux332~334_combout\ : std_logic;
SIGNAL \Mux245~0_combout\ : std_logic;
SIGNAL \Mux331~36_combout\ : std_logic;
SIGNAL \Mux332~335_combout\ : std_logic;
SIGNAL \Mux331~37_combout\ : std_logic;
SIGNAL \Mux159~0_combout\ : std_logic;
SIGNAL \Mux174~0_combout\ : std_logic;
SIGNAL \Mux331~34_combout\ : std_logic;
SIGNAL \Mux331~35_combout\ : std_logic;
SIGNAL \Mux331~38_combout\ : std_logic;
SIGNAL \Mux332~912_combout\ : std_logic;
SIGNAL \Mux180~0_combout\ : std_logic;
SIGNAL \Mux332~326_combout\ : std_logic;
SIGNAL \Mux332~327_combout\ : std_logic;
SIGNAL \Mux332~328_combout\ : std_logic;
SIGNAL \Mux168~0_combout\ : std_logic;
SIGNAL \Mux332~329_combout\ : std_logic;
SIGNAL \Mux332~913_combout\ : std_logic;
SIGNAL \Mux332~324_combout\ : std_logic;
SIGNAL \Mux332~325_combout\ : std_logic;
SIGNAL \Mux332~330_combout\ : std_logic;
SIGNAL \Mux331~39_combout\ : std_logic;
SIGNAL \Mux330~0_combout\ : std_logic;
SIGNAL \Mux298~0_combout\ : std_logic;
SIGNAL \Mux303~0_combout\ : std_logic;
SIGNAL \Mux332~339_combout\ : std_logic;
SIGNAL \Mux314~0_combout\ : std_logic;
SIGNAL \Mux311~0_combout\ : std_logic;
SIGNAL \Mux332~338_combout\ : std_logic;
SIGNAL \Mux299~0_combout\ : std_logic;
SIGNAL \Mux332~336_combout\ : std_logic;
SIGNAL \Mux332~337_combout\ : std_logic;
SIGNAL \Mux332~340_combout\ : std_logic;
SIGNAL \Mux318~0_combout\ : std_logic;
SIGNAL \Mux332~352_combout\ : std_logic;
SIGNAL \Mux324~0_combout\ : std_logic;
SIGNAL \Mux324~1_combout\ : std_logic;
SIGNAL \Mux321~0_combout\ : std_logic;
SIGNAL \Mux332~353_combout\ : std_logic;
SIGNAL \Mux332~354_combout\ : std_logic;
SIGNAL \Mux332~355_combout\ : std_logic;
SIGNAL \Mux332~356_combout\ : std_logic;
SIGNAL \Mux278~0_combout\ : std_logic;
SIGNAL \Mux332~343_combout\ : std_logic;
SIGNAL \Mux291~0_combout\ : std_logic;
SIGNAL \Mux332~344_combout\ : std_logic;
SIGNAL \Mux285~0_combout\ : std_logic;
SIGNAL \Mux332~341_combout\ : std_logic;
SIGNAL \Mux332~342_combout\ : std_logic;
SIGNAL \Mux332~345_combout\ : std_logic;
SIGNAL \Mux332~347_combout\ : std_logic;
SIGNAL \Mux332~348_combout\ : std_logic;
SIGNAL \Mux332~349_combout\ : std_logic;
SIGNAL \Mux332~346_combout\ : std_logic;
SIGNAL \Mux332~350_combout\ : std_logic;
SIGNAL \Mux332~351_combout\ : std_logic;
SIGNAL \Mux331~40_combout\ : std_logic;
SIGNAL \Mux331~41_combout\ : std_logic;
SIGNAL \Mux332~296_combout\ : std_logic;
SIGNAL \Mux332~294_combout\ : std_logic;
SIGNAL \Mux332~295_combout\ : std_logic;
SIGNAL \Mux332~297_combout\ : std_logic;
SIGNAL \Mux332~299_combout\ : std_logic;
SIGNAL \Mux332~300_combout\ : std_logic;
SIGNAL \Mux332~298_combout\ : std_logic;
SIGNAL \Mux332~301_combout\ : std_logic;
SIGNAL \Mux331~27_combout\ : std_logic;
SIGNAL \Mux332~288_combout\ : std_logic;
SIGNAL \Mux177~0_combout\ : std_logic;
SIGNAL \Mux332~290_combout\ : std_logic;
SIGNAL \Mux332~289_combout\ : std_logic;
SIGNAL \Mux332~291_combout\ : std_logic;
SIGNAL \Mux332~292_combout\ : std_logic;
SIGNAL \Mux332~293_combout\ : std_logic;
SIGNAL \Mux256~0_combout\ : std_logic;
SIGNAL \Mux332~305_combout\ : std_logic;
SIGNAL \Mux269~0_combout\ : std_logic;
SIGNAL \Mux271~0_combout\ : std_logic;
SIGNAL \Mux332~304_combout\ : std_logic;
SIGNAL \Mux332~306_combout\ : std_logic;
SIGNAL \Mux332~302_combout\ : std_logic;
SIGNAL \Mux332~303_combout\ : std_logic;
SIGNAL \Mux332~307_combout\ : std_logic;
SIGNAL \Mux331~28_combout\ : std_logic;
SIGNAL \Mux330~1_combout\ : std_logic;
SIGNAL \Mux99~0_combout\ : std_logic;
SIGNAL \Mux332~387_combout\ : std_logic;
SIGNAL \Mux332~388_combout\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \Mux332~389_combout\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \Mux332~390_combout\ : std_logic;
SIGNAL \Mux332~391_combout\ : std_logic;
SIGNAL \Mux128~0_combout\ : std_logic;
SIGNAL \Mux332~386_combout\ : std_logic;
SIGNAL \Mux332~917_combout\ : std_logic;
SIGNAL \Mux110~0_combout\ : std_logic;
SIGNAL \Mux115~0_combout\ : std_logic;
SIGNAL \Mux332~392_combout\ : std_logic;
SIGNAL \Mux332~393_combout\ : std_logic;
SIGNAL \Mux332~394_combout\ : std_logic;
SIGNAL \Mux332~400_combout\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Mux266~0_combout\ : std_logic;
SIGNAL \Mux332~401_combout\ : std_logic;
SIGNAL \Mux133~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux332~402_combout\ : std_logic;
SIGNAL \Mux145~0_combout\ : std_logic;
SIGNAL \Mux332~403_combout\ : std_logic;
SIGNAL \Mux331~47_combout\ : std_logic;
SIGNAL \Mux127~0_combout\ : std_logic;
SIGNAL \Mux127~1_combout\ : std_logic;
SIGNAL \Mux125~0_combout\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \Mux332~397_combout\ : std_logic;
SIGNAL \Mux332~396_combout\ : std_logic;
SIGNAL \Mux332~398_combout\ : std_logic;
SIGNAL \Mux332~395_combout\ : std_logic;
SIGNAL \Mux332~399_combout\ : std_logic;
SIGNAL \Mux331~46_combout\ : std_logic;
SIGNAL \Mux331~48_combout\ : std_logic;
SIGNAL \Mux332~378_combout\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \Mux332~379_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux332~915_combout\ : std_logic;
SIGNAL \Mux332~916_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux332~380_combout\ : std_logic;
SIGNAL \Mux241~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux332~381_combout\ : std_logic;
SIGNAL \Mux332~382_combout\ : std_logic;
SIGNAL \Mux332~383_combout\ : std_logic;
SIGNAL \Mux332~384_combout\ : std_logic;
SIGNAL \Mux332~385_combout\ : std_logic;
SIGNAL \Mux332~370_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux332~371_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux332~372_combout\ : std_logic;
SIGNAL \Mux332~373_combout\ : std_logic;
SIGNAL \Mux332~374_combout\ : std_logic;
SIGNAL \Mux332~914_combout\ : std_logic;
SIGNAL \Mux332~375_combout\ : std_logic;
SIGNAL \Mux332~377_combout\ : std_logic;
SIGNAL \Mux331~44_combout\ : std_logic;
SIGNAL \Mux331~45_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux332~359_combout\ : std_logic;
SIGNAL \Mux332~360_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux332~357_combout\ : std_logic;
SIGNAL \Mux332~358_combout\ : std_logic;
SIGNAL \Mux332~361_combout\ : std_logic;
SIGNAL \Mux332~362_combout\ : std_logic;
SIGNAL \Mux332~363_combout\ : std_logic;
SIGNAL \Mux332~364_combout\ : std_logic;
SIGNAL \Mux331~42_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux332~368_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux332~366_combout\ : std_logic;
SIGNAL \Mux332~367_combout\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \Mux332~365_combout\ : std_logic;
SIGNAL \Mux332~369_combout\ : std_logic;
SIGNAL \Mux331~43_combout\ : std_logic;
SIGNAL \Mux330~2_combout\ : std_logic;
SIGNAL \Mux330~3_combout\ : std_logic;
SIGNAL \Mux330~4_combout\ : std_logic;
SIGNAL \Mux332~405_combout\ : std_logic;
SIGNAL \Mux332~404_combout\ : std_logic;
SIGNAL \Mux332~406_combout\ : std_logic;
SIGNAL \Mux332~407_combout\ : std_logic;
SIGNAL \Mux332~408_combout\ : std_logic;
SIGNAL \Mux332~409_combout\ : std_logic;
SIGNAL \Mux332~410_combout\ : std_logic;
SIGNAL \Mux332~918_combout\ : std_logic;
SIGNAL \Mux332~411_combout\ : std_logic;
SIGNAL \Mux332~412_combout\ : std_logic;
SIGNAL \Mux332~413_combout\ : std_logic;
SIGNAL \Mux332~416_combout\ : std_logic;
SIGNAL \Mux332~417_combout\ : std_logic;
SIGNAL \Mux332~414_combout\ : std_logic;
SIGNAL \Mux332~415_combout\ : std_logic;
SIGNAL \Mux332~418_combout\ : std_logic;
SIGNAL \Mux329~0_combout\ : std_logic;
SIGNAL \Mux295~0_combout\ : std_logic;
SIGNAL \Mux332~421_combout\ : std_logic;
SIGNAL \Mux308~0_combout\ : std_logic;
SIGNAL \Mux172~0_combout\ : std_logic;
SIGNAL \Mux332~420_combout\ : std_logic;
SIGNAL \Mux332~422_combout\ : std_logic;
SIGNAL \Mux332~423_combout\ : std_logic;
SIGNAL \Mux304~0_combout\ : std_logic;
SIGNAL \Mux332~419_combout\ : std_logic;
SIGNAL \Mux332~424_combout\ : std_logic;
SIGNAL \Mux329~1_combout\ : std_logic;
SIGNAL \Mux332~425_combout\ : std_logic;
SIGNAL \Mux214~0_combout\ : std_logic;
SIGNAL \Mux288~0_combout\ : std_logic;
SIGNAL \Mux332~429_combout\ : std_logic;
SIGNAL \Mux240~0_combout\ : std_logic;
SIGNAL \Mux332~426_combout\ : std_logic;
SIGNAL \Mux332~427_combout\ : std_logic;
SIGNAL \Mux332~428_combout\ : std_logic;
SIGNAL \Mux332~430_combout\ : std_logic;
SIGNAL \Mux332~431_combout\ : std_logic;
SIGNAL \Mux207~0_combout\ : std_logic;
SIGNAL \Mux332~919_combout\ : std_logic;
SIGNAL \Mux332~432_combout\ : std_logic;
SIGNAL \Mux331~49_combout\ : std_logic;
SIGNAL \Mux175~0_combout\ : std_logic;
SIGNAL \Mux332~433_combout\ : std_logic;
SIGNAL \Mux332~434_combout\ : std_logic;
SIGNAL \Mux160~0_combout\ : std_logic;
SIGNAL \Mux332~435_combout\ : std_logic;
SIGNAL \Mux332~436_combout\ : std_logic;
SIGNAL \Mux329~2_combout\ : std_logic;
SIGNAL \Mux284~0_combout\ : std_logic;
SIGNAL \Mux332~439_combout\ : std_logic;
SIGNAL \Mux332~440_combout\ : std_logic;
SIGNAL \Mux332~437_combout\ : std_logic;
SIGNAL \Mux332~920_combout\ : std_logic;
SIGNAL \Mux332~438_combout\ : std_logic;
SIGNAL \Mux332~441_combout\ : std_logic;
SIGNAL \Mux329~3_combout\ : std_logic;
SIGNAL \Mux332~458_combout\ : std_logic;
SIGNAL \Mux332~459_combout\ : std_logic;
SIGNAL \Mux332~457_combout\ : std_logic;
SIGNAL \Mux332~460_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux332~442_combout\ : std_logic;
SIGNAL \Mux332~443_combout\ : std_logic;
SIGNAL \Mux332~445_combout\ : std_logic;
SIGNAL \Mux195~0_combout\ : std_logic;
SIGNAL \Mux332~444_combout\ : std_logic;
SIGNAL \Mux332~446_combout\ : std_logic;
SIGNAL \Mux231~0_combout\ : std_logic;
SIGNAL \Mux332~450_combout\ : std_logic;
SIGNAL \Mux260~0_combout\ : std_logic;
SIGNAL \Mux332~449_combout\ : std_logic;
SIGNAL \Mux332~447_combout\ : std_logic;
SIGNAL \Mux236~0_combout\ : std_logic;
SIGNAL \Mux332~448_combout\ : std_logic;
SIGNAL \Mux332~451_combout\ : std_logic;
SIGNAL \Mux157~0_combout\ : std_logic;
SIGNAL \Mux332~452_combout\ : std_logic;
SIGNAL \Mux164~0_combout\ : std_logic;
SIGNAL \Mux332~453_combout\ : std_logic;
SIGNAL \Mux155~0_combout\ : std_logic;
SIGNAL \Mux332~454_combout\ : std_logic;
SIGNAL \Mux332~455_combout\ : std_logic;
SIGNAL \Mux332~456_combout\ : std_logic;
SIGNAL \Mux329~4_combout\ : std_logic;
SIGNAL \Mux329~5_combout\ : std_logic;
SIGNAL \Mux329~6_combout\ : std_logic;
SIGNAL \Mux265~0_combout\ : std_logic;
SIGNAL \Mux332~463_combout\ : std_logic;
SIGNAL \Mux332~464_combout\ : std_logic;
SIGNAL \Mux258~0_combout\ : std_logic;
SIGNAL \Mux332~461_combout\ : std_logic;
SIGNAL \Mux332~462_combout\ : std_logic;
SIGNAL \Mux332~465_combout\ : std_logic;
SIGNAL \Mux332~478_combout\ : std_logic;
SIGNAL \Mux322~0_combout\ : std_logic;
SIGNAL \Mux332~477_combout\ : std_logic;
SIGNAL \Mux332~479_combout\ : std_logic;
SIGNAL \Mux254~0_combout\ : std_logic;
SIGNAL \Mux332~480_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux332~476_combout\ : std_logic;
SIGNAL \Mux332~481_combout\ : std_logic;
SIGNAL \Mux190~0_combout\ : std_logic;
SIGNAL \Mux332~471_combout\ : std_logic;
SIGNAL \Mux332~472_combout\ : std_logic;
SIGNAL \Mux332~473_combout\ : std_logic;
SIGNAL \Mux306~0_combout\ : std_logic;
SIGNAL \Mux332~474_combout\ : std_logic;
SIGNAL \Mux332~475_combout\ : std_logic;
SIGNAL \Mux220~0_combout\ : std_logic;
SIGNAL \Mux218~0_combout\ : std_logic;
SIGNAL \Mux332~468_combout\ : std_logic;
SIGNAL \Mux332~469_combout\ : std_logic;
SIGNAL \Mux226~0_combout\ : std_logic;
SIGNAL \Mux224~0_combout\ : std_logic;
SIGNAL \Mux257~0_combout\ : std_logic;
SIGNAL \Mux332~466_combout\ : std_logic;
SIGNAL \Mux332~467_combout\ : std_logic;
SIGNAL \Mux332~470_combout\ : std_logic;
SIGNAL \Mux329~7_combout\ : std_logic;
SIGNAL \Mux329~8_combout\ : std_logic;
SIGNAL \Mux329~9_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux332~485_combout\ : std_logic;
SIGNAL \Mux332~482_combout\ : std_logic;
SIGNAL \Mux332~483_combout\ : std_logic;
SIGNAL \Mux332~484_combout\ : std_logic;
SIGNAL \Mux332~486_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux307~0_combout\ : std_logic;
SIGNAL \Mux332~492_combout\ : std_logic;
SIGNAL \Mux332~493_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux332~490_combout\ : std_logic;
SIGNAL \Mux332~491_combout\ : std_logic;
SIGNAL \Mux332~494_combout\ : std_logic;
SIGNAL \Mux332~487_combout\ : std_logic;
SIGNAL \Mux332~488_combout\ : std_logic;
SIGNAL \Mux332~489_combout\ : std_logic;
SIGNAL \Mux329~10_combout\ : std_logic;
SIGNAL \Mux117~0_combout\ : std_logic;
SIGNAL \Mux117~1_combout\ : std_logic;
SIGNAL \Mux144~0_combout\ : std_logic;
SIGNAL \Mux332~496_combout\ : std_logic;
SIGNAL \Mux332~497_combout\ : std_logic;
SIGNAL \Mux332~495_combout\ : std_logic;
SIGNAL \Mux143~0_combout\ : std_logic;
SIGNAL \Mux332~498_combout\ : std_logic;
SIGNAL \Mux329~11_combout\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \Mux332~511_combout\ : std_logic;
SIGNAL \Mux146~0_combout\ : std_logic;
SIGNAL \Mux332~512_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \Mux332~509_combout\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \Mux114~0_combout\ : std_logic;
SIGNAL \Mux332~510_combout\ : std_logic;
SIGNAL \Mux332~513_combout\ : std_logic;
SIGNAL \Mux332~502_combout\ : std_logic;
SIGNAL \Mux332~503_combout\ : std_logic;
SIGNAL \Mux332~506_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux316~5_combout\ : std_logic;
SIGNAL \Mux332~507_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux332~504_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux332~505_combout\ : std_logic;
SIGNAL \Mux332~508_combout\ : std_logic;
SIGNAL \Mux329~12_combout\ : std_logic;
SIGNAL \Mux332~499_combout\ : std_logic;
SIGNAL \Mux332~500_combout\ : std_logic;
SIGNAL \Mux332~501_combout\ : std_logic;
SIGNAL \Mux329~13_combout\ : std_logic;
SIGNAL \Mux332~516_combout\ : std_logic;
SIGNAL \Mux332~514_combout\ : std_logic;
SIGNAL \Mux332~515_combout\ : std_logic;
SIGNAL \Mux332~517_combout\ : std_logic;
SIGNAL \Mux332~518_combout\ : std_logic;
SIGNAL \Mux332~519_combout\ : std_logic;
SIGNAL \Mux332~520_combout\ : std_logic;
SIGNAL \Mux332~523_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux332~521_combout\ : std_logic;
SIGNAL \Mux332~522_combout\ : std_logic;
SIGNAL \Mux319~11_combout\ : std_logic;
SIGNAL \Mux332~524_combout\ : std_logic;
SIGNAL \Mux332~525_combout\ : std_logic;
SIGNAL \Mux329~14_combout\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \Mux332~526_combout\ : std_logic;
SIGNAL \Mux332~527_combout\ : std_logic;
SIGNAL \Mux87~1_combout\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \Mux332~530_combout\ : std_logic;
SIGNAL \Mux332~528_combout\ : std_logic;
SIGNAL \Mux332~529_combout\ : std_logic;
SIGNAL \Mux332~531_combout\ : std_logic;
SIGNAL \Mux329~15_combout\ : std_logic;
SIGNAL \Mux329~16_combout\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \Mux332~922_combout\ : std_logic;
SIGNAL \Mux332~921_combout\ : std_logic;
SIGNAL \Mux137~0_combout\ : std_logic;
SIGNAL \Mux132~0_combout\ : std_logic;
SIGNAL \Mux332~545_combout\ : std_logic;
SIGNAL \Mux139~0_combout\ : std_logic;
SIGNAL \Mux332~546_combout\ : std_logic;
SIGNAL \Mux332~547_combout\ : std_logic;
SIGNAL \Mux332~538_combout\ : std_logic;
SIGNAL \Mux332~537_combout\ : std_logic;
SIGNAL \Mux332~539_combout\ : std_logic;
SIGNAL \Mux332~542_combout\ : std_logic;
SIGNAL \Mux332~543_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux332~540_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux332~541_combout\ : std_logic;
SIGNAL \Mux332~544_combout\ : std_logic;
SIGNAL \Mux329~17_combout\ : std_logic;
SIGNAL \Mux332~534_combout\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \Mux332~532_combout\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \Mux332~533_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux332~535_combout\ : std_logic;
SIGNAL \Mux332~536_combout\ : std_logic;
SIGNAL \Mux329~18_combout\ : std_logic;
SIGNAL \Mux329~19_combout\ : std_logic;
SIGNAL \Mux329~20_combout\ : std_logic;
SIGNAL \Mux332~576_combout\ : std_logic;
SIGNAL \Mux332~577_combout\ : std_logic;
SIGNAL \Mux332~578_combout\ : std_logic;
SIGNAL \Mux183~0_combout\ : std_logic;
SIGNAL \Mux332~574_combout\ : std_logic;
SIGNAL \Mux332~572_combout\ : std_logic;
SIGNAL \Mux332~573_combout\ : std_logic;
SIGNAL \Mux332~565_combout\ : std_logic;
SIGNAL \Mux332~575_combout\ : std_logic;
SIGNAL \Mux247~0_combout\ : std_logic;
SIGNAL \Mux332~569_combout\ : std_logic;
SIGNAL \Mux332~924_combout\ : std_logic;
SIGNAL \Mux332~568_combout\ : std_logic;
SIGNAL \Mux332~570_combout\ : std_logic;
SIGNAL \Mux332~571_combout\ : std_logic;
SIGNAL \Mux328~2_combout\ : std_logic;
SIGNAL \Mux213~0_combout\ : std_logic;
SIGNAL \Mux332~566_combout\ : std_logic;
SIGNAL \Mux332~563_combout\ : std_logic;
SIGNAL \Mux332~564_combout\ : std_logic;
SIGNAL \Mux332~567_combout\ : std_logic;
SIGNAL \Mux328~3_combout\ : std_logic;
SIGNAL \Mux332~590_combout\ : std_logic;
SIGNAL \Mux163~0_combout\ : std_logic;
SIGNAL \Mux332~591_combout\ : std_logic;
SIGNAL \Mux169~0_combout\ : std_logic;
SIGNAL \Mux156~0_combout\ : std_logic;
SIGNAL \Mux332~588_combout\ : std_logic;
SIGNAL \Mux332~589_combout\ : std_logic;
SIGNAL \Mux332~592_combout\ : std_logic;
SIGNAL \Mux230~0_combout\ : std_logic;
SIGNAL \Mux234~0_combout\ : std_logic;
SIGNAL \Mux332~586_combout\ : std_logic;
SIGNAL \Mux332~585_combout\ : std_logic;
SIGNAL \Mux332~583_combout\ : std_logic;
SIGNAL \Mux332~584_combout\ : std_logic;
SIGNAL \Mux332~587_combout\ : std_logic;
SIGNAL \Mux328~4_combout\ : std_logic;
SIGNAL \Mux332~581_combout\ : std_logic;
SIGNAL \Mux332~579_combout\ : std_logic;
SIGNAL \Mux332~580_combout\ : std_logic;
SIGNAL \Mux332~582_combout\ : std_logic;
SIGNAL \Mux332~593_combout\ : std_logic;
SIGNAL \Mux332~594_combout\ : std_logic;
SIGNAL \Mux332~595_combout\ : std_logic;
SIGNAL \Mux328~5_combout\ : std_logic;
SIGNAL \Mux328~6_combout\ : std_logic;
SIGNAL \Mux332~610_combout\ : std_logic;
SIGNAL \Mux332~611_combout\ : std_logic;
SIGNAL \Mux332~609_combout\ : std_logic;
SIGNAL \Mux332~612_combout\ : std_logic;
SIGNAL \Mux332~606_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux186~0_combout\ : std_logic;
SIGNAL \Mux332~607_combout\ : std_logic;
SIGNAL \Mux332~604_combout\ : std_logic;
SIGNAL \Mux332~605_combout\ : std_logic;
SIGNAL \Mux332~608_combout\ : std_logic;
SIGNAL \Mux225~0_combout\ : std_logic;
SIGNAL \Mux332~599_combout\ : std_logic;
SIGNAL \Mux332~600_combout\ : std_logic;
SIGNAL \Mux332~602_combout\ : std_logic;
SIGNAL \Mux332~601_combout\ : std_logic;
SIGNAL \Mux332~603_combout\ : std_logic;
SIGNAL \Mux328~7_combout\ : std_logic;
SIGNAL \Mux332~596_combout\ : std_logic;
SIGNAL \Mux332~597_combout\ : std_logic;
SIGNAL \Mux332~598_combout\ : std_logic;
SIGNAL \Mux332~961_combout\ : std_logic;
SIGNAL \Mux332~962_combout\ : std_logic;
SIGNAL \Mux328~8_combout\ : std_logic;
SIGNAL \Mux332~549_combout\ : std_logic;
SIGNAL \Mux332~550_combout\ : std_logic;
SIGNAL \Mux255~0_combout\ : std_logic;
SIGNAL \Mux332~548_combout\ : std_logic;
SIGNAL \Mux332~551_combout\ : std_logic;
SIGNAL \Mux332~923_combout\ : std_logic;
SIGNAL \Mux196~0_combout\ : std_logic;
SIGNAL \Mux332~552_combout\ : std_logic;
SIGNAL \Mux332~553_combout\ : std_logic;
SIGNAL \Mux332~554_combout\ : std_logic;
SIGNAL \Mux332~557_combout\ : std_logic;
SIGNAL \Mux332~555_combout\ : std_logic;
SIGNAL \Mux332~556_combout\ : std_logic;
SIGNAL \Mux332~558_combout\ : std_logic;
SIGNAL \Mux328~0_combout\ : std_logic;
SIGNAL \Mux332~560_combout\ : std_logic;
SIGNAL \Mux332~561_combout\ : std_logic;
SIGNAL \Mux332~559_combout\ : std_logic;
SIGNAL \Mux332~562_combout\ : std_logic;
SIGNAL \Mux328~1_combout\ : std_logic;
SIGNAL \Mux328~9_combout\ : std_logic;
SIGNAL \Mux332~631_combout\ : std_logic;
SIGNAL \Mux332~632_combout\ : std_logic;
SIGNAL \Mux332~633_combout\ : std_logic;
SIGNAL \Mux332~927_combout\ : std_logic;
SIGNAL \Mux332~634_combout\ : std_logic;
SIGNAL \Mux332~635_combout\ : std_logic;
SIGNAL \Mux332~636_combout\ : std_logic;
SIGNAL \Mux332~637_combout\ : std_logic;
SIGNAL \Mux332~638_combout\ : std_logic;
SIGNAL \Mux328~12_combout\ : std_logic;
SIGNAL \Mux332~639_combout\ : std_logic;
SIGNAL \Mux113~0_combout\ : std_logic;
SIGNAL \Mux332~640_combout\ : std_logic;
SIGNAL \Mux332~641_combout\ : std_logic;
SIGNAL \Mux123~0_combout\ : std_logic;
SIGNAL \Mux332~642_combout\ : std_logic;
SIGNAL \Mux332~643_combout\ : std_logic;
SIGNAL \Mux328~13_combout\ : std_logic;
SIGNAL \Mux332~653_combout\ : std_logic;
SIGNAL \Mux332~654_combout\ : std_logic;
SIGNAL \Mux332~655_combout\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \Mux332~656_combout\ : std_logic;
SIGNAL \Mux332~657_combout\ : std_logic;
SIGNAL \Mux332~928_combout\ : std_logic;
SIGNAL \Mux332~929_combout\ : std_logic;
SIGNAL \Mux90~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux332~649_combout\ : std_logic;
SIGNAL \Mux332~650_combout\ : std_logic;
SIGNAL \Mux332~651_combout\ : std_logic;
SIGNAL \Mux332~652_combout\ : std_logic;
SIGNAL \Mux332~645_combout\ : std_logic;
SIGNAL \Mux332~646_combout\ : std_logic;
SIGNAL \Mux332~647_combout\ : std_logic;
SIGNAL \Mux332~644_combout\ : std_logic;
SIGNAL \Mux332~648_combout\ : std_logic;
SIGNAL \Mux328~14_combout\ : std_logic;
SIGNAL \Mux328~15_combout\ : std_logic;
SIGNAL \Mux328~16_combout\ : std_logic;
SIGNAL \Mux332~926_combout\ : std_logic;
SIGNAL \Mux332~925_combout\ : std_logic;
SIGNAL \Mux332~618_combout\ : std_logic;
SIGNAL \Mux332~619_combout\ : std_logic;
SIGNAL \Mux332~620_combout\ : std_logic;
SIGNAL \Mux332~623_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux332~621_combout\ : std_logic;
SIGNAL \Mux332~622_combout\ : std_logic;
SIGNAL \Mux332~624_combout\ : std_logic;
SIGNAL \Mux332~625_combout\ : std_logic;
SIGNAL \Mux328~10_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux332~616_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux332~613_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux332~614_combout\ : std_logic;
SIGNAL \Mux332~615_combout\ : std_logic;
SIGNAL \Mux332~617_combout\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \Mux122~0_combout\ : std_logic;
SIGNAL \Mux332~628_combout\ : std_logic;
SIGNAL \Mux332~629_combout\ : std_logic;
SIGNAL \Mux332~626_combout\ : std_logic;
SIGNAL \Mux332~627_combout\ : std_logic;
SIGNAL \Mux332~630_combout\ : std_logic;
SIGNAL \Mux328~11_combout\ : std_logic;
SIGNAL \Mux332~658_combout\ : std_logic;
SIGNAL \Mux332~659_combout\ : std_logic;
SIGNAL \Mux332~660_combout\ : std_logic;
SIGNAL \Mux332~662_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux332~661_combout\ : std_logic;
SIGNAL \Mux332~663_combout\ : std_logic;
SIGNAL \Mux332~665_combout\ : std_logic;
SIGNAL \Mux332~666_combout\ : std_logic;
SIGNAL \Mux332~930_combout\ : std_logic;
SIGNAL \Mux332~931_combout\ : std_logic;
SIGNAL \Mux332~667_combout\ : std_logic;
SIGNAL \Mux332~664_combout\ : std_logic;
SIGNAL \Mux328~17_combout\ : std_logic;
SIGNAL \Mux136~0_combout\ : std_logic;
SIGNAL \Mux131~0_combout\ : std_logic;
SIGNAL \Mux332~670_combout\ : std_logic;
SIGNAL \Mux332~671_combout\ : std_logic;
SIGNAL \Mux151~0_combout\ : std_logic;
SIGNAL \Mux332~668_combout\ : std_logic;
SIGNAL \Mux332~669_combout\ : std_logic;
SIGNAL \Mux332~672_combout\ : std_logic;
SIGNAL \Mux328~18_combout\ : std_logic;
SIGNAL \Mux328~19_combout\ : std_logic;
SIGNAL \Mux328~20_combout\ : std_logic;
SIGNAL \Mux332~693_combout\ : std_logic;
SIGNAL \Mux332~694_combout\ : std_logic;
SIGNAL \Mux332~695_combout\ : std_logic;
SIGNAL \Mux282~0_combout\ : std_logic;
SIGNAL \Mux332~691_combout\ : std_logic;
SIGNAL \Mux332~692_combout\ : std_logic;
SIGNAL \Mux325~21_combout\ : std_logic;
SIGNAL \Mux325~22_combout\ : std_logic;
SIGNAL \Mux332~674_combout\ : std_logic;
SIGNAL \Mux332~675_combout\ : std_logic;
SIGNAL \Mux332~673_combout\ : std_logic;
SIGNAL \Mux332~676_combout\ : std_logic;
SIGNAL \Mux239~0_combout\ : std_logic;
SIGNAL \Mux325~130_combout\ : std_logic;
SIGNAL \Mux325~16_combout\ : std_logic;
SIGNAL \Mux246~0_combout\ : std_logic;
SIGNAL \Mux242~0_combout\ : std_logic;
SIGNAL \Mux325~14_combout\ : std_logic;
SIGNAL \Mux325~15_combout\ : std_logic;
SIGNAL \Mux325~17_combout\ : std_logic;
SIGNAL \Mux332~689_combout\ : std_logic;
SIGNAL \Mux332~690_combout\ : std_logic;
SIGNAL \Mux332~687_combout\ : std_logic;
SIGNAL \Mux332~685_combout\ : std_logic;
SIGNAL \Mux332~686_combout\ : std_logic;
SIGNAL \Mux332~688_combout\ : std_logic;
SIGNAL \Mux325~20_combout\ : std_logic;
SIGNAL \Mux332~679_combout\ : std_logic;
SIGNAL \Mux332~680_combout\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \Mux332~681_combout\ : std_logic;
SIGNAL \Mux332~682_combout\ : std_logic;
SIGNAL \Mux325~18_combout\ : std_logic;
SIGNAL \Mux332~677_combout\ : std_logic;
SIGNAL \Mux332~678_combout\ : std_logic;
SIGNAL \Mux332~683_combout\ : std_logic;
SIGNAL \Mux332~684_combout\ : std_logic;
SIGNAL \Mux325~19_combout\ : std_logic;
SIGNAL \Mux327~0_combout\ : std_logic;
SIGNAL \Mux327~1_combout\ : std_logic;
SIGNAL \Mux130~0_combout\ : std_logic;
SIGNAL \Mux135~0_combout\ : std_logic;
SIGNAL \Mux332~735_combout\ : std_logic;
SIGNAL \Mux332~736_combout\ : std_logic;
SIGNAL \Mux332~737_combout\ : std_logic;
SIGNAL \Mux332~738_combout\ : std_logic;
SIGNAL \Mux332~739_combout\ : std_logic;
SIGNAL \Mux332~740_combout\ : std_logic;
SIGNAL \Mux325~48_combout\ : std_logic;
SIGNAL \Mux332~741_combout\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \Mux332~742_combout\ : std_logic;
SIGNAL \Mux325~49_combout\ : std_logic;
SIGNAL \Mux332~747_combout\ : std_logic;
SIGNAL \Mux332~748_combout\ : std_logic;
SIGNAL \Mux332~749_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux332~745_combout\ : std_logic;
SIGNAL \Mux332~746_combout\ : std_logic;
SIGNAL \Mux325~50_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \Mux332~750_combout\ : std_logic;
SIGNAL \Mux332~751_combout\ : std_logic;
SIGNAL \Mux332~743_combout\ : std_logic;
SIGNAL \Mux332~744_combout\ : std_logic;
SIGNAL \Mux325~51_combout\ : std_logic;
SIGNAL \Mux327~7_combout\ : std_logic;
SIGNAL \Mux332~752_combout\ : std_logic;
SIGNAL \Mux332~753_combout\ : std_logic;
SIGNAL \Mux332~754_combout\ : std_logic;
SIGNAL \Mux332~755_combout\ : std_logic;
SIGNAL \Mux332~756_combout\ : std_logic;
SIGNAL \Mux332~757_combout\ : std_logic;
SIGNAL \Mux325~52_combout\ : std_logic;
SIGNAL \Mux325~53_combout\ : std_logic;
SIGNAL \Mux325~54_combout\ : std_logic;
SIGNAL \Mux325~45_combout\ : std_logic;
SIGNAL \Mux319~12_combout\ : std_logic;
SIGNAL \Mux332~730_combout\ : std_logic;
SIGNAL \Mux332~731_combout\ : std_logic;
SIGNAL \Mux325~46_combout\ : std_logic;
SIGNAL \Mux332~937_combout\ : std_logic;
SIGNAL \Mux332~732_combout\ : std_logic;
SIGNAL \Mux332~733_combout\ : std_logic;
SIGNAL \Mux332~734_combout\ : std_logic;
SIGNAL \Mux325~47_combout\ : std_logic;
SIGNAL \Mux327~8_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux332~935_combout\ : std_logic;
SIGNAL \Mux332~936_combout\ : std_logic;
SIGNAL \Mux332~933_combout\ : std_logic;
SIGNAL \Mux332~934_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux332~703_combout\ : std_logic;
SIGNAL \Mux332~704_combout\ : std_logic;
SIGNAL \Mux332~705_combout\ : std_logic;
SIGNAL \Mux332~706_combout\ : std_logic;
SIGNAL \Mux325~28_combout\ : std_logic;
SIGNAL \Mux325~29_combout\ : std_logic;
SIGNAL \Mux325~25_combout\ : std_logic;
SIGNAL \Mux325~26_combout\ : std_logic;
SIGNAL \Mux325~27_combout\ : std_logic;
SIGNAL \Mux327~2_combout\ : std_logic;
SIGNAL \Mux179~0_combout\ : std_logic;
SIGNAL \Mux332~700_combout\ : std_logic;
SIGNAL \Mux332~701_combout\ : std_logic;
SIGNAL \Mux332~698_combout\ : std_logic;
SIGNAL \Mux332~699_combout\ : std_logic;
SIGNAL \Mux325~23_combout\ : std_logic;
SIGNAL \Mux332~696_combout\ : std_logic;
SIGNAL \Mux332~697_combout\ : std_logic;
SIGNAL \Mux332~702_combout\ : std_logic;
SIGNAL \Mux332~932_combout\ : std_logic;
SIGNAL \Mux325~24_combout\ : std_logic;
SIGNAL \Mux332~711_combout\ : std_logic;
SIGNAL \Mux332~712_combout\ : std_logic;
SIGNAL \Mux332~707_combout\ : std_logic;
SIGNAL \Mux332~708_combout\ : std_logic;
SIGNAL \Mux332~709_combout\ : std_logic;
SIGNAL \Mux332~710_combout\ : std_logic;
SIGNAL \Mux325~30_combout\ : std_logic;
SIGNAL \Mux325~31_combout\ : std_logic;
SIGNAL \Mux327~3_combout\ : std_logic;
SIGNAL \Mux332~726_combout\ : std_logic;
SIGNAL \Mux332~724_combout\ : std_logic;
SIGNAL \Mux332~725_combout\ : std_logic;
SIGNAL \Mux332~727_combout\ : std_logic;
SIGNAL \Mux325~42_combout\ : std_logic;
SIGNAL \Mux332~728_combout\ : std_logic;
SIGNAL \Mux332~729_combout\ : std_logic;
SIGNAL \Mux325~43_combout\ : std_logic;
SIGNAL \Mux325~44_combout\ : std_logic;
SIGNAL \Mux332~713_combout\ : std_logic;
SIGNAL \Mux332~714_combout\ : std_logic;
SIGNAL \Mux332~715_combout\ : std_logic;
SIGNAL \Mux332~716_combout\ : std_logic;
SIGNAL \Mux332~717_combout\ : std_logic;
SIGNAL \Mux332~718_combout\ : std_logic;
SIGNAL \Mux325~32_combout\ : std_logic;
SIGNAL \Mux332~719_combout\ : std_logic;
SIGNAL \Mux332~720_combout\ : std_logic;
SIGNAL \Mux325~33_combout\ : std_logic;
SIGNAL \Mux325~38_combout\ : std_logic;
SIGNAL \Mux325~39_combout\ : std_logic;
SIGNAL \Mux325~40_combout\ : std_logic;
SIGNAL \Mux325~37_combout\ : std_logic;
SIGNAL \Mux332~721_combout\ : std_logic;
SIGNAL \Mux332~722_combout\ : std_logic;
SIGNAL \Mux332~723_combout\ : std_logic;
SIGNAL \Mux325~41_combout\ : std_logic;
SIGNAL \Mux325~34_combout\ : std_logic;
SIGNAL \Mux325~35_combout\ : std_logic;
SIGNAL \Mux332~959_combout\ : std_logic;
SIGNAL \Mux332~960_combout\ : std_logic;
SIGNAL \Mux325~36_combout\ : std_logic;
SIGNAL \Mux327~4_combout\ : std_logic;
SIGNAL \Mux327~5_combout\ : std_logic;
SIGNAL \Mux327~6_combout\ : std_logic;
SIGNAL \Mux327~9_combout\ : std_logic;
SIGNAL \Mux325~72_combout\ : std_logic;
SIGNAL \Mux325~73_combout\ : std_logic;
SIGNAL \Mux325~69_combout\ : std_logic;
SIGNAL \Mux325~70_combout\ : std_logic;
SIGNAL \Mux325~71_combout\ : std_logic;
SIGNAL \Mux325~74_combout\ : std_logic;
SIGNAL \Mux149~0_combout\ : std_logic;
SIGNAL \Mux138~0_combout\ : std_logic;
SIGNAL \Mux332~837_combout\ : std_logic;
SIGNAL \Mux141~0_combout\ : std_logic;
SIGNAL \Mux332~838_combout\ : std_logic;
SIGNAL \Mux134~0_combout\ : std_logic;
SIGNAL \Mux332~833_combout\ : std_logic;
SIGNAL \Mux142~0_combout\ : std_logic;
SIGNAL \Mux332~834_combout\ : std_logic;
SIGNAL \Mux332~944_combout\ : std_logic;
SIGNAL \Mux332~945_combout\ : std_logic;
SIGNAL \Mux332~835_combout\ : std_logic;
SIGNAL \Mux332~836_combout\ : std_logic;
SIGNAL \Mux325~81_combout\ : std_logic;
SIGNAL \Mux325~82_combout\ : std_logic;
SIGNAL \Mux325~84_combout\ : std_logic;
SIGNAL \Mux332~843_combout\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \Mux108~1_combout\ : std_logic;
SIGNAL \Mux332~844_combout\ : std_logic;
SIGNAL \Mux325~85_combout\ : std_logic;
SIGNAL \Mux332~839_combout\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \Mux332~840_combout\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \Mux332~841_combout\ : std_logic;
SIGNAL \Mux332~842_combout\ : std_logic;
SIGNAL \Mux325~83_combout\ : std_logic;
SIGNAL \Mux325~86_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux332~807_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux332~808_combout\ : std_logic;
SIGNAL \Mux332~809_combout\ : std_logic;
SIGNAL \Mux332~941_combout\ : std_logic;
SIGNAL \Mux332~810_combout\ : std_logic;
SIGNAL \Mux332~811_combout\ : std_logic;
SIGNAL \Mux332~812_combout\ : std_logic;
SIGNAL \Mux332~813_combout\ : std_logic;
SIGNAL \Mux332~814_combout\ : std_logic;
SIGNAL \Mux325~75_combout\ : std_logic;
SIGNAL \Mux332~816_combout\ : std_logic;
SIGNAL \Mux332~815_combout\ : std_logic;
SIGNAL \Mux332~817_combout\ : std_logic;
SIGNAL \Mux325~76_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux332~826_combout\ : std_logic;
SIGNAL \Mux332~827_combout\ : std_logic;
SIGNAL \Mux332~942_combout\ : std_logic;
SIGNAL \Mux332~943_combout\ : std_logic;
SIGNAL \Mux332~828_combout\ : std_logic;
SIGNAL \Mux332~829_combout\ : std_logic;
SIGNAL \Mux325~78_combout\ : std_logic;
SIGNAL \Mux332~831_combout\ : std_logic;
SIGNAL \Mux332~830_combout\ : std_logic;
SIGNAL \Mux332~832_combout\ : std_logic;
SIGNAL \Mux325~79_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux332~822_combout\ : std_logic;
SIGNAL \Mux332~376_combout\ : std_logic;
SIGNAL \Mux332~823_combout\ : std_logic;
SIGNAL \Mux332~824_combout\ : std_logic;
SIGNAL \Mux332~825_combout\ : std_logic;
SIGNAL \Mux332~818_combout\ : std_logic;
SIGNAL \Mux332~819_combout\ : std_logic;
SIGNAL \Mux332~820_combout\ : std_logic;
SIGNAL \Mux332~821_combout\ : std_logic;
SIGNAL \Mux325~77_combout\ : std_logic;
SIGNAL \Mux325~80_combout\ : std_logic;
SIGNAL \Mux326~2_combout\ : std_logic;
SIGNAL \Mux326~3_combout\ : std_logic;
SIGNAL \Mux332~938_combout\ : std_logic;
SIGNAL \Mux325~55_combout\ : std_logic;
SIGNAL \Mux332~758_combout\ : std_logic;
SIGNAL \Mux332~759_combout\ : std_logic;
SIGNAL \Mux263~0_combout\ : std_logic;
SIGNAL \Mux332~760_combout\ : std_logic;
SIGNAL \Mux325~56_combout\ : std_logic;
SIGNAL \Mux325~57_combout\ : std_logic;
SIGNAL \Mux325~58_combout\ : std_logic;
SIGNAL \Mux325~59_combout\ : std_logic;
SIGNAL \Mux325~60_combout\ : std_logic;
SIGNAL \Mux332~763_combout\ : std_logic;
SIGNAL \Mux251~0_combout\ : std_logic;
SIGNAL \Mux332~764_combout\ : std_logic;
SIGNAL \Mux111~0_combout\ : std_logic;
SIGNAL \Mux332~761_combout\ : std_logic;
SIGNAL \Mux332~762_combout\ : std_logic;
SIGNAL \Mux325~61_combout\ : std_logic;
SIGNAL \Mux325~62_combout\ : std_logic;
SIGNAL \Mux182~0_combout\ : std_logic;
SIGNAL \Mux332~789_combout\ : std_logic;
SIGNAL \Mux332~790_combout\ : std_logic;
SIGNAL \Mux332~791_combout\ : std_logic;
SIGNAL \Mux332~792_combout\ : std_logic;
SIGNAL \Mux332~793_combout\ : std_logic;
SIGNAL \Mux332~940_combout\ : std_logic;
SIGNAL \Mux332~782_combout\ : std_logic;
SIGNAL \Mux332~783_combout\ : std_logic;
SIGNAL \Mux332~784_combout\ : std_logic;
SIGNAL \Mux332~785_combout\ : std_logic;
SIGNAL \Mux332~786_combout\ : std_logic;
SIGNAL \Mux162~0_combout\ : std_logic;
SIGNAL \Mux332~787_combout\ : std_logic;
SIGNAL \Mux332~788_combout\ : std_logic;
SIGNAL \Mux325~65_combout\ : std_logic;
SIGNAL \Mux178~0_combout\ : std_logic;
SIGNAL \Mux332~779_combout\ : std_logic;
SIGNAL \Mux332~780_combout\ : std_logic;
SIGNAL \Mux332~781_combout\ : std_logic;
SIGNAL \Mux325~66_combout\ : std_logic;
SIGNAL \Mux332~776_combout\ : std_logic;
SIGNAL \Mux332~777_combout\ : std_logic;
SIGNAL \Mux332~775_combout\ : std_logic;
SIGNAL \Mux332~778_combout\ : std_logic;
SIGNAL \Mux332~765_combout\ : std_logic;
SIGNAL \Mux332~766_combout\ : std_logic;
SIGNAL \Mux332~769_combout\ : std_logic;
SIGNAL \Mux206~0_combout\ : std_logic;
SIGNAL \Mux332~768_combout\ : std_logic;
SIGNAL \Mux332~770_combout\ : std_logic;
SIGNAL \Mux332~767_combout\ : std_logic;
SIGNAL \Mux332~771_combout\ : std_logic;
SIGNAL \Mux332~772_combout\ : std_logic;
SIGNAL \Mux332~939_combout\ : std_logic;
SIGNAL \Mux332~773_combout\ : std_logic;
SIGNAL \Mux332~774_combout\ : std_logic;
SIGNAL \Mux325~63_combout\ : std_logic;
SIGNAL \Mux325~64_combout\ : std_logic;
SIGNAL \Mux326~0_combout\ : std_logic;
SIGNAL \Mux332~794_combout\ : std_logic;
SIGNAL \Mux332~795_combout\ : std_logic;
SIGNAL \Mux332~796_combout\ : std_logic;
SIGNAL \Mux332~797_combout\ : std_logic;
SIGNAL \Mux332~805_combout\ : std_logic;
SIGNAL \Mux332~806_combout\ : std_logic;
SIGNAL \Mux332~802_combout\ : std_logic;
SIGNAL \Mux332~803_combout\ : std_logic;
SIGNAL \Mux332~801_combout\ : std_logic;
SIGNAL \Mux332~804_combout\ : std_logic;
SIGNAL \Mux281~0_combout\ : std_logic;
SIGNAL \Mux332~798_combout\ : std_logic;
SIGNAL \Mux332~799_combout\ : std_logic;
SIGNAL \Mux332~800_combout\ : std_logic;
SIGNAL \Mux325~67_combout\ : std_logic;
SIGNAL \Mux325~68_combout\ : std_logic;
SIGNAL \Mux326~1_combout\ : std_logic;
SIGNAL \Mux326~4_combout\ : std_logic;
SIGNAL \Mux332~886_combout\ : std_logic;
SIGNAL \Mux332~887_combout\ : std_logic;
SIGNAL \Mux332~873_combout\ : std_logic;
SIGNAL \Mux332~884_combout\ : std_logic;
SIGNAL \Mux332~885_combout\ : std_logic;
SIGNAL \Mux332~888_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux332~881_combout\ : std_logic;
SIGNAL \Mux332~880_combout\ : std_logic;
SIGNAL \Mux332~878_combout\ : std_logic;
SIGNAL \Mux332~879_combout\ : std_logic;
SIGNAL \Mux332~882_combout\ : std_logic;
SIGNAL \Mux332~952_combout\ : std_logic;
SIGNAL \Mux332~883_combout\ : std_logic;
SIGNAL \Mux325~111_combout\ : std_logic;
SIGNAL \Mux325~112_combout\ : std_logic;
SIGNAL \Mux332~955_combout\ : std_logic;
SIGNAL \Mux332~956_combout\ : std_logic;
SIGNAL \Mux332~954_combout\ : std_logic;
SIGNAL \Mux332~891_combout\ : std_logic;
SIGNAL \Mux332~953_combout\ : std_logic;
SIGNAL \Mux325~113_combout\ : std_logic;
SIGNAL \Mux332~889_combout\ : std_logic;
SIGNAL \Mux332~890_combout\ : std_logic;
SIGNAL \Mux325~114_combout\ : std_logic;
SIGNAL \Mux325~118_combout\ : std_logic;
SIGNAL \Mux325~134_combout\ : std_logic;
SIGNAL \Mux325~115_combout\ : std_logic;
SIGNAL \Mux325~116_combout\ : std_logic;
SIGNAL \Mux325~117_combout\ : std_logic;
SIGNAL \Mux325~119_combout\ : std_logic;
SIGNAL \Mux325~120_combout\ : std_logic;
SIGNAL \Mux325~121_combout\ : std_logic;
SIGNAL \Mux332~892_combout\ : std_logic;
SIGNAL \Mux332~893_combout\ : std_logic;
SIGNAL \Mux107~0_combout\ : std_logic;
SIGNAL \Mux332~896_combout\ : std_logic;
SIGNAL \Mux332~897_combout\ : std_logic;
SIGNAL \Mux332~895_combout\ : std_logic;
SIGNAL \Mux332~958_combout\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \Mux332~894_combout\ : std_logic;
SIGNAL \Mux332~957_combout\ : std_logic;
SIGNAL \Mux325~122_combout\ : std_logic;
SIGNAL \Mux325~123_combout\ : std_logic;
SIGNAL \Mux140~0_combout\ : std_logic;
SIGNAL \Mux332~898_combout\ : std_logic;
SIGNAL \Mux332~899_combout\ : std_logic;
SIGNAL \Mux325~136_combout\ : std_logic;
SIGNAL \Mux325~126_combout\ : std_logic;
SIGNAL \Mux325~124_combout\ : std_logic;
SIGNAL \Mux325~135_combout\ : std_logic;
SIGNAL \Mux325~125_combout\ : std_logic;
SIGNAL \Mux325~127_combout\ : std_logic;
SIGNAL \Mux325~128_combout\ : std_logic;
SIGNAL \Mux332~876_combout\ : std_logic;
SIGNAL \Mux332~877_combout\ : std_logic;
SIGNAL \Mux332~874_combout\ : std_logic;
SIGNAL \Mux332~875_combout\ : std_logic;
SIGNAL \Mux325~107_combout\ : std_logic;
SIGNAL \Mux325~108_combout\ : std_logic;
SIGNAL \Mux332~870_combout\ : std_logic;
SIGNAL \Mux332~871_combout\ : std_logic;
SIGNAL \Mux332~872_combout\ : std_logic;
SIGNAL \Mux325~104_combout\ : std_logic;
SIGNAL \Mux296~0_combout\ : std_logic;
SIGNAL \Mux325~105_combout\ : std_logic;
SIGNAL \Mux325~133_combout\ : std_logic;
SIGNAL \Mux325~106_combout\ : std_logic;
SIGNAL \Mux325~109_combout\ : std_logic;
SIGNAL \Mux262~0_combout\ : std_logic;
SIGNAL \Mux332~854_combout\ : std_logic;
SIGNAL \Mux332~947_combout\ : std_logic;
SIGNAL \Mux332~948_combout\ : std_logic;
SIGNAL \Mux332~853_combout\ : std_logic;
SIGNAL \Mux332~946_combout\ : std_logic;
SIGNAL \Mux243~0_combout\ : std_logic;
SIGNAL \Mux332~851_combout\ : std_logic;
SIGNAL \Mux332~847_combout\ : std_logic;
SIGNAL \Mux332~848_combout\ : std_logic;
SIGNAL \Mux332~849_combout\ : std_logic;
SIGNAL \Mux332~850_combout\ : std_logic;
SIGNAL \Mux332~852_combout\ : std_logic;
SIGNAL \Mux325~87_combout\ : std_logic;
SIGNAL \Mux332~845_combout\ : std_logic;
SIGNAL \Mux332~846_combout\ : std_logic;
SIGNAL \Mux325~88_combout\ : std_logic;
SIGNAL \Mux332~866_combout\ : std_logic;
SIGNAL \Mux332~867_combout\ : std_logic;
SIGNAL \Mux161~0_combout\ : std_logic;
SIGNAL \Mux332~864_combout\ : std_logic;
SIGNAL \Mux332~865_combout\ : std_logic;
SIGNAL \Mux332~951_combout\ : std_logic;
SIGNAL \Mux325~95_combout\ : std_logic;
SIGNAL \Mux332~863_combout\ : std_logic;
SIGNAL \Mux332~950_combout\ : std_logic;
SIGNAL \Mux325~96_combout\ : std_logic;
SIGNAL \Mux325~99_combout\ : std_logic;
SIGNAL \Mux325~100_combout\ : std_logic;
SIGNAL \Mux181~0_combout\ : std_logic;
SIGNAL \Mux332~868_combout\ : std_logic;
SIGNAL \Mux332~869_combout\ : std_logic;
SIGNAL \Mux325~101_combout\ : std_logic;
SIGNAL \Mux325~131_combout\ : std_logic;
SIGNAL \Mux325~97_combout\ : std_logic;
SIGNAL \Mux325~132_combout\ : std_logic;
SIGNAL \Mux325~98_combout\ : std_logic;
SIGNAL \Mux325~102_combout\ : std_logic;
SIGNAL \Mux332~855_combout\ : std_logic;
SIGNAL \Mux332~856_combout\ : std_logic;
SIGNAL \Mux332~857_combout\ : std_logic;
SIGNAL \Mux325~89_combout\ : std_logic;
SIGNAL \Mux332~858_combout\ : std_logic;
SIGNAL \Mux332~949_combout\ : std_logic;
SIGNAL \Mux325~90_combout\ : std_logic;
SIGNAL \Mux325~92_combout\ : std_logic;
SIGNAL \Mux325~93_combout\ : std_logic;
SIGNAL \Mux332~859_combout\ : std_logic;
SIGNAL \Mux332~860_combout\ : std_logic;
SIGNAL \Mux332~861_combout\ : std_logic;
SIGNAL \Mux332~862_combout\ : std_logic;
SIGNAL \Mux325~91_combout\ : std_logic;
SIGNAL \Mux325~94_combout\ : std_logic;
SIGNAL \Mux325~103_combout\ : std_logic;
SIGNAL \Mux325~110_combout\ : std_logic;
SIGNAL \Mux325~129_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ascii_ucode <= ascii_ucode;
ww_row <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(row, 4);
char_line <= ww_char_line;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X67_Y73_N2
\char_line[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux332~159_combout\,
	devoe => ww_devoe,
	o => \char_line[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\char_line[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux331~26_combout\,
	devoe => ww_devoe,
	o => \char_line[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\char_line[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux330~4_combout\,
	devoe => ww_devoe,
	o => \char_line[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\char_line[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux329~20_combout\,
	devoe => ww_devoe,
	o => \char_line[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\char_line[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux328~20_combout\,
	devoe => ww_devoe,
	o => \char_line[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\char_line[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux327~9_combout\,
	devoe => ww_devoe,
	o => \char_line[5]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\char_line[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux326~4_combout\,
	devoe => ww_devoe,
	o => \char_line[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\char_line[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux325~129_combout\,
	devoe => ww_devoe,
	o => \char_line[7]~output_o\);

-- Location: IOIBUF_X72_Y73_N8
\ascii_ucode[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(6),
	o => \ascii_ucode[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\ascii_ucode[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(4),
	o => \ascii_ucode[4]~input_o\);

-- Location: LCCOMB_X67_Y67_N26
\Mux332~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~124_combout\ = (\ascii_ucode[6]~input_o\ & \ascii_ucode[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[6]~input_o\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux332~124_combout\);

-- Location: IOIBUF_X62_Y73_N22
\row[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(1),
	o => \row[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\row[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(3),
	o => \row[3]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\row[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(0),
	o => \row[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\row[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(2),
	o => \row[2]~input_o\);

-- Location: LCCOMB_X61_Y67_N24
\Mux319~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~0_combout\ = (!\row[1]~input_o\ & (\row[3]~input_o\ & (!\row[0]~input_o\ & !\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux319~0_combout\);

-- Location: IOIBUF_X65_Y73_N8
\ascii_ucode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(0),
	o => \ascii_ucode[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\ascii_ucode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(2),
	o => \ascii_ucode[2]~input_o\);

-- Location: LCCOMB_X66_Y64_N16
\Mux332~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~123_combout\ = (\ascii_ucode[0]~input_o\ & \ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	combout => \Mux332~123_combout\);

-- Location: IOIBUF_X58_Y73_N22
\ascii_ucode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(1),
	o => \ascii_ucode[1]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\ascii_ucode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(3),
	o => \ascii_ucode[3]~input_o\);

-- Location: LCCOMB_X67_Y67_N24
\Mux332~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~122_combout\ = (!\ascii_ucode[1]~input_o\ & !\ascii_ucode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~122_combout\);

-- Location: LCCOMB_X67_Y67_N12
\Mux332~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~125_combout\ = (\Mux332~124_combout\ & (\Mux319~0_combout\ & (\Mux332~123_combout\ & \Mux332~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~124_combout\,
	datab => \Mux319~0_combout\,
	datac => \Mux332~123_combout\,
	datad => \Mux332~122_combout\,
	combout => \Mux332~125_combout\);

-- Location: LCCOMB_X59_Y60_N0
\Mux319~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~3_combout\ = (!\row[1]~input_o\ & (!\row[3]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux319~3_combout\);

-- Location: LCCOMB_X61_Y67_N18
\Mux228~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux228~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & (\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux228~0_combout\);

-- Location: LCCOMB_X63_Y64_N28
\Mux332~900\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~900_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux319~3_combout\ & (!\ascii_ucode[0]~input_o\))) # (!\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\ & \Mux228~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux228~0_combout\,
	combout => \Mux332~900_combout\);

-- Location: LCCOMB_X67_Y61_N16
\Mux317~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux317~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\ & !\row[1]~input_o\)))) # (!\row[3]~input_o\ & (\row[0]~input_o\ & (\row[2]~input_o\ & \row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux317~0_combout\);

-- Location: LCCOMB_X62_Y61_N0
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((!\row[0]~input_o\) # (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X62_Y61_N2
\Mux332~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~141_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux317~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux24~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux317~0_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux332~141_combout\);

-- Location: LCCOMB_X63_Y64_N30
\Mux332~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~142_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux332~900_combout\ & (!\ascii_ucode[4]~input_o\))) # (!\ascii_ucode[3]~input_o\ & (((\ascii_ucode[4]~input_o\ & \Mux332~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~900_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux332~141_combout\,
	combout => \Mux332~142_combout\);

-- Location: LCCOMB_X62_Y68_N16
\Mux319~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~2_combout\ = (!\row[0]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux319~2_combout\);

-- Location: LCCOMB_X63_Y64_N20
\Mux331~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~3_combout\ = (!\ascii_ucode[0]~input_o\ & (\Mux319~2_combout\ & (\ascii_ucode[2]~input_o\ & \Mux332~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~2_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~122_combout\,
	combout => \Mux331~3_combout\);

-- Location: LCCOMB_X63_Y64_N16
\Mux332~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~143_combout\ = (\Mux332~142_combout\ & ((\ascii_ucode[1]~input_o\) # ((\Mux331~3_combout\ & !\ascii_ucode[4]~input_o\)))) # (!\Mux332~142_combout\ & (\Mux331~3_combout\ & (!\ascii_ucode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~142_combout\,
	datab => \Mux331~3_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~143_combout\);

-- Location: LCCOMB_X63_Y64_N2
\Mux332~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~139_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\row[0]~input_o\))) # (!\ascii_ucode[1]~input_o\ & (\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~139_combout\);

-- Location: LCCOMB_X63_Y64_N24
\Mux331~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~2_combout\ = (!\ascii_ucode[4]~input_o\ & \ascii_ucode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datac => \ascii_ucode[3]~input_o\,
	combout => \Mux331~2_combout\);

-- Location: LCCOMB_X63_Y64_N26
\Mux332~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~144_combout\ = (\ascii_ucode[6]~input_o\ & (((\Mux332~139_combout\ & \Mux331~2_combout\)))) # (!\ascii_ucode[6]~input_o\ & (\Mux332~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~143_combout\,
	datab => \Mux332~139_combout\,
	datac => \ascii_ucode[6]~input_o\,
	datad => \Mux331~2_combout\,
	combout => \Mux332~144_combout\);

-- Location: IOIBUF_X60_Y73_N15
\ascii_ucode[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(5),
	o => \ascii_ucode[5]~input_o\);

-- Location: LCCOMB_X59_Y59_N24
\Mux319~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~1_combout\ = (!\row[1]~input_o\ & (\row[3]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux319~1_combout\);

-- Location: LCCOMB_X67_Y67_N20
\Mux332~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~137_combout\ = (\Mux319~1_combout\ & (\ascii_ucode[6]~input_o\ & !\ascii_ucode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~1_combout\,
	datab => \ascii_ucode[6]~input_o\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux332~137_combout\);

-- Location: LCCOMB_X63_Y65_N24
\Mux332~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~136_combout\ = (!\ascii_ucode[2]~input_o\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~136_combout\);

-- Location: LCCOMB_X68_Y64_N0
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (!\row[0]~input_o\ & (\row[3]~input_o\ & !\row[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X61_Y68_N0
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\) # ((\row[2]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X59_Y67_N4
\Mux332~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~130_combout\ = (\Mux45~0_combout\) # (\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux45~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~130_combout\);

-- Location: LCCOMB_X59_Y67_N18
\Mux332~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~129_combout\ = (\Mux319~0_combout\) # (!\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux319~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~129_combout\);

-- Location: LCCOMB_X59_Y67_N6
\Mux332~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~131_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~129_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~130_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~129_combout\,
	combout => \Mux332~131_combout\);

-- Location: LCCOMB_X59_Y67_N8
\Mux332~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~128_combout\ = (\Mux45~0_combout\) # (!\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux45~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~128_combout\);

-- Location: LCCOMB_X61_Y68_N2
\Mux332~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~132_combout\ = (!\row[0]~input_o\ & (\row[3]~input_o\ & (!\row[2]~input_o\ & \ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~132_combout\);

-- Location: LCCOMB_X59_Y67_N24
\Mux332~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~133_combout\ = (\Mux332~131_combout\ & (((\Mux332~132_combout\)) # (!\ascii_ucode[1]~input_o\))) # (!\Mux332~131_combout\ & (\ascii_ucode[1]~input_o\ & (!\Mux332~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~131_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~128_combout\,
	datad => \Mux332~132_combout\,
	combout => \Mux332~133_combout\);

-- Location: LCCOMB_X67_Y67_N0
\Mux332~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~134_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux319~0_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux332~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux319~0_combout\,
	datac => \Mux332~133_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~134_combout\);

-- Location: LCCOMB_X66_Y66_N0
\Mux332~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~126_combout\ = (\ascii_ucode[1]~input_o\ & (((!\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (!\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\ & \ascii_ucode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux332~126_combout\);

-- Location: LCCOMB_X67_Y67_N22
\Mux332~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~127_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux332~126_combout\ & ((\ascii_ucode[4]~input_o\) # (!\Mux332~123_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~126_combout\,
	datac => \Mux332~123_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux332~127_combout\);

-- Location: LCCOMB_X67_Y67_N18
\Mux332~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~135_combout\ = (!\ascii_ucode[6]~input_o\ & ((\Mux332~127_combout\ & (\Mux51~0_combout\)) # (!\Mux332~127_combout\ & ((\Mux332~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux332~134_combout\,
	datac => \Mux332~127_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux332~135_combout\);

-- Location: LCCOMB_X67_Y67_N14
\Mux332~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~138_combout\ = (\Mux332~135_combout\) # ((\Mux332~122_combout\ & (\Mux332~137_combout\ & \Mux332~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~122_combout\,
	datab => \Mux332~137_combout\,
	datac => \Mux332~136_combout\,
	datad => \Mux332~135_combout\,
	combout => \Mux332~138_combout\);

-- Location: IOIBUF_X67_Y73_N8
\ascii_ucode[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ascii_ucode(7),
	o => \ascii_ucode[7]~input_o\);

-- Location: LCCOMB_X67_Y67_N8
\Mux332~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~145_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux332~138_combout\) # (\ascii_ucode[7]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux332~144_combout\ & ((!\ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~144_combout\,
	datab => \ascii_ucode[5]~input_o\,
	datac => \Mux332~138_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux332~145_combout\);

-- Location: LCCOMB_X66_Y63_N8
\Mux323~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~0_combout\ = \row[3]~input_o\ $ (((\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux323~0_combout\);

-- Location: LCCOMB_X66_Y66_N2
\Mux332~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~150_combout\ = (\Mux323~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~150_combout\);

-- Location: LCCOMB_X66_Y67_N16
\Mux332~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~147_combout\ = (\ascii_ucode[0]~input_o\ & \Mux323~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datad => \Mux323~0_combout\,
	combout => \Mux332~147_combout\);

-- Location: LCCOMB_X66_Y67_N10
\Mux332~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~148_combout\ = (\row[3]~input_o\ & (\ascii_ucode[0]~input_o\ & (!\row[1]~input_o\ & !\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~148_combout\);

-- Location: LCCOMB_X66_Y67_N4
\Mux332~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~149_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~147_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~148_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~147_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~148_combout\,
	combout => \Mux332~149_combout\);

-- Location: LCCOMB_X60_Y65_N24
\Mux332~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~146_combout\ = (!\ascii_ucode[0]~input_o\ & \Mux317~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux317~0_combout\,
	combout => \Mux332~146_combout\);

-- Location: LCCOMB_X66_Y67_N30
\Mux332~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~151_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~149_combout\ & (\Mux332~150_combout\)) # (!\Mux332~149_combout\ & ((\Mux332~146_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~150_combout\,
	datac => \Mux332~149_combout\,
	datad => \Mux332~146_combout\,
	combout => \Mux332~151_combout\);

-- Location: LCCOMB_X60_Y62_N8
\Mux203~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux203~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\ $ (\row[2]~input_o\)))) # (!\row[1]~input_o\ & ((\row[3]~input_o\) # ((\row[0]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux203~0_combout\);

-- Location: LCCOMB_X63_Y66_N24
\Mux294~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux294~0_combout\ = (!\row[0]~input_o\ & ((\row[3]~input_o\ & ((!\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux294~0_combout\);

-- Location: LCCOMB_X63_Y66_N26
\Mux332~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~152_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux203~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux294~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux203~0_combout\,
	datab => \Mux294~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~152_combout\);

-- Location: LCCOMB_X68_Y66_N8
\Mux229~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux229~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & (!\row[2]~input_o\ & \row[0]~input_o\)) # (!\row[1]~input_o\ & (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux229~0_combout\);

-- Location: LCCOMB_X63_Y66_N28
\Mux332~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~153_combout\ = (!\ascii_ucode[2]~input_o\ & ((\Mux332~152_combout\ & (!\ascii_ucode[1]~input_o\)) # (!\Mux332~152_combout\ & (\ascii_ucode[1]~input_o\ & \Mux229~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~152_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux229~0_combout\,
	combout => \Mux332~153_combout\);

-- Location: LCCOMB_X67_Y67_N10
\Mux332~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~154_combout\ = (\ascii_ucode[3]~input_o\ & (((\Mux332~151_combout\)))) # (!\ascii_ucode[3]~input_o\ & ((\Mux332~123_combout\) # ((\Mux332~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~123_combout\,
	datab => \Mux332~151_combout\,
	datac => \Mux332~153_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~154_combout\);

-- Location: LCCOMB_X63_Y65_N2
\Mux217~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux217~0_combout\ = (\row[3]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & ((\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux217~0_combout\);

-- Location: LCCOMB_X68_Y64_N18
\Mux319~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~4_combout\ = (!\row[0]~input_o\ & (\row[1]~input_o\ & (!\row[3]~input_o\ & !\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux319~4_combout\);

-- Location: LCCOMB_X67_Y67_N28
\Mux332~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~155_combout\ = (\Mux319~4_combout\ & (\Mux332~122_combout\ & (\Mux332~136_combout\ & !\ascii_ucode[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~4_combout\,
	datab => \Mux332~122_combout\,
	datac => \Mux332~136_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux332~155_combout\);

-- Location: LCCOMB_X67_Y67_N6
\Mux332~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~156_combout\ = (!\ascii_ucode[2]~input_o\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~156_combout\);

-- Location: LCCOMB_X67_Y67_N16
\Mux332~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~157_combout\ = (\ascii_ucode[3]~input_o\ & (\ascii_ucode[1]~input_o\ & \ascii_ucode[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux332~157_combout\);

-- Location: LCCOMB_X67_Y67_N2
\Mux332~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~158_combout\ = (\Mux332~155_combout\) # ((\Mux217~0_combout\ & (\Mux332~156_combout\ & \Mux332~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux332~155_combout\,
	datac => \Mux332~156_combout\,
	datad => \Mux332~157_combout\,
	combout => \Mux332~158_combout\);

-- Location: LCCOMB_X67_Y67_N30
\Mux332~901\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~901_combout\ = (\ascii_ucode[4]~input_o\ & (\Mux332~154_combout\ & (\ascii_ucode[6]~input_o\))) # (!\ascii_ucode[4]~input_o\ & (((\Mux332~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~154_combout\,
	datab => \ascii_ucode[6]~input_o\,
	datac => \Mux332~158_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux332~901_combout\);

-- Location: LCCOMB_X67_Y67_N4
\Mux332~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~159_combout\ = (\Mux332~145_combout\ & (((\Mux332~901_combout\) # (!\ascii_ucode[7]~input_o\)))) # (!\Mux332~145_combout\ & (\Mux332~125_combout\ & ((\ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~125_combout\,
	datab => \Mux332~145_combout\,
	datac => \Mux332~901_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux332~159_combout\);

-- Location: LCCOMB_X59_Y63_N24
\Mux268~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux268~0_combout\ = (\row[1]~input_o\ & (!\row[0]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux268~0_combout\);

-- Location: LCCOMB_X60_Y68_N2
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\row[2]~input_o\ & (((!\row[1]~input_o\ & !\row[0]~input_o\)) # (!\row[3]~input_o\))) # (!\row[2]~input_o\ & (\row[1]~input_o\ & ((\row[0]~input_o\) # (!\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X60_Y68_N12
\Mux332~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~233_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[3]~input_o\) # (\Mux56~0_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux268~0_combout\ & (!\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux268~0_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux56~0_combout\,
	combout => \Mux332~233_combout\);

-- Location: LCCOMB_X60_Y68_N0
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & \row[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X68_Y64_N12
\Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((\row[0]~input_o\) # (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux78~0_combout\);

-- Location: LCCOMB_X60_Y68_N22
\Mux332~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~234_combout\ = (\Mux332~233_combout\ & (((\Mux78~0_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux332~233_combout\ & (\Mux70~0_combout\ & (\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~233_combout\,
	datab => \Mux70~0_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux78~0_combout\,
	combout => \Mux332~234_combout\);

-- Location: LCCOMB_X63_Y69_N16
\Mux274~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux274~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux274~0_combout\);

-- Location: LCCOMB_X60_Y68_N26
\Mux332~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~239_combout\ = (\ascii_ucode[1]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux319~3_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux274~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux274~0_combout\,
	combout => \Mux332~239_combout\);

-- Location: LCCOMB_X61_Y67_N28
\Mux187~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux187~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux187~0_combout\);

-- Location: LCCOMB_X60_Y68_N28
\Mux332~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~240_combout\ = (\Mux332~239_combout\) # ((!\ascii_ucode[1]~input_o\ & \Mux187~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~239_combout\,
	datad => \Mux187~0_combout\,
	combout => \Mux332~240_combout\);

-- Location: LCCOMB_X61_Y67_N0
\Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ $ (!\row[0]~input_o\)) # (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux76~0_combout\);

-- Location: LCCOMB_X60_Y68_N6
\Mux332~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~237_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[3]~input_o\ & \Mux76~0_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux319~0_combout\ & (!\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux76~0_combout\,
	combout => \Mux332~237_combout\);

-- Location: LCCOMB_X60_Y68_N24
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\row[2]~input_o\ & (!\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[0]~input_o\)))) # (!\row[2]~input_o\ & (\row[1]~input_o\ & (\row[3]~input_o\ $ (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X60_Y68_N10
\Mux332~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~235_combout\ = (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux319~3_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux63~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux63~0_combout\,
	combout => \Mux332~235_combout\);

-- Location: LCCOMB_X65_Y68_N16
\Mux319~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~7_combout\ = (\row[3]~input_o\ & (\row[0]~input_o\ & (!\row[1]~input_o\ & !\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux319~7_combout\);

-- Location: LCCOMB_X60_Y68_N4
\Mux332~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~236_combout\ = (\Mux332~235_combout\) # ((\Mux319~7_combout\ & (!\ascii_ucode[3]~input_o\ & \ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~235_combout\,
	datab => \Mux319~7_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~236_combout\);

-- Location: LCCOMB_X60_Y68_N16
\Mux332~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~238_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~236_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~237_combout\,
	datab => \Mux332~236_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~238_combout\);

-- Location: LCCOMB_X60_Y68_N30
\Mux332~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~241_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~238_combout\ & ((\Mux332~240_combout\))) # (!\Mux332~238_combout\ & (\Mux332~234_combout\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~234_combout\,
	datab => \Mux332~240_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~238_combout\,
	combout => \Mux332~241_combout\);

-- Location: LCCOMB_X60_Y67_N24
\Mux332~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~242_combout\ = (\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\)) # (!\row[0]~input_o\))) # (!\ascii_ucode[0]~input_o\ & (((!\Mux45~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \Mux45~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~242_combout\);

-- Location: LCCOMB_X60_Y67_N10
\Mux332~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~243_combout\ = (!\ascii_ucode[1]~input_o\ & \Mux332~242_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~242_combout\,
	combout => \Mux332~243_combout\);

-- Location: LCCOMB_X60_Y67_N28
\Mux332~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~244_combout\ = (\ascii_ucode[1]~input_o\ & (!\ascii_ucode[0]~input_o\ & (!\row[0]~input_o\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~244_combout\);

-- Location: LCCOMB_X61_Y67_N10
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\row[3]~input_o\ & ((\row[2]~input_o\) # ((\row[1]~input_o\ & \row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X60_Y67_N12
\Mux332~963\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~963_combout\ = (\ascii_ucode[1]~input_o\ & (((!\ascii_ucode[2]~input_o\) # (!\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\) # (!\Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux47~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~963_combout\);

-- Location: LCCOMB_X60_Y67_N6
\Mux332~964\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~964_combout\ = (\Mux332~963_combout\ & ((\ascii_ucode[2]~input_o\) # ((\row[3]~input_o\ & \ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~963_combout\,
	datab => \row[3]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~964_combout\);

-- Location: LCCOMB_X60_Y67_N14
\Mux331~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~16_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~243_combout\) # ((\Mux332~244_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~964_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~243_combout\,
	datab => \Mux332~244_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~964_combout\,
	combout => \Mux331~16_combout\);

-- Location: LCCOMB_X60_Y67_N0
\Mux331~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~17_combout\ = (\ascii_ucode[4]~input_o\ & (\Mux332~241_combout\)) # (!\ascii_ucode[4]~input_o\ & ((\Mux331~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~241_combout\,
	datab => \Mux331~16_combout\,
	datac => \ascii_ucode[4]~input_o\,
	combout => \Mux331~17_combout\);

-- Location: LCCOMB_X66_Y66_N4
\Mux290~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux290~0_combout\ = (\row[1]~input_o\ & (\row[0]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux290~0_combout\);

-- Location: LCCOMB_X66_Y67_N0
\Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & (!\row[1]~input_o\)) # (!\row[0]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux89~0_combout\);

-- Location: LCCOMB_X66_Y67_N24
\Mux248~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux248~0_combout\ = (!\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux248~0_combout\);

-- Location: LCCOMB_X66_Y67_N18
\Mux332~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~281_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux248~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux89~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux89~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux248~0_combout\,
	combout => \Mux332~281_combout\);

-- Location: LCCOMB_X67_Y61_N10
\Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (\row[2]~input_o\ & ((\row[0]~input_o\ & ((!\row[1]~input_o\) # (!\row[3]~input_o\))) # (!\row[0]~input_o\ & ((\row[1]~input_o\))))) # (!\row[2]~input_o\ & (((\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux98~0_combout\);

-- Location: LCCOMB_X63_Y60_N18
\Mux332~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~282_combout\ = (\Mux332~281_combout\ & (((\Mux98~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~281_combout\ & (\Mux290~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux290~0_combout\,
	datab => \Mux332~281_combout\,
	datac => \Mux98~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~282_combout\);

-- Location: LCCOMB_X59_Y63_N28
\Mux147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\ & !\row[0]~input_o\)) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux147~0_combout\);

-- Location: LCCOMB_X63_Y60_N28
\Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & (!\row[1]~input_o\)) # (!\row[0]~input_o\ & ((\row[1]~input_o\) # (!\row[2]~input_o\))))) # (!\row[3]~input_o\ & (((\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux100~0_combout\);

-- Location: LCCOMB_X59_Y63_N18
\Mux319~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~8_combout\ = (!\row[1]~input_o\ & (!\row[3]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux319~8_combout\);

-- Location: LCCOMB_X63_Y60_N6
\Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((\row[0]~input_o\) # (\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[0]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux93~0_combout\);

-- Location: LCCOMB_X57_Y60_N4
\Mux332~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~279_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux319~8_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux93~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux319~8_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux93~0_combout\,
	combout => \Mux332~279_combout\);

-- Location: LCCOMB_X63_Y60_N8
\Mux332~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~280_combout\ = (\Mux332~279_combout\ & ((\Mux147~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~279_combout\ & (((\Mux100~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datab => \Mux100~0_combout\,
	datac => \Mux332~279_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~280_combout\);

-- Location: LCCOMB_X62_Y60_N20
\Mux332~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~283_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~280_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~282_combout\,
	datac => \Mux332~280_combout\,
	combout => \Mux332~283_combout\);

-- Location: LCCOMB_X65_Y63_N16
\Mux316~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux316~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux316~0_combout\);

-- Location: LCCOMB_X68_Y65_N24
\Mux316~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux316~1_combout\ = (!\row[1]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	combout => \Mux316~1_combout\);

-- Location: LCCOMB_X65_Y63_N0
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\row[3]~input_o\ & (((!\row[1]~input_o\ & !\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X65_Y63_N26
\Mux332~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~277_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux316~0_combout\) # ((\Mux316~1_combout\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux316~0_combout\,
	datac => \Mux316~1_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux332~277_combout\);

-- Location: LCCOMB_X57_Y64_N6
\Mux264~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux264~0_combout\ = (!\row[1]~input_o\ & ((\row[0]~input_o\ & ((\row[3]~input_o\))) # (!\row[0]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux264~0_combout\);

-- Location: LCCOMB_X59_Y60_N10
\Mux332~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~275_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux264~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux187~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux187~0_combout\,
	datac => \Mux264~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~275_combout\);

-- Location: LCCOMB_X61_Y60_N2
\Mux332~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~276_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~275_combout\) # (\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux319~3_combout\ & ((!\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \Mux332~275_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~276_combout\);

-- Location: LCCOMB_X59_Y59_N30
\Mux126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\)) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux126~0_combout\);

-- Location: LCCOMB_X62_Y60_N18
\Mux332~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~274_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux126~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux187~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux126~0_combout\,
	datad => \Mux187~0_combout\,
	combout => \Mux332~274_combout\);

-- Location: LCCOMB_X61_Y60_N4
\Mux332~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~278_combout\ = (\Mux332~276_combout\ & ((\Mux332~277_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~276_combout\ & (((\ascii_ucode[1]~input_o\ & \Mux332~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~277_combout\,
	datab => \Mux332~276_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~274_combout\,
	combout => \Mux332~278_combout\);

-- Location: LCCOMB_X61_Y60_N22
\Mux331~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~23_combout\ = (\ascii_ucode[3]~input_o\ & (((\Mux332~278_combout\) # (\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~283_combout\ & ((!\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~283_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux332~278_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~23_combout\);

-- Location: LCCOMB_X61_Y60_N18
\Mux154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (\row[1]~input_o\ & ((\row[2]~input_o\ & (!\row[3]~input_o\)) # (!\row[2]~input_o\ & ((\row[0]~input_o\))))) # (!\row[1]~input_o\ & (\row[3]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux154~0_combout\);

-- Location: LCCOMB_X61_Y60_N28
\Mux332~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~285_combout\ = (\ascii_ucode[1]~input_o\ & \Mux154~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux154~0_combout\,
	combout => \Mux332~285_combout\);

-- Location: LCCOMB_X62_Y61_N16
\Mux170~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux170~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ & (!\row[2]~input_o\ & !\row[0]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[1]~input_o\ $ (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux170~0_combout\);

-- Location: LCCOMB_X61_Y60_N24
\Mux185~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux185~0_combout\ = (!\row[1]~input_o\ & ((\row[3]~input_o\ & ((!\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[0]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux185~0_combout\);

-- Location: LCCOMB_X61_Y60_N30
\Mux332~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~286_combout\ = (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux185~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux170~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux170~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux185~0_combout\,
	combout => \Mux332~286_combout\);

-- Location: LCCOMB_X61_Y60_N0
\Mux332~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~284_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[1]~input_o\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~284_combout\);

-- Location: LCCOMB_X61_Y60_N16
\Mux332~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~287_combout\ = (\Mux332~284_combout\ & (((\Mux332~285_combout\) # (\Mux332~286_combout\)))) # (!\Mux332~284_combout\ & (\Mux319~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \Mux332~285_combout\,
	datac => \Mux332~286_combout\,
	datad => \Mux332~284_combout\,
	combout => \Mux332~287_combout\);

-- Location: LCCOMB_X63_Y61_N2
\Mux316~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux316~3_combout\ = (!\row[1]~input_o\ & (\row[2]~input_o\ & \row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux316~3_combout\);

-- Location: LCCOMB_X61_Y60_N20
\Mux332~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~270_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux185~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux316~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux316~3_combout\,
	datab => \Mux185~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~270_combout\);

-- Location: LCCOMB_X68_Y64_N8
\Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & !\row[2]~input_o\)) # (!\row[3]~input_o\ & ((\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux116~0_combout\);

-- Location: LCCOMB_X66_Y63_N10
\Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ $ (((\row[0]~input_o\) # (!\row[2]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux119~0_combout\);

-- Location: LCCOMB_X66_Y63_N20
\Mux332~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~271_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux119~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux116~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux116~0_combout\,
	datad => \Mux119~0_combout\,
	combout => \Mux332~271_combout\);

-- Location: LCCOMB_X61_Y60_N6
\Mux332~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~272_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~270_combout\) # ((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((!\ascii_ucode[1]~input_o\ & \Mux332~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~270_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~271_combout\,
	combout => \Mux332~272_combout\);

-- Location: LCCOMB_X58_Y62_N8
\Mux319~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~5_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux319~5_combout\);

-- Location: LCCOMB_X62_Y60_N24
\Mux332~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~269_combout\ = (\Mux319~5_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux319~5_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~269_combout\);

-- Location: LCCOMB_X61_Y60_N8
\Mux332~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~273_combout\ = (\Mux332~272_combout\ & ((\Mux185~0_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~272_combout\ & (((\ascii_ucode[1]~input_o\ & \Mux332~269_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~272_combout\,
	datab => \Mux185~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~269_combout\,
	combout => \Mux332~273_combout\);

-- Location: LCCOMB_X61_Y60_N26
\Mux331~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~24_combout\ = (\Mux331~23_combout\ & ((\Mux332~287_combout\) # ((!\ascii_ucode[4]~input_o\)))) # (!\Mux331~23_combout\ & (((\Mux332~273_combout\ & \ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~23_combout\,
	datab => \Mux332~287_combout\,
	datac => \Mux332~273_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~24_combout\);

-- Location: LCCOMB_X61_Y64_N6
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\row[3]~input_o\ & (((\row[2]~input_o\) # (\row[1]~input_o\)) # (!\row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X61_Y67_N12
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ((!\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X63_Y67_N16
\Mux332~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~245_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux49~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux51~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Mux51~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~245_combout\);

-- Location: LCCOMB_X63_Y67_N10
\Mux332~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~246_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~245_combout\ & (\Mux48~0_combout\)) # (!\Mux332~245_combout\ & ((!\Mux319~7_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~7_combout\,
	datad => \Mux332~245_combout\,
	combout => \Mux332~246_combout\);

-- Location: LCCOMB_X60_Y70_N0
\Mux332~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~247_combout\ = (!\ascii_ucode[0]~input_o\ & ((\row[3]~input_o\) # (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~247_combout\);

-- Location: LCCOMB_X60_Y70_N10
\Mux332~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~248_combout\ = (!\ascii_ucode[1]~input_o\ & ((\Mux332~247_combout\) # ((!\Mux45~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~247_combout\,
	combout => \Mux332~248_combout\);

-- Location: LCCOMB_X63_Y67_N12
\Mux332~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~249_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~123_combout\ & (\row[3]~input_o\)) # (!\Mux332~123_combout\ & ((\Mux51~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~123_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \Mux51~0_combout\,
	combout => \Mux332~249_combout\);

-- Location: LCCOMB_X63_Y67_N22
\Mux332~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~250_combout\ = (\Mux332~248_combout\) # (\Mux332~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~248_combout\,
	datad => \Mux332~249_combout\,
	combout => \Mux332~250_combout\);

-- Location: LCCOMB_X63_Y67_N0
\Mux331~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~18_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~250_combout\))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux332~133_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~250_combout\,
	combout => \Mux331~18_combout\);

-- Location: LCCOMB_X66_Y68_N0
\Mux332~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~251_combout\ = (!\ascii_ucode[1]~input_o\ & !\ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~251_combout\);

-- Location: LCCOMB_X63_Y67_N2
\Mux332~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~252_combout\ = (\Mux332~251_combout\ & (((\Mux51~0_combout\)) # (!\ascii_ucode[0]~input_o\))) # (!\Mux332~251_combout\ & (((\Mux319~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~251_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~0_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux332~252_combout\);

-- Location: LCCOMB_X63_Y67_N4
\Mux331~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~19_combout\ = (\Mux331~18_combout\ & (((\Mux332~252_combout\) # (!\ascii_ucode[4]~input_o\)))) # (!\Mux331~18_combout\ & (\Mux332~246_combout\ & (\ascii_ucode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~246_combout\,
	datab => \Mux331~18_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux332~252_combout\,
	combout => \Mux331~19_combout\);

-- Location: LCCOMB_X63_Y61_N8
\Mux319~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~9_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & (!\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux319~9_combout\);

-- Location: LCCOMB_X68_Y66_N18
\Mux148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux148~0_combout\);

-- Location: LCCOMB_X63_Y64_N18
\Mux332~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~259_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux229~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux148~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux148~0_combout\,
	datad => \Mux229~0_combout\,
	combout => \Mux332~259_combout\);

-- Location: LCCOMB_X63_Y64_N4
\Mux332~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~260_combout\ = (\Mux332~259_combout\) # ((\Mux319~9_combout\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~9_combout\,
	datab => \Mux332~259_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~260_combout\);

-- Location: LCCOMB_X57_Y63_N8
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & (!\row[3]~input_o\)) # (!\row[1]~input_o\ & ((\row[0]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (!\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X58_Y63_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\)))) # (!\row[3]~input_o\ & (!\row[1]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X58_Y63_N10
\Mux332~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~262_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux29~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux29~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~262_combout\);

-- Location: LCCOMB_X58_Y63_N12
\Mux332~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~263_combout\ = (\Mux332~262_combout\) # ((\Mux332~136_combout\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~262_combout\,
	datab => \row[3]~input_o\,
	datac => \Mux332~136_combout\,
	datad => \row[2]~input_o\,
	combout => \Mux332~263_combout\);

-- Location: LCCOMB_X63_Y66_N18
\Mux211~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux211~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ $ (((\row[2]~input_o\))))) # (!\row[1]~input_o\ & (\row[3]~input_o\ & ((!\row[2]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux211~0_combout\);

-- Location: LCCOMB_X62_Y62_N8
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((!\row[2]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X68_Y61_N24
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & (\row[1]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X62_Y62_N10
\Mux332~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~261_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux34~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux34~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~261_combout\);

-- Location: LCCOMB_X62_Y62_N22
\Mux332~908\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~908_combout\ = (\Mux332~261_combout\) # ((\Mux211~0_combout\ & (!\ascii_ucode[0]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux211~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux332~261_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~908_combout\);

-- Location: LCCOMB_X63_Y64_N22
\Mux332~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~264_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[3]~input_o\) # (\Mux332~908_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~263_combout\ & (!\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~263_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~908_combout\,
	combout => \Mux332~264_combout\);

-- Location: LCCOMB_X65_Y60_N24
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\ & \row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X57_Y61_N26
\Mux171~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux171~0_combout\ = (!\row[0]~input_o\ & ((\row[3]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\)) # (!\row[3]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux171~0_combout\);

-- Location: LCCOMB_X65_Y60_N10
\Mux332~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~265_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux171~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux44~0_combout\,
	datac => \Mux171~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~265_combout\);

-- Location: LCCOMB_X68_Y62_N10
\Mux319~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~6_combout\ = (!\row[0]~input_o\ & (!\row[2]~input_o\ & (\row[3]~input_o\ & \row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux319~6_combout\);

-- Location: LCCOMB_X68_Y62_N28
\Mux253~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux253~0_combout\ = (\row[0]~input_o\ & (!\row[2]~input_o\ & (\row[3]~input_o\ & \row[1]~input_o\))) # (!\row[0]~input_o\ & (\row[2]~input_o\ & ((!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux253~0_combout\);

-- Location: LCCOMB_X68_Y62_N22
\Mux332~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~266_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux253~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~6_combout\,
	datad => \Mux253~0_combout\,
	combout => \Mux332~266_combout\);

-- Location: LCCOMB_X69_Y63_N0
\Mux332~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~267_combout\ = (\Mux332~265_combout\) # (\Mux332~266_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~265_combout\,
	datad => \Mux332~266_combout\,
	combout => \Mux332~267_combout\);

-- Location: LCCOMB_X63_Y64_N8
\Mux332~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~268_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~264_combout\ & ((\Mux332~267_combout\))) # (!\Mux332~264_combout\ & (\Mux332~260_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~260_combout\,
	datac => \Mux332~264_combout\,
	datad => \Mux332~267_combout\,
	combout => \Mux332~268_combout\);

-- Location: LCCOMB_X59_Y59_N4
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & (\row[1]~input_o\ $ (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (!\row[1]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X59_Y59_N2
\Mux184~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux184~0_combout\ = (!\row[1]~input_o\ & ((\row[3]~input_o\ & (!\row[2]~input_o\ & \row[0]~input_o\)) # (!\row[3]~input_o\ & (\row[2]~input_o\ & !\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux184~0_combout\);

-- Location: LCCOMB_X63_Y63_N0
\Mux332~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~257_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux18~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux184~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datac => \Mux184~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~257_combout\);

-- Location: LCCOMB_X59_Y65_N10
\Mux332~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~254_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux184~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux184~0_combout\,
	combout => \Mux332~254_combout\);

-- Location: LCCOMB_X63_Y68_N2
\Mux233~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux233~0_combout\ = (\row[1]~input_o\ & ((\row[0]~input_o\ & (!\row[3]~input_o\ & \row[2]~input_o\)) # (!\row[0]~input_o\ & (\row[3]~input_o\ & !\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux233~0_combout\);

-- Location: LCCOMB_X63_Y68_N30
\Mux332~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~255_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux233~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datad => \Mux233~0_combout\,
	combout => \Mux332~255_combout\);

-- Location: LCCOMB_X59_Y65_N12
\Mux332~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~256_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~254_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~255_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~254_combout\,
	datab => \Mux332~255_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~256_combout\);

-- Location: LCCOMB_X63_Y64_N12
\Mux332~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~253_combout\ = (\ascii_ucode[0]~input_o\ & \Mux229~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datad => \Mux229~0_combout\,
	combout => \Mux332~253_combout\);

-- Location: LCCOMB_X63_Y64_N6
\Mux332~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~258_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~256_combout\ & (\Mux332~257_combout\)) # (!\Mux332~256_combout\ & ((\Mux332~253_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~257_combout\,
	datac => \Mux332~256_combout\,
	datad => \Mux332~253_combout\,
	combout => \Mux332~258_combout\);

-- Location: LCCOMB_X63_Y64_N0
\Mux331~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~20_combout\ = (\ascii_ucode[3]~input_o\ & (!\ascii_ucode[4]~input_o\ & \Mux332~258_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux332~258_combout\,
	combout => \Mux331~20_combout\);

-- Location: LCCOMB_X63_Y64_N10
\Mux331~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~21_combout\ = (\Mux331~20_combout\) # ((\ascii_ucode[4]~input_o\ & ((\Mux332~268_combout\))) # (!\ascii_ucode[4]~input_o\ & (\Mux331~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux331~3_combout\,
	datac => \Mux332~268_combout\,
	datad => \Mux331~20_combout\,
	combout => \Mux331~21_combout\);

-- Location: LCCOMB_X65_Y65_N20
\Mux331~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~22_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux331~19_combout\) # ((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (((\Mux331~21_combout\ & !\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~19_combout\,
	datab => \Mux331~21_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux331~22_combout\);

-- Location: LCCOMB_X65_Y65_N6
\Mux331~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~25_combout\ = (\ascii_ucode[6]~input_o\ & ((\Mux331~22_combout\ & ((\Mux331~24_combout\))) # (!\Mux331~22_combout\ & (\Mux331~17_combout\)))) # (!\ascii_ucode[6]~input_o\ & (((\Mux331~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[6]~input_o\,
	datab => \Mux331~17_combout\,
	datac => \Mux331~24_combout\,
	datad => \Mux331~22_combout\,
	combout => \Mux331~25_combout\);

-- Location: LCCOMB_X68_Y62_N24
\Mux332~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~140_combout\ = \ascii_ucode[0]~input_o\ $ (\ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~140_combout\);

-- Location: LCCOMB_X66_Y62_N8
\Mux332~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~202_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux116~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux187~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux187~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux116~0_combout\,
	combout => \Mux332~202_combout\);

-- Location: LCCOMB_X63_Y60_N16
\Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ $ (((\row[0]~input_o\) # (\row[2]~input_o\))))) # (!\row[1]~input_o\ & ((\row[3]~input_o\) # ((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux103~0_combout\);

-- Location: LCCOMB_X65_Y62_N18
\Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\))) # (!\row[3]~input_o\ & (((!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux95~0_combout\);

-- Location: LCCOMB_X63_Y60_N26
\Mux332~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~203_combout\ = (\Mux332~202_combout\ & ((\Mux103~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~202_combout\ & (((\Mux95~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~202_combout\,
	datab => \Mux103~0_combout\,
	datac => \Mux95~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~203_combout\);

-- Location: LCCOMB_X67_Y62_N0
\Mux331~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~7_combout\ = (\ascii_ucode[1]~input_o\ & (!\Mux332~140_combout\ & ((\Mux116~0_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~140_combout\,
	datac => \Mux332~203_combout\,
	datad => \Mux116~0_combout\,
	combout => \Mux331~7_combout\);

-- Location: LCCOMB_X61_Y65_N0
\Mux332~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~173_combout\ = (!\ascii_ucode[0]~input_o\ & \Mux319~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~3_combout\,
	combout => \Mux332~173_combout\);

-- Location: LCCOMB_X61_Y60_N10
\Mux332~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~197_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~3_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux185~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \Mux185~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~197_combout\);

-- Location: LCCOMB_X60_Y64_N24
\Mux332~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~199_combout\ = (!\ascii_ucode[0]~input_o\ & \Mux319~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux319~6_combout\,
	combout => \Mux332~199_combout\);

-- Location: LCCOMB_X63_Y66_N8
\Mux305~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux305~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & (!\row[0]~input_o\ & !\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux305~0_combout\);

-- Location: LCCOMB_X68_Y65_N2
\Mux167~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux167~0_combout\ = (\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[2]~input_o\ $ (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux167~0_combout\);

-- Location: LCCOMB_X68_Y65_N20
\Mux332~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~198_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux305~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux305~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux167~0_combout\,
	combout => \Mux332~198_combout\);

-- Location: LCCOMB_X61_Y65_N10
\Mux332~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~200_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~198_combout\) # (\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~199_combout\ & ((!\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~199_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux332~198_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~200_combout\);

-- Location: LCCOMB_X61_Y65_N20
\Mux332~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~201_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~200_combout\ & (\Mux332~173_combout\)) # (!\Mux332~200_combout\ & ((\Mux332~197_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~173_combout\,
	datac => \Mux332~197_combout\,
	datad => \Mux332~200_combout\,
	combout => \Mux332~201_combout\);

-- Location: LCCOMB_X61_Y65_N22
\Mux331~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~8_combout\ = (\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~201_combout\))) # (!\ascii_ucode[3]~input_o\ & (\Mux331~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~7_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux332~201_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~8_combout\);

-- Location: LCCOMB_X59_Y65_N8
\Mux332~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~213_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux319~8_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~3_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \Mux319~8_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~213_combout\);

-- Location: LCCOMB_X57_Y65_N8
\Mux173~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux173~0_combout\ = (!\row[0]~input_o\ & (!\row[2]~input_o\ & \row[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[1]~input_o\,
	combout => \Mux173~0_combout\);

-- Location: LCCOMB_X68_Y64_N2
\Mux275~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux275~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\) # (!\row[2]~input_o\))) # (!\row[1]~input_o\ & ((\row[2]~input_o\) # (!\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux275~0_combout\);

-- Location: LCCOMB_X60_Y65_N2
\Mux332~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~214_combout\ = (\Mux332~213_combout\ & (((!\Mux275~0_combout\)) # (!\ascii_ucode[2]~input_o\))) # (!\Mux332~213_combout\ & (\ascii_ucode[2]~input_o\ & (\Mux173~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~213_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux173~0_combout\,
	datad => \Mux275~0_combout\,
	combout => \Mux332~214_combout\);

-- Location: LCCOMB_X66_Y65_N2
\Mux332~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~210_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux319~1_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux305~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux305~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux319~1_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~210_combout\);

-- Location: LCCOMB_X62_Y61_N20
\Mux222~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux222~0_combout\ = (!\row[1]~input_o\ & (\row[2]~input_o\ & (\row[3]~input_o\ $ (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux222~0_combout\);

-- Location: LCCOMB_X62_Y65_N24
\Mux332~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~211_combout\ = (\Mux332~210_combout\ & ((\Mux95~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~210_combout\ & (((\Mux222~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~210_combout\,
	datab => \Mux95~0_combout\,
	datac => \Mux222~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~211_combout\);

-- Location: LCCOMB_X61_Y65_N8
\Mux332~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~208_combout\ = (\ascii_ucode[0]~input_o\ & \Mux171~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datad => \Mux171~0_combout\,
	combout => \Mux332~208_combout\);

-- Location: LCCOMB_X57_Y60_N0
\Mux223~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux223~0_combout\ = (\row[2]~input_o\ & (((!\row[3]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux223~0_combout\);

-- Location: LCCOMB_X63_Y65_N22
\Mux332~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~207_combout\ = (\Mux223~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux223~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~207_combout\);

-- Location: LCCOMB_X63_Y65_N12
\Mux332~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~206_combout\ = (\Mux319~7_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~7_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~206_combout\);

-- Location: LCCOMB_X62_Y65_N30
\Mux332~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~209_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~208_combout\) # ((\Mux332~207_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~208_combout\,
	datab => \Mux332~207_combout\,
	datac => \Mux332~206_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~209_combout\);

-- Location: LCCOMB_X61_Y65_N26
\Mux332~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~212_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~209_combout\) # (\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~211_combout\ & ((!\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~211_combout\,
	datac => \Mux332~209_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~212_combout\);

-- Location: LCCOMB_X57_Y64_N18
\Mux165~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux165~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux165~0_combout\);

-- Location: LCCOMB_X68_Y65_N30
\Mux332~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~204_combout\ = (\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\)) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux165~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux165~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~204_combout\);

-- Location: LCCOMB_X68_Y65_N0
\Mux316~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux316~2_combout\ = (!\row[1]~input_o\ & (!\row[2]~input_o\ & \row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	combout => \Mux316~2_combout\);

-- Location: LCCOMB_X68_Y65_N26
\Mux332~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~205_combout\ = (\Mux332~204_combout\ & ((\Mux316~2_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~204_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~204_combout\,
	datab => \Mux316~2_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux167~0_combout\,
	combout => \Mux332~205_combout\);

-- Location: LCCOMB_X61_Y65_N28
\Mux332~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~215_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~212_combout\ & (\Mux332~214_combout\)) # (!\Mux332~212_combout\ & ((\Mux332~205_combout\))))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~214_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux332~212_combout\,
	datad => \Mux332~205_combout\,
	combout => \Mux332~215_combout\);

-- Location: LCCOMB_X61_Y65_N6
\Mux331~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~9_combout\ = (\Mux331~8_combout\) # ((\Mux332~215_combout\ & !\ascii_ucode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~8_combout\,
	datab => \Mux332~215_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~9_combout\);

-- Location: LCCOMB_X63_Y62_N26
\Mux209~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux209~1_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & ((\row[0]~input_o\) # (\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux209~1_combout\);

-- Location: LCCOMB_X63_Y62_N8
\Mux209~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux209~0_combout\ = (\row[1]~input_o\ & (((!\row[3]~input_o\)))) # (!\row[1]~input_o\ & ((\row[0]~input_o\ & ((!\row[3]~input_o\))) # (!\row[0]~input_o\ & ((\ascii_ucode[0]~input_o\) # (\row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux209~0_combout\);

-- Location: LCCOMB_X63_Y62_N12
\Mux332~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~177_combout\ = (\ascii_ucode[2]~input_o\ & ((\row[2]~input_o\ & ((\Mux209~0_combout\))) # (!\row[2]~input_o\ & (\Mux209~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux209~1_combout\,
	datab => \Mux209~0_combout\,
	datac => \row[2]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~177_combout\);

-- Location: LCCOMB_X65_Y62_N24
\Mux201~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux201~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\) # (!\row[1]~input_o\)))) # (!\row[3]~input_o\ & (\row[0]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux201~0_combout\);

-- Location: LCCOMB_X65_Y62_N2
\Mux332~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~178_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux201~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux203~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux201~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux203~0_combout\,
	combout => \Mux332~178_combout\);

-- Location: LCCOMB_X63_Y62_N6
\Mux332~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~179_combout\ = (\Mux332~177_combout\) # (\Mux332~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~177_combout\,
	datac => \Mux332~178_combout\,
	combout => \Mux332~179_combout\);

-- Location: LCCOMB_X57_Y61_N24
\Mux197~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux197~0_combout\ = (\row[1]~input_o\ & ((\row[0]~input_o\ & (\row[3]~input_o\ & !\row[2]~input_o\)) # (!\row[0]~input_o\ & (!\row[3]~input_o\ & \row[2]~input_o\)))) # (!\row[1]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux197~0_combout\);

-- Location: LCCOMB_X66_Y65_N26
\Mux332~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~182_combout\ = (\Mux319~4_combout\ & ((\Mux332~136_combout\) # ((\Mux332~123_combout\ & \Mux197~0_combout\)))) # (!\Mux319~4_combout\ & (((\Mux332~123_combout\ & \Mux197~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~4_combout\,
	datab => \Mux332~136_combout\,
	datac => \Mux332~123_combout\,
	datad => \Mux197~0_combout\,
	combout => \Mux332~182_combout\);

-- Location: LCCOMB_X66_Y65_N18
\Mux332~905\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~905_combout\ = (\Mux332~182_combout\) # ((\Mux319~5_combout\ & (!\ascii_ucode[2]~input_o\ & \ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~5_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux332~182_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~905_combout\);

-- Location: LCCOMB_X57_Y64_N16
\Mux301~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux301~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux301~0_combout\);

-- Location: LCCOMB_X65_Y64_N0
\Mux232~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux232~1_combout\ = (\row[2]~input_o\ & !\row[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datac => \row[1]~input_o\,
	combout => \Mux232~1_combout\);

-- Location: LCCOMB_X67_Y65_N16
\Mux332~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~180_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux232~1_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux301~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux301~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux232~1_combout\,
	combout => \Mux332~180_combout\);

-- Location: LCCOMB_X67_Y66_N24
\Mux198~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux198~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ $ (\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux198~0_combout\);

-- Location: LCCOMB_X66_Y65_N0
\Mux332~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~181_combout\ = (\Mux332~180_combout\) # ((!\ascii_ucode[0]~input_o\ & (\Mux198~0_combout\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~180_combout\,
	datac => \Mux198~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~181_combout\);

-- Location: LCCOMB_X66_Y65_N4
\Mux332~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~183_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[3]~input_o\) # (\Mux332~181_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~905_combout\ & (!\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~905_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~181_combout\,
	combout => \Mux332~183_combout\);

-- Location: LCCOMB_X65_Y62_N28
\Mux215~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux215~0_combout\ = (\row[0]~input_o\ & ((\row[3]~input_o\ & ((!\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[1]~input_o\)))) # (!\row[0]~input_o\ & (\row[3]~input_o\ $ (((\row[1]~input_o\ & \row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux215~0_combout\);

-- Location: LCCOMB_X68_Y64_N6
\Mux286~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux286~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & ((!\row[2]~input_o\))) # (!\row[1]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux286~0_combout\);

-- Location: LCCOMB_X65_Y62_N30
\Mux332~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~184_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux229~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux203~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux203~0_combout\,
	datac => \Mux229~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~184_combout\);

-- Location: LCCOMB_X65_Y62_N16
\Mux332~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~185_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~184_combout\ & ((\Mux286~0_combout\))) # (!\Mux332~184_combout\ & (\Mux215~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux215~0_combout\,
	datac => \Mux286~0_combout\,
	datad => \Mux332~184_combout\,
	combout => \Mux332~185_combout\);

-- Location: LCCOMB_X63_Y62_N24
\Mux332~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~186_combout\ = (\Mux332~183_combout\ & (((\Mux332~185_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux332~183_combout\ & (\Mux332~179_combout\ & ((\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~179_combout\,
	datab => \Mux332~183_combout\,
	datac => \Mux332~185_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~186_combout\);

-- Location: LCCOMB_X67_Y66_N20
\Mux332~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~191_combout\ = (\ascii_ucode[0]~input_o\ & ((\row[3]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & ((\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~191_combout\);

-- Location: LCCOMB_X67_Y66_N26
\Mux332~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~189_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & (!\row[3]~input_o\)) # (!\row[1]~input_o\ & ((\ascii_ucode[0]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~189_combout\);

-- Location: LCCOMB_X66_Y65_N22
\Mux332~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~188_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~1_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux197~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~1_combout\,
	datad => \Mux197~0_combout\,
	combout => \Mux332~188_combout\);

-- Location: LCCOMB_X67_Y65_N20
\Mux332~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~190_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~188_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~189_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~188_combout\,
	combout => \Mux332~190_combout\);

-- Location: LCCOMB_X67_Y65_N10
\Mux332~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~187_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux301~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux217~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux301~0_combout\,
	datad => \Mux217~0_combout\,
	combout => \Mux332~187_combout\);

-- Location: LCCOMB_X67_Y65_N22
\Mux332~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~192_combout\ = (\Mux332~190_combout\ & ((\Mux332~191_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~190_combout\ & (((\Mux332~187_combout\ & \ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~191_combout\,
	datab => \Mux332~190_combout\,
	datac => \Mux332~187_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~192_combout\);

-- Location: LCCOMB_X66_Y65_N16
\Mux331~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~4_combout\ = (\Mux332~192_combout\ & !\ascii_ucode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~192_combout\,
	datac => \ascii_ucode[3]~input_o\,
	combout => \Mux331~4_combout\);

-- Location: LCCOMB_X68_Y64_N4
\Mux237~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux237~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\ $ (\row[2]~input_o\)))) # (!\row[1]~input_o\ & ((\row[0]~input_o\ & (!\row[3]~input_o\ & \row[2]~input_o\)) # (!\row[0]~input_o\ & (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux237~0_combout\);

-- Location: LCCOMB_X63_Y62_N16
\Mux219~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux219~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & (\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\ & (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux219~0_combout\);

-- Location: LCCOMB_X63_Y62_N22
\Mux205~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux205~0_combout\ = (\row[1]~input_o\ & ((\row[0]~input_o\ & (!\row[2]~input_o\ & \row[3]~input_o\)) # (!\row[0]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\)))) # (!\row[1]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux205~0_combout\);

-- Location: LCCOMB_X63_Y62_N2
\Mux332~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~195_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux205~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux219~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux219~0_combout\,
	datac => \Mux205~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~195_combout\);

-- Location: LCCOMB_X62_Y65_N28
\Mux332~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~196_combout\ = (\Mux332~195_combout\ & ((\Mux237~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~195_combout\ & (((\ascii_ucode[0]~input_o\ & \Mux229~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux237~0_combout\,
	datab => \Mux332~195_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux229~0_combout\,
	combout => \Mux332~196_combout\);

-- Location: LCCOMB_X62_Y64_N24
\Mux221~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux221~0_combout\ = (\row[3]~input_o\ & ((\row[2]~input_o\))) # (!\row[3]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux221~0_combout\);

-- Location: LCCOMB_X63_Y62_N18
\Mux332~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~193_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)) # (!\Mux221~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (((\Mux197~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux221~0_combout\,
	datab => \Mux197~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~193_combout\);

-- Location: LCCOMB_X63_Y62_N4
\Mux332~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~194_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~193_combout\ & ((\Mux148~0_combout\))) # (!\Mux332~193_combout\ & (\Mux223~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~193_combout\,
	datac => \Mux223~0_combout\,
	datad => \Mux148~0_combout\,
	combout => \Mux332~194_combout\);

-- Location: LCCOMB_X63_Y62_N28
\Mux331~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~5_combout\ = (\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\Mux332~194_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~196_combout\,
	datac => \Mux332~194_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux331~5_combout\);

-- Location: LCCOMB_X63_Y62_N14
\Mux331~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~6_combout\ = (\ascii_ucode[4]~input_o\ & (((\Mux331~4_combout\) # (\Mux331~5_combout\)))) # (!\ascii_ucode[4]~input_o\ & (\Mux332~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux332~186_combout\,
	datac => \Mux331~4_combout\,
	datad => \Mux331~5_combout\,
	combout => \Mux331~6_combout\);

-- Location: LCCOMB_X63_Y62_N0
\Mux331~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~10_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux331~6_combout\) # (\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux331~9_combout\ & ((!\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~9_combout\,
	datab => \Mux331~6_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux331~10_combout\);

-- Location: LCCOMB_X66_Y66_N6
\Mux332~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~220_combout\ = (!\ascii_ucode[0]~input_o\ & \Mux222~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datad => \Mux222~0_combout\,
	combout => \Mux332~220_combout\);

-- Location: LCCOMB_X66_Y66_N20
\Mux332~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~216_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux319~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux317~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux317~0_combout\,
	datac => \Mux319~0_combout\,
	combout => \Mux332~216_combout\);

-- Location: LCCOMB_X62_Y61_N14
\Mux320~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux320~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\)))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux320~0_combout\);

-- Location: LCCOMB_X67_Y65_N26
\Mux332~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~218_combout\ = (\Mux320~0_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux320~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~218_combout\);

-- Location: LCCOMB_X67_Y65_N24
\Mux332~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~217_combout\ = (\Mux332~191_combout\) # ((!\ascii_ucode[0]~input_o\ & \Mux320~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux320~0_combout\,
	datad => \Mux332~191_combout\,
	combout => \Mux332~217_combout\);

-- Location: LCCOMB_X67_Y65_N4
\Mux332~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~219_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\) # ((\Mux332~217_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[1]~input_o\ & (\Mux332~218_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~218_combout\,
	datad => \Mux332~217_combout\,
	combout => \Mux332~219_combout\);

-- Location: LCCOMB_X66_Y66_N24
\Mux332~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~221_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~219_combout\ & (\Mux332~220_combout\)) # (!\Mux332~219_combout\ & ((\Mux332~216_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~220_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~216_combout\,
	datad => \Mux332~219_combout\,
	combout => \Mux332~221_combout\);

-- Location: LCCOMB_X57_Y64_N28
\Mux332~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~224_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\) # (!\Mux275~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux275~0_combout\,
	combout => \Mux332~224_combout\);

-- Location: LCCOMB_X61_Y67_N30
\Mux302~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux302~0_combout\ = (\row[3]~input_o\ & (\row[2]~input_o\ $ (((\row[1]~input_o\) # (\row[0]~input_o\))))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux302~0_combout\);

-- Location: LCCOMB_X65_Y66_N4
\Mux331~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~11_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux302~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux229~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux302~0_combout\,
	datab => \Mux229~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux331~11_combout\);

-- Location: LCCOMB_X65_Y66_N24
\Mux332~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~222_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux294~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux294~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~222_combout\);

-- Location: LCCOMB_X65_Y66_N10
\Mux332~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~223_combout\ = (\Mux332~222_combout\ & (((\Mux275~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~222_combout\ & (\Mux198~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux198~0_combout\,
	datab => \Mux332~222_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux275~0_combout\,
	combout => \Mux332~223_combout\);

-- Location: LCCOMB_X65_Y66_N14
\Mux331~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~12_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~224_combout\) # ((\Mux331~11_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~224_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux331~11_combout\,
	datad => \Mux332~223_combout\,
	combout => \Mux331~12_combout\);

-- Location: LCCOMB_X66_Y66_N10
\Mux331~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~13_combout\ = (\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux332~221_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux331~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux332~221_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux331~12_combout\,
	combout => \Mux331~13_combout\);

-- Location: LCCOMB_X62_Y66_N2
\Mux332~906\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~906_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux319~9_combout\ & ((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux319~0_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~9_combout\,
	datab => \Mux319~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~906_combout\);

-- Location: LCCOMB_X57_Y60_N2
\Mux319~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~10_combout\ = (!\row[0]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux319~10_combout\);

-- Location: LCCOMB_X62_Y66_N12
\Mux332~907\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~907_combout\ = (\Mux332~906_combout\) # ((\Mux319~10_combout\ & (\ascii_ucode[2]~input_o\ $ (\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~906_combout\,
	datac => \Mux319~10_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~907_combout\);

-- Location: LCCOMB_X62_Y66_N10
\Mux332~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~227_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux274~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux316~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux274~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux316~0_combout\,
	combout => \Mux332~227_combout\);

-- Location: LCCOMB_X62_Y66_N20
\Mux332~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~228_combout\ = (\Mux332~227_combout\) # ((\Mux319~0_combout\ & \ascii_ucode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~227_combout\,
	datab => \Mux319~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	combout => \Mux332~228_combout\);

-- Location: LCCOMB_X62_Y66_N6
\Mux332~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~229_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~907_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~228_combout\ & !\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~907_combout\,
	datab => \Mux332~228_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~229_combout\);

-- Location: LCCOMB_X63_Y62_N10
\Mux280~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux280~0_combout\ = (!\row[1]~input_o\ & (\row[3]~input_o\ $ (((!\row[0]~input_o\ & \row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux280~0_combout\);

-- Location: LCCOMB_X65_Y66_N2
\Mux332~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~230_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux280~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux280~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~230_combout\);

-- Location: LCCOMB_X65_Y63_N14
\Mux293~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux293~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\) # (!\row[1]~input_o\)) # (!\row[0]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux293~0_combout\);

-- Location: LCCOMB_X65_Y66_N28
\Mux332~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~231_combout\ = (\Mux332~230_combout\ & ((\Mux319~7_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~230_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux293~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~7_combout\,
	datab => \Mux332~230_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux293~0_combout\,
	combout => \Mux332~231_combout\);

-- Location: LCCOMB_X61_Y64_N0
\Mux289~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux289~0_combout\ = (\row[2]~input_o\ & (((\row[0]~input_o\ & !\row[3]~input_o\)) # (!\row[1]~input_o\))) # (!\row[2]~input_o\ & (((\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux289~0_combout\);

-- Location: LCCOMB_X61_Y64_N10
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\row[2]~input_o\ & !\row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X60_Y64_N10
\Mux277~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux277~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & (\row[1]~input_o\ $ (!\row[0]~input_o\)))) # (!\row[2]~input_o\ & (\row[1]~input_o\ & (\row[3]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux277~0_combout\);

-- Location: LCCOMB_X61_Y64_N12
\Mux332~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~225_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux10~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux277~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux277~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~225_combout\);

-- Location: LCCOMB_X65_Y66_N8
\Mux332~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~226_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~225_combout\ & ((\Mux290~0_combout\))) # (!\Mux332~225_combout\ & (\Mux289~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux289~0_combout\,
	datac => \Mux290~0_combout\,
	datad => \Mux332~225_combout\,
	combout => \Mux332~226_combout\);

-- Location: LCCOMB_X65_Y66_N30
\Mux332~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~232_combout\ = (\Mux332~229_combout\ & ((\Mux332~231_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux332~229_combout\ & (((\Mux332~226_combout\ & \ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~229_combout\,
	datab => \Mux332~231_combout\,
	datac => \Mux332~226_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~232_combout\);

-- Location: LCCOMB_X66_Y66_N30
\Mux331~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~14_combout\ = (\Mux331~13_combout\) # ((\Mux332~232_combout\ & !\ascii_ucode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~13_combout\,
	datab => \Mux332~232_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~14_combout\);

-- Location: LCCOMB_X65_Y67_N24
\Mux270~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux270~0_combout\ = (\row[3]~input_o\ & (\row[2]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux270~0_combout\);

-- Location: LCCOMB_X65_Y67_N26
\Mux332~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~160_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux270~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux268~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux270~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux268~0_combout\,
	combout => \Mux332~160_combout\);

-- Location: LCCOMB_X62_Y63_N6
\Mux332~902\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~902_combout\ = (\Mux332~160_combout\) # ((\ascii_ucode[0]~input_o\ & (\Mux184~0_combout\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~160_combout\,
	datac => \Mux184~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~902_combout\);

-- Location: LCCOMB_X65_Y63_N10
\Mux267~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux267~0_combout\ = (\row[2]~input_o\ & (\row[3]~input_o\ $ (((\row[0]~input_o\) # (\row[1]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux267~0_combout\);

-- Location: LCCOMB_X65_Y63_N20
\Mux332~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~163_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux267~0_combout\)) # (!\ascii_ucode[0]~input_o\ & (((\Mux316~0_combout\) # (\Mux316~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux267~0_combout\,
	datab => \Mux316~0_combout\,
	datac => \Mux316~1_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~163_combout\);

-- Location: LCCOMB_X62_Y63_N0
\Mux332~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~164_combout\ = (\Mux332~163_combout\ & !\ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~163_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~164_combout\);

-- Location: LCCOMB_X62_Y66_N22
\Mux332~903\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~903_combout\ = (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[0]~input_o\ & \Mux319~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~0_combout\,
	combout => \Mux332~903_combout\);

-- Location: LCCOMB_X63_Y66_N6
\Mux332~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~161_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux294~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux294~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~161_combout\);

-- Location: LCCOMB_X62_Y66_N16
\Mux332~904\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~904_combout\ = (\Mux332~161_combout\) # ((!\ascii_ucode[0]~input_o\ & (!\ascii_ucode[2]~input_o\ & \Mux316~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~161_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux316~0_combout\,
	combout => \Mux332~904_combout\);

-- Location: LCCOMB_X62_Y66_N24
\Mux332~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~162_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~903_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((!\ascii_ucode[3]~input_o\ & \Mux332~904_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~903_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~904_combout\,
	combout => \Mux332~162_combout\);

-- Location: LCCOMB_X62_Y63_N2
\Mux332~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~165_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~162_combout\ & ((\Mux332~164_combout\))) # (!\Mux332~162_combout\ & (\Mux332~902_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~902_combout\,
	datab => \Mux332~164_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~162_combout\,
	combout => \Mux332~165_combout\);

-- Location: LCCOMB_X59_Y66_N16
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & (!\row[2]~input_o\ & \row[0]~input_o\))) # (!\row[1]~input_o\ & (\row[2]~input_o\ & ((!\row[0]~input_o\) # (!\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X62_Y65_N8
\Mux332~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~166_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux305~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux198~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux305~0_combout\,
	datac => \Mux198~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~166_combout\);

-- Location: LCCOMB_X62_Y65_N10
\Mux332~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~167_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~166_combout\ & (\Mux37~0_combout\)) # (!\Mux332~166_combout\ & ((\Mux237~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux332~166_combout\,
	datad => \Mux237~0_combout\,
	combout => \Mux332~167_combout\);

-- Location: LCCOMB_X62_Y65_N22
\Mux332~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~170_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux319~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux228~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux228~0_combout\,
	datac => \Mux319~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~170_combout\);

-- Location: LCCOMB_X63_Y68_N16
\Mux232~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux232~0_combout\ = (!\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux232~0_combout\);

-- Location: LCCOMB_X63_Y68_N28
\Mux332~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~168_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux232~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux233~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux233~0_combout\,
	datab => \Mux232~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~168_combout\);

-- Location: LCCOMB_X62_Y65_N20
\Mux332~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~169_combout\ = (\Mux332~168_combout\ & ((\Mux237~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~168_combout\ & (((\Mux211~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux237~0_combout\,
	datab => \Mux332~168_combout\,
	datac => \Mux211~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~169_combout\);

-- Location: LCCOMB_X62_Y65_N0
\Mux332~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~171_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~169_combout\) # (\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~170_combout\ & ((!\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~170_combout\,
	datab => \Mux332~169_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~171_combout\);

-- Location: LCCOMB_X66_Y67_N2
\Mux244~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux244~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & (\row[0]~input_o\ $ (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux244~0_combout\);

-- Location: LCCOMB_X66_Y67_N12
\Mux332~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~172_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux248~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux244~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux244~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux248~0_combout\,
	combout => \Mux332~172_combout\);

-- Location: LCCOMB_X66_Y67_N22
\Mux332~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~174_combout\ = (\Mux332~172_combout\) # ((\ascii_ucode[2]~input_o\ & ((\Mux332~173_combout\) # (\Mux332~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~172_combout\,
	datab => \Mux332~173_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~147_combout\,
	combout => \Mux332~174_combout\);

-- Location: LCCOMB_X62_Y65_N26
\Mux332~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~175_combout\ = (\Mux332~171_combout\ & (((\Mux332~174_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux332~171_combout\ & (\Mux332~167_combout\ & ((\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~167_combout\,
	datab => \Mux332~171_combout\,
	datac => \Mux332~174_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~175_combout\);

-- Location: LCCOMB_X65_Y65_N24
\Mux332~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~176_combout\ = (\ascii_ucode[4]~input_o\ & (\Mux332~165_combout\)) # (!\ascii_ucode[4]~input_o\ & ((\Mux332~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~165_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux332~175_combout\,
	combout => \Mux332~176_combout\);

-- Location: LCCOMB_X65_Y65_N10
\Mux331~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~15_combout\ = (\Mux331~10_combout\ & ((\Mux331~14_combout\) # ((!\ascii_ucode[6]~input_o\)))) # (!\Mux331~10_combout\ & (((\Mux332~176_combout\ & \ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~10_combout\,
	datab => \Mux331~14_combout\,
	datac => \Mux332~176_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux331~15_combout\);

-- Location: LCCOMB_X65_Y65_N0
\Mux331~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~26_combout\ = (\ascii_ucode[7]~input_o\ & ((\Mux331~15_combout\))) # (!\ascii_ucode[7]~input_o\ & (\Mux331~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~25_combout\,
	datac => \ascii_ucode[7]~input_o\,
	datad => \Mux331~15_combout\,
	combout => \Mux331~26_combout\);

-- Location: LCCOMB_X66_Y63_N30
\Mux227~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux227~0_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & (!\row[3]~input_o\)) # (!\row[1]~input_o\ & ((!\row[0]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux227~0_combout\);

-- Location: LCCOMB_X66_Y63_N22
\Mux332~910\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~910_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux227~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux227~0_combout\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~910_combout\);

-- Location: LCCOMB_X65_Y64_N12
\Mux332~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~309_combout\ = (\row[2]~input_o\ & (\row[3]~input_o\ & (!\row[1]~input_o\ & \ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~309_combout\);

-- Location: LCCOMB_X65_Y64_N6
\Mux309~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux309~0_combout\ = (\row[1]~input_o\ & (\row[2]~input_o\ & (!\row[3]~input_o\))) # (!\row[1]~input_o\ & ((\row[0]~input_o\ & (\row[2]~input_o\)) # (!\row[0]~input_o\ & ((\row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux309~0_combout\);

-- Location: LCCOMB_X65_Y64_N16
\Mux332~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~310_combout\ = (\Mux332~309_combout\) # ((\Mux309~0_combout\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~309_combout\,
	datac => \Mux309~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~310_combout\);

-- Location: LCCOMB_X65_Y64_N10
\Mux332~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~308_combout\ = (\row[2]~input_o\ & (((!\row[3]~input_o\ & \ascii_ucode[0]~input_o\)) # (!\row[1]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~308_combout\);

-- Location: LCCOMB_X65_Y64_N26
\Mux332~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~311_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~308_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~310_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~308_combout\,
	combout => \Mux332~311_combout\);

-- Location: LCCOMB_X66_Y63_N4
\Mux332~909\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~909_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux323~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (!\row[1]~input_o\ & ((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \Mux323~0_combout\,
	datac => \row[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~909_combout\);

-- Location: LCCOMB_X66_Y63_N24
\Mux332~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~312_combout\ = (\Mux332~311_combout\ & ((\Mux332~910_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~311_combout\ & (((\Mux332~909_combout\ & \ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~910_combout\,
	datab => \Mux332~311_combout\,
	datac => \Mux332~909_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~312_combout\);

-- Location: LCCOMB_X67_Y61_N30
\Mux331~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~50_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux222~0_combout\ & !\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux316~1_combout\ & ((\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux316~1_combout\,
	datab => \Mux222~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux331~50_combout\);

-- Location: LCCOMB_X67_Y62_N2
\Mux331~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~29_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux331~50_combout\) # ((\Mux217~0_combout\ & !\Mux332~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~50_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux217~0_combout\,
	datad => \Mux332~140_combout\,
	combout => \Mux331~29_combout\);

-- Location: LCCOMB_X68_Y66_N14
\Mux332~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~313_combout\ = (\Mux332~191_combout\) # ((!\ascii_ucode[0]~input_o\ & \Mux323~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux332~191_combout\,
	datad => \Mux323~0_combout\,
	combout => \Mux332~313_combout\);

-- Location: LCCOMB_X67_Y66_N14
\Mux200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux200~0_combout\ = \row[2]~input_o\ $ (((\row[1]~input_o\ & \row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux200~0_combout\);

-- Location: LCCOMB_X68_Y66_N12
\Mux331~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~30_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux203~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux200~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux200~0_combout\,
	datab => \Mux203~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux331~30_combout\);

-- Location: LCCOMB_X68_Y66_N16
\Mux331~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~31_combout\ = (!\ascii_ucode[1]~input_o\ & ((\Mux331~30_combout\) # ((!\ascii_ucode[2]~input_o\ & \Mux332~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux332~313_combout\,
	datad => \Mux331~30_combout\,
	combout => \Mux331~31_combout\);

-- Location: LCCOMB_X67_Y63_N0
\Mux331~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~32_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux332~312_combout\)) # (!\ascii_ucode[3]~input_o\ & (((\Mux331~29_combout\) # (\Mux331~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~312_combout\,
	datac => \Mux331~29_combout\,
	datad => \Mux331~31_combout\,
	combout => \Mux331~32_combout\);

-- Location: LCCOMB_X65_Y62_N12
\Mux287~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux287~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & ((!\row[2]~input_o\))) # (!\row[1]~input_o\ & ((\row[0]~input_o\) # (\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux287~0_combout\);

-- Location: LCCOMB_X63_Y61_N20
\Mux297~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux297~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\)) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & ((\row[2]~input_o\) # ((\row[1]~input_o\ & \row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux297~0_combout\);

-- Location: LCCOMB_X58_Y63_N16
\Mux204~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux204~0_combout\ = (!\row[1]~input_o\ & (\row[2]~input_o\ & ((\row[3]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux204~0_combout\);

-- Location: LCCOMB_X59_Y61_N16
\Mux332~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~321_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux204~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux204~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~321_combout\);

-- Location: LCCOMB_X65_Y61_N16
\Mux332~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~322_combout\ = (\Mux332~321_combout\ & ((\Mux287~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~321_combout\ & (((\Mux297~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux287~0_combout\,
	datab => \Mux297~0_combout\,
	datac => \Mux332~321_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~322_combout\);

-- Location: LCCOMB_X62_Y64_N10
\Mux208~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux208~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ $ (((\row[2]~input_o\) # (!\row[0]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux208~0_combout\);

-- Location: LCCOMB_X62_Y64_N4
\Mux316~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux316~4_combout\ = (\row[1]~input_o\ & \row[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux316~4_combout\);

-- Location: LCCOMB_X62_Y64_N6
\Mux332~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~314_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux208~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux316~4_combout\ $ (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux208~0_combout\,
	datab => \Mux316~4_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux332~314_combout\);

-- Location: LCCOMB_X62_Y64_N2
\Mux332~911\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~911_combout\ = (\Mux332~314_combout\ & ((\Mux217~0_combout\) # (\ascii_ucode[2]~input_o\ $ (\ascii_ucode[0]~input_o\)))) # (!\Mux332~314_combout\ & (\Mux217~0_combout\ & (\ascii_ucode[2]~input_o\ $ (!\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~314_combout\,
	datab => \Mux217~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~911_combout\);

-- Location: LCCOMB_X58_Y65_N0
\Mux216~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux216~0_combout\ = (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux216~0_combout\);

-- Location: LCCOMB_X67_Y66_N8
\Mux332~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~315_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux216~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~315_combout\);

-- Location: LCCOMB_X57_Y64_N8
\Mux235~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux235~0_combout\ = (\row[1]~input_o\ & (((!\row[2]~input_o\ & \row[3]~input_o\)))) # (!\row[1]~input_o\ & ((\row[0]~input_o\ & ((\row[3]~input_o\))) # (!\row[0]~input_o\ & (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux235~0_combout\);

-- Location: LCCOMB_X67_Y66_N18
\Mux332~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~316_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~315_combout\ & (\Mux200~0_combout\)) # (!\Mux332~315_combout\ & ((\Mux235~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~315_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~315_combout\,
	datac => \Mux200~0_combout\,
	datad => \Mux235~0_combout\,
	combout => \Mux332~316_combout\);

-- Location: LCCOMB_X65_Y61_N10
\Mux252~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux252~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\ & ((\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	combout => \Mux252~0_combout\);

-- Location: LCCOMB_X65_Y61_N14
\Mux332~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~317_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux252~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux222~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux222~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux252~0_combout\,
	combout => \Mux332~317_combout\);

-- Location: LCCOMB_X66_Y64_N18
\Mux332~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~318_combout\ = (!\ascii_ucode[2]~input_o\ & ((\Mux332~309_combout\) # ((!\ascii_ucode[0]~input_o\ & \Mux319~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~309_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux319~4_combout\,
	combout => \Mux332~318_combout\);

-- Location: LCCOMB_X66_Y64_N4
\Mux332~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~319_combout\ = (\Mux332~317_combout\) # (\Mux332~318_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux332~317_combout\,
	datad => \Mux332~318_combout\,
	combout => \Mux332~319_combout\);

-- Location: LCCOMB_X66_Y64_N14
\Mux332~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~320_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~316_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~319_combout\ & !\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~316_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~319_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~320_combout\);

-- Location: LCCOMB_X66_Y64_N0
\Mux332~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~323_combout\ = (\Mux332~320_combout\ & ((\Mux332~322_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux332~320_combout\ & (((\Mux332~911_combout\ & \ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~322_combout\,
	datab => \Mux332~911_combout\,
	datac => \Mux332~320_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~323_combout\);

-- Location: LCCOMB_X67_Y63_N10
\Mux331~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~33_combout\ = (\ascii_ucode[4]~input_o\ & (\Mux331~32_combout\)) # (!\ascii_ucode[4]~input_o\ & ((\Mux332~323_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux331~32_combout\,
	datac => \Mux332~323_combout\,
	combout => \Mux331~33_combout\);

-- Location: LCCOMB_X68_Y64_N22
\Mux158~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\)))) # (!\row[3]~input_o\ & (((!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux158~0_combout\);

-- Location: LCCOMB_X66_Y64_N26
\Mux332~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~331_combout\ = (\Mux332~309_combout\) # ((\Mux187~0_combout\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~309_combout\,
	datac => \Mux187~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~331_combout\);

-- Location: LCCOMB_X65_Y68_N10
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = \row[3]~input_o\ $ (((\row[2]~input_o\) # ((\row[0]~input_o\ & \row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X66_Y66_N16
\Mux332~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~332_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux41~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux222~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux222~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux41~0_combout\,
	combout => \Mux332~332_combout\);

-- Location: LCCOMB_X66_Y66_N26
\Mux332~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~333_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~332_combout\)))) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~332_combout\ & ((\Mux332~206_combout\))) # (!\Mux332~332_combout\ & (\Mux332~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~331_combout\,
	datab => \Mux332~206_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~332_combout\,
	combout => \Mux332~333_combout\);

-- Location: LCCOMB_X67_Y64_N26
\Mux332~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~334_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux158~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~333_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux158~0_combout\,
	datab => \Mux332~333_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~334_combout\);

-- Location: LCCOMB_X59_Y63_N22
\Mux245~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux245~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux245~0_combout\);

-- Location: LCCOMB_X67_Y64_N14
\Mux331~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~36_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux95~0_combout\ & !\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux245~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux245~0_combout\,
	datab => \Mux95~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux331~36_combout\);

-- Location: LCCOMB_X69_Y66_N0
\Mux332~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~335_combout\ = \ascii_ucode[1]~input_o\ $ (\ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~335_combout\);

-- Location: LCCOMB_X67_Y64_N16
\Mux331~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~37_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux331~36_combout\) # ((\Mux165~0_combout\ & !\Mux332~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux165~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux331~36_combout\,
	datad => \Mux332~335_combout\,
	combout => \Mux331~37_combout\);

-- Location: LCCOMB_X68_Y62_N18
\Mux159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux159~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux159~0_combout\);

-- Location: LCCOMB_X68_Y62_N6
\Mux174~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux174~0_combout\ = (\row[2]~input_o\ & (((!\row[3]~input_o\)))) # (!\row[2]~input_o\ & ((\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))) # (!\row[3]~input_o\ & ((\row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux174~0_combout\);

-- Location: LCCOMB_X68_Y62_N0
\Mux331~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~34_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\Mux174~0_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux159~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux159~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux174~0_combout\,
	combout => \Mux331~34_combout\);

-- Location: LCCOMB_X67_Y64_N12
\Mux331~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~35_combout\ = (!\ascii_ucode[0]~input_o\ & ((\Mux331~34_combout\) # ((!\ascii_ucode[2]~input_o\ & \Mux223~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~34_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux223~0_combout\,
	combout => \Mux331~35_combout\);

-- Location: LCCOMB_X67_Y64_N18
\Mux331~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~38_combout\ = (\ascii_ucode[3]~input_o\ & (((\Mux331~37_combout\) # (\Mux331~35_combout\)))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~334_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~334_combout\,
	datab => \Mux331~37_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux331~35_combout\,
	combout => \Mux331~38_combout\);

-- Location: LCCOMB_X59_Y62_N22
\Mux332~912\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~912_combout\ = (\Mux223~0_combout\ & ((\Mux319~3_combout\) # (\ascii_ucode[0]~input_o\ $ (!\ascii_ucode[2]~input_o\)))) # (!\Mux223~0_combout\ & (\Mux319~3_combout\ & (\ascii_ucode[0]~input_o\ $ (\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux223~0_combout\,
	datab => \Mux319~3_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~912_combout\);

-- Location: LCCOMB_X68_Y62_N16
\Mux180~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux180~0_combout\ = (\row[3]~input_o\ & (((!\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux180~0_combout\);

-- Location: LCCOMB_X68_Y62_N4
\Mux332~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~326_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux180~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux159~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux180~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux159~0_combout\,
	combout => \Mux332~326_combout\);

-- Location: LCCOMB_X67_Y64_N20
\Mux332~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~327_combout\ = (\Mux332~326_combout\) # ((!\ascii_ucode[2]~input_o\ & \Mux223~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~326_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datad => \Mux223~0_combout\,
	combout => \Mux332~327_combout\);

-- Location: LCCOMB_X67_Y64_N22
\Mux332~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~328_combout\ = (\ascii_ucode[3]~input_o\ & (((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux332~912_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~327_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~912_combout\,
	datab => \Mux332~327_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~328_combout\);

-- Location: LCCOMB_X59_Y61_N2
\Mux168~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux168~0_combout\ = (\row[2]~input_o\ & (((!\row[3]~input_o\ & !\row[1]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux168~0_combout\);

-- Location: LCCOMB_X59_Y61_N28
\Mux332~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~329_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux116~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux168~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux168~0_combout\,
	datac => \Mux116~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~329_combout\);

-- Location: LCCOMB_X59_Y61_N14
\Mux332~913\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~913_combout\ = (\Mux332~329_combout\) # ((\Mux217~0_combout\ & (\ascii_ucode[0]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux332~329_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~913_combout\);

-- Location: LCCOMB_X67_Y64_N0
\Mux332~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~324_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux228~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux41~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux228~0_combout\,
	datab => \Mux41~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~324_combout\);

-- Location: LCCOMB_X67_Y64_N10
\Mux332~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~325_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~324_combout\ & (\Mux116~0_combout\)) # (!\Mux332~324_combout\ & ((\Mux158~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux116~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux158~0_combout\,
	datad => \Mux332~324_combout\,
	combout => \Mux332~325_combout\);

-- Location: LCCOMB_X67_Y64_N24
\Mux332~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~330_combout\ = (\Mux332~328_combout\ & ((\Mux332~913_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux332~328_combout\ & (((\ascii_ucode[3]~input_o\ & \Mux332~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~328_combout\,
	datab => \Mux332~913_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~325_combout\,
	combout => \Mux332~330_combout\);

-- Location: LCCOMB_X67_Y64_N4
\Mux331~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~39_combout\ = (\ascii_ucode[4]~input_o\ & ((\Mux332~330_combout\))) # (!\ascii_ucode[4]~input_o\ & (\Mux331~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux331~38_combout\,
	datad => \Mux332~330_combout\,
	combout => \Mux331~39_combout\);

-- Location: LCCOMB_X67_Y63_N12
\Mux330~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux330~0_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux331~33_combout\) # ((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (((\Mux331~39_combout\ & !\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~33_combout\,
	datab => \Mux331~39_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux330~0_combout\);

-- Location: LCCOMB_X68_Y63_N24
\Mux298~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux298~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux298~0_combout\);

-- Location: LCCOMB_X63_Y61_N6
\Mux303~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux303~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\ & (!\row[2]~input_o\)) # (!\row[3]~input_o\ & (\row[2]~input_o\ & !\row[0]~input_o\)))) # (!\row[1]~input_o\ & (\row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux303~0_combout\);

-- Location: LCCOMB_X66_Y61_N18
\Mux332~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~339_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux303~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux298~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux298~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux303~0_combout\,
	combout => \Mux332~339_combout\);

-- Location: LCCOMB_X65_Y67_N16
\Mux314~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux314~0_combout\ = (\row[0]~input_o\ & (!\row[3]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\))) # (!\row[0]~input_o\ & (\row[3]~input_o\ & (!\row[1]~input_o\ & !\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux314~0_combout\);

-- Location: LCCOMB_X67_Y61_N24
\Mux311~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux311~0_combout\ = (\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\)))) # (!\row[0]~input_o\ & (\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux311~0_combout\);

-- Location: LCCOMB_X66_Y61_N8
\Mux332~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~338_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (!\Mux314~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux311~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux314~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux311~0_combout\,
	combout => \Mux332~338_combout\);

-- Location: LCCOMB_X67_Y61_N20
\Mux299~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux299~0_combout\ = (\row[0]~input_o\ & ((\row[2]~input_o\ & ((!\row[1]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & \row[1]~input_o\)))) # (!\row[0]~input_o\ & (!\row[3]~input_o\ & (\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux299~0_combout\);

-- Location: LCCOMB_X67_Y61_N14
\Mux332~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~336_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux299~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux317~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux317~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux299~0_combout\,
	combout => \Mux332~336_combout\);

-- Location: LCCOMB_X67_Y61_N18
\Mux332~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~337_combout\ = (\Mux332~336_combout\ & (((!\Mux311~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~336_combout\ & (\Mux309~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux309~0_combout\,
	datab => \Mux332~336_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux311~0_combout\,
	combout => \Mux332~337_combout\);

-- Location: LCCOMB_X66_Y61_N12
\Mux332~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~340_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~339_combout\) # ((\Mux332~338_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~339_combout\,
	datac => \Mux332~338_combout\,
	datad => \Mux332~337_combout\,
	combout => \Mux332~340_combout\);

-- Location: LCCOMB_X59_Y59_N20
\Mux318~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux318~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[1]~input_o\ $ (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux318~0_combout\);

-- Location: LCCOMB_X66_Y61_N22
\Mux332~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~352_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux317~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux318~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux318~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux317~0_combout\,
	combout => \Mux332~352_combout\);

-- Location: LCCOMB_X65_Y62_N6
\Mux324~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ $ (\row[2]~input_o\)))) # (!\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux324~0_combout\);

-- Location: LCCOMB_X65_Y62_N8
\Mux324~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~1_combout\ = (\Mux324~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux324~1_combout\);

-- Location: LCCOMB_X63_Y61_N24
\Mux321~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ $ (((\row[2]~input_o\) # (\row[0]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux321~0_combout\);

-- Location: LCCOMB_X66_Y61_N16
\Mux332~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~353_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux321~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (!\Mux221~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux221~0_combout\,
	datac => \Mux321~0_combout\,
	combout => \Mux332~353_combout\);

-- Location: LCCOMB_X66_Y61_N2
\Mux332~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~354_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux318~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux314~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux318~0_combout\,
	datac => \Mux314~0_combout\,
	combout => \Mux332~354_combout\);

-- Location: LCCOMB_X66_Y61_N28
\Mux332~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~355_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~353_combout\) # ((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((!\ascii_ucode[1]~input_o\ & \Mux332~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~353_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~354_combout\,
	combout => \Mux332~355_combout\);

-- Location: LCCOMB_X66_Y61_N6
\Mux332~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~356_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~355_combout\ & ((\Mux324~1_combout\))) # (!\Mux332~355_combout\ & (\Mux332~352_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~352_combout\,
	datab => \Mux324~1_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~355_combout\,
	combout => \Mux332~356_combout\);

-- Location: LCCOMB_X61_Y64_N8
\Mux278~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux278~0_combout\ = (\row[0]~input_o\ & (\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\)))) # (!\row[0]~input_o\ & (\row[2]~input_o\ & ((!\row[1]~input_o\) # (!\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux278~0_combout\);

-- Location: LCCOMB_X61_Y64_N18
\Mux332~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~343_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux10~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux278~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux278~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux332~343_combout\);

-- Location: LCCOMB_X65_Y60_N12
\Mux291~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux291~0_combout\ = (\row[0]~input_o\ & (\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\)))) # (!\row[0]~input_o\ & (\row[2]~input_o\ & (\row[3]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux291~0_combout\);

-- Location: LCCOMB_X61_Y64_N20
\Mux332~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~344_combout\ = (\Mux332~343_combout\ & (((\Mux291~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~343_combout\ & (\Mux289~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux289~0_combout\,
	datab => \Mux332~343_combout\,
	datac => \Mux291~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~344_combout\);

-- Location: LCCOMB_X59_Y59_N0
\Mux285~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux285~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ $ (((\row[0]~input_o\))))) # (!\row[1]~input_o\ & ((\row[3]~input_o\ & ((\row[0]~input_o\) # (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux285~0_combout\);

-- Location: LCCOMB_X59_Y59_N10
\Mux332~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~341_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux319~1_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux285~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux285~0_combout\,
	datab => \Mux319~1_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~341_combout\);

-- Location: LCCOMB_X62_Y63_N28
\Mux332~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~342_combout\ = (\Mux332~341_combout\ & (((\Mux319~7_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~341_combout\ & (\Mux203~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~341_combout\,
	datab => \Mux203~0_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~342_combout\);

-- Location: LCCOMB_X62_Y63_N14
\Mux332~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~345_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~342_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~344_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~344_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~342_combout\,
	combout => \Mux332~345_combout\);

-- Location: LCCOMB_X60_Y64_N22
\Mux332~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~347_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux317~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux317~0_combout\,
	datab => \Mux319~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~347_combout\);

-- Location: LCCOMB_X62_Y64_N16
\Mux332~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~348_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux305~0_combout\)) # (!\ascii_ucode[0]~input_o\ & (((\row[3]~input_o\ & !\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux305~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~348_combout\);

-- Location: LCCOMB_X60_Y64_N8
\Mux332~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~349_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~347_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~348_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~347_combout\,
	datab => \Mux332~348_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~349_combout\);

-- Location: LCCOMB_X60_Y64_N4
\Mux332~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~346_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux319~10_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux317~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux317~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~10_combout\,
	combout => \Mux332~346_combout\);

-- Location: LCCOMB_X61_Y66_N16
\Mux332~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~350_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux228~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux274~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux274~0_combout\,
	datac => \Mux228~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~350_combout\);

-- Location: LCCOMB_X61_Y62_N0
\Mux332~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~351_combout\ = (\Mux332~349_combout\ & (((\Mux332~350_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~349_combout\ & (\Mux332~346_combout\ & (\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~349_combout\,
	datab => \Mux332~346_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~350_combout\,
	combout => \Mux332~351_combout\);

-- Location: LCCOMB_X62_Y63_N8
\Mux331~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~40_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux332~345_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux332~351_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux332~345_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~351_combout\,
	combout => \Mux331~40_combout\);

-- Location: LCCOMB_X66_Y61_N24
\Mux331~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~41_combout\ = (\Mux331~40_combout\ & (((\Mux332~356_combout\) # (!\ascii_ucode[4]~input_o\)))) # (!\Mux331~40_combout\ & (\Mux332~340_combout\ & ((\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~340_combout\,
	datab => \Mux332~356_combout\,
	datac => \Mux331~40_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~41_combout\);

-- Location: LCCOMB_X60_Y68_N8
\Mux332~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~296_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux319~3_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux78~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~3_combout\,
	datad => \Mux78~0_combout\,
	combout => \Mux332~296_combout\);

-- Location: LCCOMB_X65_Y61_N24
\Mux332~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~294_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux116~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux287~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux116~0_combout\,
	datac => \Mux287~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~294_combout\);

-- Location: LCCOMB_X65_Y61_N4
\Mux332~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~295_combout\ = (\Mux332~294_combout\ & ((\Mux252~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~294_combout\ & (((\Mux217~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux252~0_combout\,
	datab => \Mux332~294_combout\,
	datac => \Mux217~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~295_combout\);

-- Location: LCCOMB_X63_Y68_N24
\Mux332~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~297_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~296_combout\) # ((\Mux332~191_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~296_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~295_combout\,
	datad => \Mux332~191_combout\,
	combout => \Mux332~297_combout\);

-- Location: LCCOMB_X63_Y68_N20
\Mux332~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~299_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux317~0_combout\) # ((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux198~0_combout\ & !\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux317~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux198~0_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~299_combout\);

-- Location: LCCOMB_X63_Y68_N22
\Mux332~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~300_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~299_combout\ & ((\Mux37~0_combout\))) # (!\Mux332~299_combout\ & (\Mux233~0_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux233~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux37~0_combout\,
	datad => \Mux332~299_combout\,
	combout => \Mux332~300_combout\);

-- Location: LCCOMB_X63_Y68_N10
\Mux332~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~298_combout\ = (\Mux332~191_combout\) # ((\Mux203~0_combout\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux203~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datad => \Mux332~191_combout\,
	combout => \Mux332~298_combout\);

-- Location: LCCOMB_X63_Y68_N8
\Mux332~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~301_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[1]~input_o\ & \Mux332~298_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~300_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~298_combout\,
	combout => \Mux332~301_combout\);

-- Location: LCCOMB_X63_Y68_N18
\Mux331~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~27_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~297_combout\) # ((\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~301_combout\ & !\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~297_combout\,
	datac => \Mux332~301_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~27_combout\);

-- Location: LCCOMB_X60_Y66_N8
\Mux332~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~288_combout\ = (\Mux319~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~288_combout\);

-- Location: LCCOMB_X63_Y65_N10
\Mux177~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux177~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux177~0_combout\);

-- Location: LCCOMB_X63_Y65_N20
\Mux332~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~290_combout\ = (\Mux177~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux177~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~290_combout\);

-- Location: LCCOMB_X63_Y65_N0
\Mux332~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~289_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux319~0_combout\,
	datac => \Mux31~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~289_combout\);

-- Location: LCCOMB_X62_Y65_N18
\Mux332~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~291_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~289_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~290_combout\,
	datab => \Mux332~289_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~291_combout\);

-- Location: LCCOMB_X60_Y66_N2
\Mux332~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~292_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux222~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((!\Mux221~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux222~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux221~0_combout\,
	combout => \Mux332~292_combout\);

-- Location: LCCOMB_X60_Y66_N20
\Mux332~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~293_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~291_combout\ & ((\Mux332~292_combout\))) # (!\Mux332~291_combout\ & (\Mux332~288_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~288_combout\,
	datac => \Mux332~291_combout\,
	datad => \Mux332~292_combout\,
	combout => \Mux332~293_combout\);

-- Location: LCCOMB_X65_Y67_N12
\Mux256~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux256~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & ((!\row[2]~input_o\))) # (!\row[0]~input_o\ & (!\row[1]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux256~0_combout\);

-- Location: LCCOMB_X62_Y65_N12
\Mux332~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~305_combout\ = (!\ascii_ucode[0]~input_o\ & \Mux286~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux286~0_combout\,
	combout => \Mux332~305_combout\);

-- Location: LCCOMB_X68_Y61_N2
\Mux269~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux269~0_combout\ = (\row[2]~input_o\ & (((!\row[1]~input_o\ & !\row[0]~input_o\)) # (!\row[3]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux269~0_combout\);

-- Location: LCCOMB_X62_Y68_N2
\Mux271~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux271~0_combout\ = (\row[3]~input_o\ & (\row[2]~input_o\ $ (((\row[0]~input_o\ & \row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux271~0_combout\);

-- Location: LCCOMB_X62_Y67_N24
\Mux332~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~304_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux271~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux269~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux269~0_combout\,
	datac => \Mux271~0_combout\,
	combout => \Mux332~304_combout\);

-- Location: LCCOMB_X62_Y67_N26
\Mux332~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~306_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~305_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~304_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~305_combout\,
	datab => \Mux332~304_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~306_combout\);

-- Location: LCCOMB_X68_Y64_N16
\Mux332~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~302_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\)) # (!\row[3]~input_o\ & ((\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~302_combout\);

-- Location: LCCOMB_X68_Y64_N26
\Mux332~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~303_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux332~302_combout\)) # (!\ascii_ucode[1]~input_o\))) # (!\ascii_ucode[0]~input_o\ & (\ascii_ucode[1]~input_o\ & (\Mux158~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux158~0_combout\,
	datad => \Mux332~302_combout\,
	combout => \Mux332~303_combout\);

-- Location: LCCOMB_X65_Y67_N30
\Mux332~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~307_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~306_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~303_combout\ & ((\Mux256~0_combout\) # (\Mux332~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux256~0_combout\,
	datab => \Mux332~306_combout\,
	datac => \Mux332~303_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~307_combout\);

-- Location: LCCOMB_X60_Y66_N6
\Mux331~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~28_combout\ = (\Mux331~27_combout\ & (((\Mux332~307_combout\) # (!\ascii_ucode[4]~input_o\)))) # (!\Mux331~27_combout\ & (\Mux332~293_combout\ & ((\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~27_combout\,
	datab => \Mux332~293_combout\,
	datac => \Mux332~307_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~28_combout\);

-- Location: LCCOMB_X67_Y63_N6
\Mux330~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux330~1_combout\ = (\Mux330~0_combout\ & ((\Mux331~41_combout\) # ((!\ascii_ucode[6]~input_o\)))) # (!\Mux330~0_combout\ & (((\Mux331~28_combout\ & \ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux330~0_combout\,
	datab => \Mux331~41_combout\,
	datac => \Mux331~28_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux330~1_combout\);

-- Location: LCCOMB_X65_Y60_N22
\Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux99~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ $ (\row[1]~input_o\)) # (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux99~0_combout\);

-- Location: LCCOMB_X65_Y60_N8
\Mux332~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~387_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux99~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux291~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux291~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux99~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~387_combout\);

-- Location: LCCOMB_X63_Y60_N20
\Mux332~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~388_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~387_combout\ & (\Mux103~0_combout\)) # (!\Mux332~387_combout\ & ((\Mux98~0_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux103~0_combout\,
	datac => \Mux98~0_combout\,
	datad => \Mux332~387_combout\,
	combout => \Mux332~388_combout\);

-- Location: LCCOMB_X59_Y66_N28
\Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & (\row[2]~input_o\ & !\row[0]~input_o\)) # (!\row[1]~input_o\ & (!\row[2]~input_o\ & \row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux88~0_combout\);

-- Location: LCCOMB_X59_Y66_N30
\Mux332~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~389_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux147~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux88~0_combout\,
	datac => \Mux147~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~389_combout\);

-- Location: LCCOMB_X59_Y66_N18
\Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = (\row[3]~input_o\ & ((\row[2]~input_o\ & (!\row[1]~input_o\)) # (!\row[2]~input_o\ & ((\row[0]~input_o\))))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux94~0_combout\);

-- Location: LCCOMB_X59_Y66_N8
\Mux332~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~390_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~389_combout\ & (\Mux232~1_combout\)) # (!\Mux332~389_combout\ & ((\Mux94~0_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux232~1_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~389_combout\,
	datad => \Mux94~0_combout\,
	combout => \Mux332~390_combout\);

-- Location: LCCOMB_X61_Y61_N26
\Mux332~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~391_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~388_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((!\ascii_ucode[3]~input_o\ & \Mux332~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~388_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~390_combout\,
	combout => \Mux332~391_combout\);

-- Location: LCCOMB_X58_Y63_N24
\Mux128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & (!\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\ & ((!\row[2]~input_o\) # (!\row[0]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux128~0_combout\);

-- Location: LCCOMB_X61_Y61_N16
\Mux332~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~386_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux147~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux128~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux147~0_combout\,
	datac => \Mux128~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~386_combout\);

-- Location: LCCOMB_X61_Y61_N14
\Mux332~917\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~917_combout\ = (\Mux332~386_combout\) # ((\Mux223~0_combout\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~386_combout\,
	datac => \Mux223~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~917_combout\);

-- Location: LCCOMB_X59_Y61_N30
\Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux110~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux110~0_combout\);

-- Location: LCCOMB_X61_Y61_N22
\Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((\row[1]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (((!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux115~0_combout\);

-- Location: LCCOMB_X61_Y61_N28
\Mux332~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~392_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux128~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux217~0_combout\,
	datac => \Mux128~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~392_combout\);

-- Location: LCCOMB_X61_Y61_N0
\Mux332~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~393_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~392_combout\ & ((\Mux115~0_combout\))) # (!\Mux332~392_combout\ & (\Mux110~0_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux110~0_combout\,
	datac => \Mux115~0_combout\,
	datad => \Mux332~392_combout\,
	combout => \Mux332~393_combout\);

-- Location: LCCOMB_X61_Y61_N10
\Mux332~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~394_combout\ = (\Mux332~391_combout\ & (((\Mux332~393_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux332~391_combout\ & (\Mux332~917_combout\ & (\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~391_combout\,
	datab => \Mux332~917_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~393_combout\,
	combout => \Mux332~394_combout\);

-- Location: LCCOMB_X57_Y61_N30
\Mux332~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~400_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux147~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux116~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux147~0_combout\,
	datac => \Mux116~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~400_combout\);

-- Location: LCCOMB_X57_Y61_N0
\Mux153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = (\row[1]~input_o\ & (!\row[3]~input_o\ & ((!\row[2]~input_o\) # (!\row[0]~input_o\)))) # (!\row[1]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux153~0_combout\);

-- Location: LCCOMB_X57_Y61_N20
\Mux266~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux266~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\)) # (!\row[3]~input_o\ & ((\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux266~0_combout\);

-- Location: LCCOMB_X57_Y61_N2
\Mux332~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~401_combout\ = (\Mux332~400_combout\ & ((\Mux153~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~400_combout\ & (((\ascii_ucode[0]~input_o\ & \Mux266~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~400_combout\,
	datab => \Mux153~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux266~0_combout\,
	combout => \Mux332~401_combout\);

-- Location: LCCOMB_X57_Y61_N28
\Mux133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~0_combout\ = (\row[2]~input_o\ & (((!\row[3]~input_o\)))) # (!\row[2]~input_o\ & (\row[1]~input_o\ & ((\row[0]~input_o\) # (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux133~0_combout\);

-- Location: LCCOMB_X57_Y60_N14
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((!\row[2]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X60_Y61_N8
\Mux332~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~402_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux25~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux133~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux133~0_combout\,
	datac => \Mux25~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~402_combout\);

-- Location: LCCOMB_X61_Y61_N30
\Mux145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~0_combout\ = (\row[1]~input_o\ & (!\row[0]~input_o\ & (\row[3]~input_o\))) # (!\row[1]~input_o\ & ((\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux145~0_combout\);

-- Location: LCCOMB_X61_Y61_N24
\Mux332~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~403_combout\ = (\Mux332~402_combout\ & (((\Mux145~0_combout\)) # (!\ascii_ucode[0]~input_o\))) # (!\Mux332~402_combout\ & (\ascii_ucode[0]~input_o\ & ((\Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~402_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux145~0_combout\,
	datad => \Mux78~0_combout\,
	combout => \Mux332~403_combout\);

-- Location: LCCOMB_X61_Y61_N18
\Mux331~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~47_combout\ = (\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux332~401_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~403_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~401_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~403_combout\,
	combout => \Mux331~47_combout\);

-- Location: LCCOMB_X59_Y61_N0
\Mux127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~0_combout\ = (\row[2]~input_o\ & (((!\row[3]~input_o\) # (!\row[0]~input_o\)) # (!\ascii_ucode[0]~input_o\))) # (!\row[2]~input_o\ & (((\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux127~0_combout\);

-- Location: LCCOMB_X59_Y61_N10
\Mux127~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~1_combout\ = (\row[1]~input_o\ & ((\Mux51~0_combout\))) # (!\row[1]~input_o\ & (\Mux127~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \Mux127~0_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux127~1_combout\);

-- Location: LCCOMB_X59_Y61_N26
\Mux125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & ((!\row[0]~input_o\))) # (!\row[1]~input_o\ & (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux125~0_combout\);

-- Location: LCCOMB_X61_Y64_N14
\Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & ((!\row[1]~input_o\))) # (!\row[0]~input_o\ & ((\row[1]~input_o\) # (!\row[2]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux120~0_combout\);

-- Location: LCCOMB_X59_Y61_N20
\Mux332~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~397_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux120~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux125~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~0_combout\,
	datab => \Mux120~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~397_combout\);

-- Location: LCCOMB_X59_Y61_N8
\Mux332~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~396_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux168~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux204~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux204~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux168~0_combout\,
	combout => \Mux332~396_combout\);

-- Location: LCCOMB_X59_Y61_N22
\Mux332~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~398_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~396_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~397_combout\,
	datac => \Mux332~396_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~398_combout\);

-- Location: LCCOMB_X59_Y62_N0
\Mux332~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~395_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux204~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux204~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux319~3_combout\,
	combout => \Mux332~395_combout\);

-- Location: LCCOMB_X59_Y61_N4
\Mux332~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~399_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~398_combout\ & (\Mux127~1_combout\)) # (!\Mux332~398_combout\ & ((\Mux332~395_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~1_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~398_combout\,
	datad => \Mux332~395_combout\,
	combout => \Mux332~399_combout\);

-- Location: LCCOMB_X61_Y61_N12
\Mux331~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~46_combout\ = (\Mux332~399_combout\ & !\ascii_ucode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~399_combout\,
	datac => \ascii_ucode[3]~input_o\,
	combout => \Mux331~46_combout\);

-- Location: LCCOMB_X61_Y61_N4
\Mux331~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~48_combout\ = (\ascii_ucode[4]~input_o\ & (((\Mux331~47_combout\) # (\Mux331~46_combout\)))) # (!\ascii_ucode[4]~input_o\ & (\Mux332~394_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~394_combout\,
	datab => \Mux331~47_combout\,
	datac => \Mux331~46_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~48_combout\);

-- Location: LCCOMB_X66_Y65_N12
\Mux332~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~378_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (!\Mux221~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux316~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux316~0_combout\,
	datac => \Mux221~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~378_combout\);

-- Location: LCCOMB_X58_Y63_N14
\Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = \row[2]~input_o\ $ (\row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux106~0_combout\);

-- Location: LCCOMB_X63_Y63_N26
\Mux332~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~379_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~378_combout\ & ((\Mux229~0_combout\))) # (!\Mux332~378_combout\ & (\Mux106~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~378_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~378_combout\,
	datac => \Mux106~0_combout\,
	datad => \Mux229~0_combout\,
	combout => \Mux332~379_combout\);

-- Location: LCCOMB_X60_Y61_N12
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & (!\row[1]~input_o\)) # (!\row[0]~input_o\ & ((!\row[2]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X60_Y61_N20
\Mux332~915\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~915_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux27~0_combout\ & (!\ascii_ucode[0]~input_o\))) # (!\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\ & \Mux264~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux264~0_combout\,
	combout => \Mux332~915_combout\);

-- Location: LCCOMB_X60_Y61_N6
\Mux332~916\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~916_combout\ = (\Mux332~915_combout\) # ((\Mux269~0_combout\ & (\ascii_ucode[0]~input_o\ $ (!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux269~0_combout\,
	datab => \Mux332~915_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~916_combout\);

-- Location: LCCOMB_X57_Y64_N20
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\row[1]~input_o\ & ((\row[2]~input_o\ & (!\row[0]~input_o\ & !\row[3]~input_o\)) # (!\row[2]~input_o\ & ((\row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X60_Y61_N16
\Mux332~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~380_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux268~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux23~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux268~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~380_combout\);

-- Location: LCCOMB_X63_Y66_N20
\Mux241~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux241~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux241~0_combout\);

-- Location: LCCOMB_X60_Y60_N0
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & (!\row[3]~input_o\)) # (!\row[1]~input_o\ & ((!\row[0]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X60_Y61_N10
\Mux332~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~381_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~380_combout\ & ((\Mux35~0_combout\))) # (!\Mux332~380_combout\ & (\Mux241~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~380_combout\,
	datac => \Mux241~0_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux332~381_combout\);

-- Location: LCCOMB_X60_Y61_N30
\Mux332~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~382_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~381_combout\) # (\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~916_combout\ & ((!\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~916_combout\,
	datab => \Mux332~381_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~382_combout\);

-- Location: LCCOMB_X69_Y63_N10
\Mux332~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~383_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux158~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux241~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux158~0_combout\,
	datac => \Mux241~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~383_combout\);

-- Location: LCCOMB_X69_Y63_N4
\Mux332~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~384_combout\ = (\Mux332~266_combout\) # (\Mux332~383_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~266_combout\,
	datad => \Mux332~383_combout\,
	combout => \Mux332~384_combout\);

-- Location: LCCOMB_X63_Y63_N20
\Mux332~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~385_combout\ = (\Mux332~382_combout\ & (((\Mux332~384_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux332~382_combout\ & (\Mux332~379_combout\ & ((\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~379_combout\,
	datab => \Mux332~382_combout\,
	datac => \Mux332~384_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux332~385_combout\);

-- Location: LCCOMB_X63_Y63_N10
\Mux332~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~370_combout\ = (\Mux319~1_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux319~1_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~370_combout\);

-- Location: LCCOMB_X58_Y62_N14
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\row[0]~input_o\ & (\row[2]~input_o\ & ((!\row[1]~input_o\) # (!\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X58_Y62_N4
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X58_Y62_N0
\Mux332~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~371_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux14~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~371_combout\);

-- Location: LCCOMB_X57_Y62_N0
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & (\row[1]~input_o\ $ (\row[0]~input_o\)))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X59_Y65_N28
\Mux332~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~372_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux319~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux52~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Mux319~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~372_combout\);

-- Location: LCCOMB_X63_Y63_N4
\Mux332~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~373_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\) # ((\Mux332~371_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[1]~input_o\ & ((\Mux332~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~371_combout\,
	datad => \Mux332~372_combout\,
	combout => \Mux332~373_combout\);

-- Location: LCCOMB_X63_Y63_N14
\Mux332~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~374_combout\ = (\Mux332~373_combout\ & (((\Mux332~257_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~373_combout\ & (\Mux332~370_combout\ & (\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~370_combout\,
	datab => \Mux332~373_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~257_combout\,
	combout => \Mux332~374_combout\);

-- Location: LCCOMB_X66_Y64_N22
\Mux332~914\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~914_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~309_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\ascii_ucode[0]~input_o\ & (\Mux241~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux241~0_combout\,
	datad => \Mux332~309_combout\,
	combout => \Mux332~914_combout\);

-- Location: LCCOMB_X66_Y64_N28
\Mux332~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~375_combout\ = (\ascii_ucode[1]~input_o\ & (\ascii_ucode[0]~input_o\ & (\Mux287~0_combout\))) # (!\ascii_ucode[1]~input_o\ & (!\ascii_ucode[0]~input_o\ & ((\Mux293~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux287~0_combout\,
	datad => \Mux293~0_combout\,
	combout => \Mux332~375_combout\);

-- Location: LCCOMB_X66_Y64_N24
\Mux332~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~377_combout\ = (\Mux332~914_combout\ & ((\Mux332~375_combout\) # (\ascii_ucode[2]~input_o\ $ (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~914_combout\ & (\Mux332~375_combout\ & (\ascii_ucode[2]~input_o\ $ (\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~914_combout\,
	datab => \Mux332~375_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~377_combout\);

-- Location: LCCOMB_X63_Y63_N8
\Mux331~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~44_combout\ = (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux332~374_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux332~377_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~374_combout\,
	datac => \Mux332~377_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~44_combout\);

-- Location: LCCOMB_X63_Y63_N30
\Mux331~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~45_combout\ = (\Mux331~44_combout\) # ((\Mux332~385_combout\ & \ascii_ucode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~385_combout\,
	datac => \Mux331~44_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux331~45_combout\);

-- Location: LCCOMB_X59_Y59_N6
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\ & (!\row[2]~input_o\)) # (!\row[3]~input_o\ & ((!\row[0]~input_o\))))) # (!\row[1]~input_o\ & (!\row[3]~input_o\ & (\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X59_Y59_N16
\Mux332~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~359_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux187~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~0_combout\,
	datab => \Mux187~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~359_combout\);

-- Location: LCCOMB_X59_Y65_N24
\Mux332~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~360_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux52~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux317~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Mux317~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~360_combout\);

-- Location: LCCOMB_X58_Y65_N18
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\)) # (!\row[2]~input_o\ & ((\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X58_Y65_N4
\Mux332~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~357_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux55~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux216~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~357_combout\);

-- Location: LCCOMB_X59_Y65_N30
\Mux332~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~358_combout\ = (\Mux332~357_combout\ & ((\Mux301~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~357_combout\ & (((\Mux319~7_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux301~0_combout\,
	datab => \Mux332~357_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~358_combout\);

-- Location: LCCOMB_X59_Y65_N2
\Mux332~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~361_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~358_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~359_combout\) # ((\Mux332~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~359_combout\,
	datab => \Mux332~360_combout\,
	datac => \Mux332~358_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~361_combout\);

-- Location: LCCOMB_X60_Y67_N18
\Mux332~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~362_combout\ = (\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\ $ (((\ascii_ucode[1]~input_o\ & \row[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~362_combout\);

-- Location: LCCOMB_X60_Y67_N4
\Mux332~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~363_combout\ = (\ascii_ucode[0]~input_o\) # (!\Mux45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux45~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~363_combout\);

-- Location: LCCOMB_X60_Y67_N22
\Mux332~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~364_combout\ = (\Mux332~362_combout\) # ((!\ascii_ucode[1]~input_o\ & (\Mux332~363_combout\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~362_combout\,
	datac => \Mux332~363_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~364_combout\);

-- Location: LCCOMB_X60_Y67_N8
\Mux331~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~42_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~364_combout\))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~964_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~964_combout\,
	datab => \Mux332~364_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux331~42_combout\);

-- Location: LCCOMB_X58_Y62_N2
\Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (!\row[0]~input_o\ & (\row[2]~input_o\ & (\row[3]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux81~0_combout\);

-- Location: LCCOMB_X57_Y64_N26
\Mux332~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~368_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux116~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux81~0_combout\,
	datac => \Mux116~0_combout\,
	combout => \Mux332~368_combout\);

-- Location: LCCOMB_X58_Y63_N20
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (!\row[1]~input_o\ & (\row[3]~input_o\ & ((\row[0]~input_o\) # (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X58_Y63_N26
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\))) # (!\row[0]~input_o\ & ((\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X58_Y63_N6
\Mux332~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~366_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux68~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux67~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux67~0_combout\,
	datac => \Mux68~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~366_combout\);

-- Location: LCCOMB_X58_Y66_N8
\Mux332~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~367_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux223~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~366_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux223~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~366_combout\,
	combout => \Mux332~367_combout\);

-- Location: LCCOMB_X59_Y63_N8
\Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\) # ((!\row[0]~input_o\) # (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux72~0_combout\);

-- Location: LCCOMB_X59_Y63_N26
\Mux332~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~365_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux147~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux72~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux72~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux147~0_combout\,
	combout => \Mux332~365_combout\);

-- Location: LCCOMB_X58_Y66_N10
\Mux332~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~369_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~367_combout\ & (\Mux332~368_combout\)) # (!\Mux332~367_combout\ & ((\Mux332~365_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~368_combout\,
	datac => \Mux332~367_combout\,
	datad => \Mux332~365_combout\,
	combout => \Mux332~369_combout\);

-- Location: LCCOMB_X59_Y67_N10
\Mux331~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~43_combout\ = (\ascii_ucode[4]~input_o\ & ((\Mux331~42_combout\ & ((\Mux332~369_combout\))) # (!\Mux331~42_combout\ & (\Mux332~361_combout\)))) # (!\ascii_ucode[4]~input_o\ & (((\Mux331~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~361_combout\,
	datab => \ascii_ucode[4]~input_o\,
	datac => \Mux331~42_combout\,
	datad => \Mux332~369_combout\,
	combout => \Mux331~43_combout\);

-- Location: LCCOMB_X67_Y63_N16
\Mux330~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux330~2_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & ((\Mux331~43_combout\))) # (!\ascii_ucode[6]~input_o\ & (\Mux331~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~45_combout\,
	datab => \Mux331~43_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux330~2_combout\);

-- Location: LCCOMB_X67_Y63_N26
\Mux330~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux330~3_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux330~2_combout\ & (\Mux331~48_combout\)) # (!\Mux330~2_combout\ & ((\Mux331~19_combout\))))) # (!\ascii_ucode[5]~input_o\ & (((\Mux330~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux331~48_combout\,
	datac => \Mux331~19_combout\,
	datad => \Mux330~2_combout\,
	combout => \Mux330~3_combout\);

-- Location: LCCOMB_X67_Y63_N28
\Mux330~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux330~4_combout\ = (\ascii_ucode[7]~input_o\ & (\Mux330~1_combout\)) # (!\ascii_ucode[7]~input_o\ & ((\Mux330~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux330~1_combout\,
	datac => \Mux330~3_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux330~4_combout\);

-- Location: LCCOMB_X66_Y63_N18
\Mux332~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~405_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux317~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux317~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~405_combout\);

-- Location: LCCOMB_X68_Y65_N12
\Mux332~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~404_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux316~1_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux316~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux316~2_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux316~1_combout\,
	combout => \Mux332~404_combout\);

-- Location: LCCOMB_X66_Y63_N28
\Mux332~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~406_combout\ = (!\ascii_ucode[1]~input_o\ & ((\Mux332~404_combout\) # ((\ascii_ucode[2]~input_o\ & \Mux332~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~405_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~404_combout\,
	combout => \Mux332~406_combout\);

-- Location: LCCOMB_X59_Y65_N14
\Mux332~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~407_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux301~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux319~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux301~0_combout\,
	datab => \Mux319~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~407_combout\);

-- Location: LCCOMB_X67_Y65_N14
\Mux332~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~408_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~407_combout\ & (\Mux232~1_combout\)) # (!\Mux332~407_combout\ & ((\Mux323~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux232~1_combout\,
	datac => \Mux332~407_combout\,
	datad => \Mux323~0_combout\,
	combout => \Mux332~408_combout\);

-- Location: LCCOMB_X66_Y63_N14
\Mux332~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~409_combout\ = (\Mux332~406_combout\) # ((\ascii_ucode[1]~input_o\ & \Mux332~408_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~406_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~408_combout\,
	combout => \Mux332~409_combout\);

-- Location: LCCOMB_X66_Y65_N14
\Mux332~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~410_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~3_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux286~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux319~3_combout\,
	datad => \Mux286~0_combout\,
	combout => \Mux332~410_combout\);

-- Location: LCCOMB_X67_Y65_N28
\Mux332~918\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~918_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux245~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (!\row[1]~input_o\ & ((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \Mux245~0_combout\,
	datad => \row[2]~input_o\,
	combout => \Mux332~918_combout\);

-- Location: LCCOMB_X67_Y65_N8
\Mux332~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~411_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~217_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~918_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~918_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~217_combout\,
	combout => \Mux332~411_combout\);

-- Location: LCCOMB_X67_Y65_N18
\Mux332~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~412_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux319~7_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~412_combout\);

-- Location: LCCOMB_X67_Y65_N12
\Mux332~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~413_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~411_combout\ & ((\Mux332~412_combout\))) # (!\Mux332~411_combout\ & (\Mux332~410_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~410_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~411_combout\,
	datad => \Mux332~412_combout\,
	combout => \Mux332~413_combout\);

-- Location: LCCOMB_X59_Y65_N16
\Mux332~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~416_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux319~6_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux171~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux171~0_combout\,
	datac => \Mux319~6_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~416_combout\);

-- Location: LCCOMB_X60_Y65_N30
\Mux332~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~417_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux173~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((!\Mux275~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux173~0_combout\,
	datad => \Mux275~0_combout\,
	combout => \Mux332~417_combout\);

-- Location: LCCOMB_X63_Y65_N14
\Mux332~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~414_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux217~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux177~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux177~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux217~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~414_combout\);

-- Location: LCCOMB_X60_Y65_N4
\Mux332~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~415_combout\ = (\Mux332~414_combout\ & (((\Mux319~6_combout\)) # (!\ascii_ucode[2]~input_o\))) # (!\Mux332~414_combout\ & (\ascii_ucode[2]~input_o\ & (\Mux147~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~414_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux147~0_combout\,
	datad => \Mux319~6_combout\,
	combout => \Mux332~415_combout\);

-- Location: LCCOMB_X59_Y65_N18
\Mux332~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~418_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~415_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~416_combout\) # ((\Mux332~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~416_combout\,
	datac => \Mux332~417_combout\,
	datad => \Mux332~415_combout\,
	combout => \Mux332~418_combout\);

-- Location: LCCOMB_X68_Y65_N14
\Mux329~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~0_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux332~413_combout\) # ((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (((\Mux332~418_combout\ & !\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~413_combout\,
	datab => \ascii_ucode[5]~input_o\,
	datac => \Mux332~418_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux329~0_combout\);

-- Location: LCCOMB_X63_Y61_N10
\Mux295~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux295~0_combout\ = \row[2]~input_o\ $ (((\row[3]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux295~0_combout\);

-- Location: LCCOMB_X63_Y61_N4
\Mux332~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~421_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux298~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux295~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux295~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux298~0_combout\,
	combout => \Mux332~421_combout\);

-- Location: LCCOMB_X68_Y62_N2
\Mux308~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux308~0_combout\ = (\row[3]~input_o\ & (((\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux308~0_combout\);

-- Location: LCCOMB_X68_Y63_N22
\Mux172~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux172~0_combout\ = (\row[0]~input_o\ & (!\row[3]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\))) # (!\row[0]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux172~0_combout\);

-- Location: LCCOMB_X68_Y63_N16
\Mux332~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~420_combout\ = (\ascii_ucode[0]~input_o\ & ((!\Mux172~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux308~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux308~0_combout\,
	datad => \Mux172~0_combout\,
	combout => \Mux332~420_combout\);

-- Location: LCCOMB_X68_Y63_N10
\Mux332~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~422_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~420_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~421_combout\,
	datab => \Mux332~420_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~422_combout\);

-- Location: LCCOMB_X68_Y63_N20
\Mux332~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~423_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux275~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux172~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux172~0_combout\,
	datad => \Mux275~0_combout\,
	combout => \Mux332~423_combout\);

-- Location: LCCOMB_X68_Y63_N18
\Mux304~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux304~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & (\row[0]~input_o\ $ (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux304~0_combout\);

-- Location: LCCOMB_X68_Y63_N12
\Mux332~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~419_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux304~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux298~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux304~0_combout\,
	datad => \Mux298~0_combout\,
	combout => \Mux332~419_combout\);

-- Location: LCCOMB_X68_Y63_N14
\Mux332~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~424_combout\ = (\Mux332~422_combout\ & ((\Mux332~423_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~422_combout\ & (((\ascii_ucode[1]~input_o\ & \Mux332~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~422_combout\,
	datab => \Mux332~423_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~419_combout\,
	combout => \Mux332~424_combout\);

-- Location: LCCOMB_X67_Y63_N22
\Mux329~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~1_combout\ = (\Mux329~0_combout\ & (((\Mux332~424_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux329~0_combout\ & (\Mux332~409_combout\ & ((\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~409_combout\,
	datab => \Mux329~0_combout\,
	datac => \Mux332~424_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux329~1_combout\);

-- Location: LCCOMB_X59_Y62_N10
\Mux332~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~425_combout\ = (\Mux332~191_combout\) # ((!\ascii_ucode[0]~input_o\ & \Mux319~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~3_combout\,
	datac => \Mux332~191_combout\,
	combout => \Mux332~425_combout\);

-- Location: LCCOMB_X59_Y62_N16
\Mux214~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux214~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & (\row[0]~input_o\ & \row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ $ (((\row[1]~input_o\ & \row[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux214~0_combout\);

-- Location: LCCOMB_X59_Y62_N6
\Mux288~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux288~0_combout\ = (\row[0]~input_o\ & (!\row[1]~input_o\ & \row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux288~0_combout\);

-- Location: LCCOMB_X59_Y62_N18
\Mux332~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~429_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux288~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux214~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux214~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux288~0_combout\,
	combout => \Mux332~429_combout\);

-- Location: LCCOMB_X67_Y62_N4
\Mux240~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux240~0_combout\ = (!\row[1]~input_o\ & (\row[3]~input_o\ & ((\row[0]~input_o\) # (!\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux240~0_combout\);

-- Location: LCCOMB_X67_Y62_N14
\Mux332~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~426_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux240~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux280~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux280~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux240~0_combout\,
	combout => \Mux332~426_combout\);

-- Location: LCCOMB_X63_Y65_N16
\Mux332~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~427_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux274~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux301~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux274~0_combout\,
	datac => \Mux301~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~427_combout\);

-- Location: LCCOMB_X59_Y62_N28
\Mux332~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~428_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~426_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~427_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~426_combout\,
	datab => \Mux332~427_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~428_combout\);

-- Location: LCCOMB_X59_Y62_N4
\Mux332~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~430_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~428_combout\ & ((\Mux332~429_combout\))) # (!\Mux332~428_combout\ & (\Mux332~425_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~425_combout\,
	datab => \Mux332~429_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~428_combout\,
	combout => \Mux332~430_combout\);

-- Location: LCCOMB_X67_Y62_N16
\Mux332~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~431_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux264~0_combout\) # ((\Mux332~140_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux240~0_combout\ & !\Mux332~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux240~0_combout\,
	datad => \Mux332~140_combout\,
	combout => \Mux332~431_combout\);

-- Location: LCCOMB_X68_Y61_N4
\Mux207~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux207~0_combout\ = (\row[2]~input_o\ & (!\row[1]~input_o\ & (\row[3]~input_o\ $ (!\row[0]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ $ (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux207~0_combout\);

-- Location: LCCOMB_X67_Y62_N22
\Mux332~919\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~919_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux207~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~431_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux332~431_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~431_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux207~0_combout\,
	combout => \Mux332~919_combout\);

-- Location: LCCOMB_X67_Y62_N18
\Mux332~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~432_combout\ = (\Mux332~919_combout\ & ((\Mux217~0_combout\) # ((!\Mux332~140_combout\)))) # (!\Mux332~919_combout\ & (((\Mux264~0_combout\ & \Mux332~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~919_combout\,
	datab => \Mux217~0_combout\,
	datac => \Mux264~0_combout\,
	datad => \Mux332~140_combout\,
	combout => \Mux332~432_combout\);

-- Location: LCCOMB_X68_Y62_N20
\Mux331~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux331~49_combout\ = (!\row[1]~input_o\ & (\row[2]~input_o\ & (!\row[3]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux331~49_combout\);

-- Location: LCCOMB_X67_Y60_N24
\Mux175~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux175~0_combout\ = \row[3]~input_o\ $ (((\row[1]~input_o\) # (\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux175~0_combout\);

-- Location: LCCOMB_X68_Y65_N8
\Mux332~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~433_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux171~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux165~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux165~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux171~0_combout\,
	combout => \Mux332~433_combout\);

-- Location: LCCOMB_X68_Y63_N8
\Mux332~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~434_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~433_combout\ & ((\Mux172~0_combout\))) # (!\Mux332~433_combout\ & (\Mux175~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux175~0_combout\,
	datac => \Mux172~0_combout\,
	datad => \Mux332~433_combout\,
	combout => \Mux332~434_combout\);

-- Location: LCCOMB_X63_Y61_N14
\Mux160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux160~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ & (!\row[2]~input_o\ & !\row[0]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux160~0_combout\);

-- Location: LCCOMB_X68_Y63_N2
\Mux332~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~435_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux319~6_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux160~0_combout\,
	datac => \Mux319~6_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~435_combout\);

-- Location: LCCOMB_X68_Y63_N4
\Mux332~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~436_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~434_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux331~49_combout\) # ((\Mux332~435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux331~49_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~434_combout\,
	datad => \Mux332~435_combout\,
	combout => \Mux332~436_combout\);

-- Location: LCCOMB_X67_Y63_N24
\Mux329~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~2_combout\ = (\ascii_ucode[6]~input_o\ & ((\Mux332~432_combout\) # ((\ascii_ucode[5]~input_o\)))) # (!\ascii_ucode[6]~input_o\ & (((!\ascii_ucode[5]~input_o\ & \Mux332~436_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~432_combout\,
	datab => \ascii_ucode[6]~input_o\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~436_combout\,
	combout => \Mux329~2_combout\);

-- Location: LCCOMB_X63_Y65_N18
\Mux284~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux284~0_combout\ = (\row[0]~input_o\ & ((\row[2]~input_o\ & (!\row[3]~input_o\)) # (!\row[2]~input_o\ & ((\row[1]~input_o\))))) # (!\row[0]~input_o\ & (\row[1]~input_o\ & ((\row[3]~input_o\) # (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux284~0_combout\);

-- Location: LCCOMB_X68_Y66_N22
\Mux332~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~439_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux217~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux284~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux284~0_combout\,
	datac => \Mux217~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~439_combout\);

-- Location: LCCOMB_X68_Y66_N24
\Mux332~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~440_combout\ = (\Mux332~439_combout\ & ((\Mux245~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~439_combout\ & (((\Mux211~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux245~0_combout\,
	datab => \Mux211~0_combout\,
	datac => \Mux332~439_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~440_combout\);

-- Location: LCCOMB_X68_Y66_N10
\Mux332~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~437_combout\ = (\row[3]~input_o\ & (!\ascii_ucode[0]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~437_combout\);

-- Location: LCCOMB_X68_Y66_N6
\Mux332~920\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~920_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux203~0_combout\ & \ascii_ucode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux203~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~920_combout\);

-- Location: LCCOMB_X68_Y66_N4
\Mux332~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~438_combout\ = (!\ascii_ucode[1]~input_o\ & ((\Mux332~920_combout\) # ((\Mux332~437_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~437_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~920_combout\,
	combout => \Mux332~438_combout\);

-- Location: LCCOMB_X67_Y66_N4
\Mux332~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~441_combout\ = (\Mux332~438_combout\) # ((\Mux332~440_combout\ & \ascii_ucode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~440_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~438_combout\,
	combout => \Mux332~441_combout\);

-- Location: LCCOMB_X67_Y63_N18
\Mux329~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~3_combout\ = (\Mux329~2_combout\ & (((\Mux332~441_combout\) # (!\ascii_ucode[5]~input_o\)))) # (!\Mux329~2_combout\ & (\Mux332~430_combout\ & (\ascii_ucode[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~430_combout\,
	datab => \Mux329~2_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~441_combout\,
	combout => \Mux329~3_combout\);

-- Location: LCCOMB_X61_Y62_N24
\Mux332~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~458_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux165~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((!\Mux221~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux165~0_combout\,
	datab => \Mux221~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~458_combout\);

-- Location: LCCOMB_X61_Y62_N2
\Mux332~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~459_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~289_combout\) # ((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((!\ascii_ucode[1]~input_o\ & \Mux332~458_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~289_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~458_combout\,
	combout => \Mux332~459_combout\);

-- Location: LCCOMB_X61_Y62_N14
\Mux332~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~457_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~10_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux319~10_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~457_combout\);

-- Location: LCCOMB_X61_Y62_N4
\Mux332~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~460_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~459_combout\ & ((\Mux217~0_combout\))) # (!\Mux332~459_combout\ & (\Mux332~457_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~459_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~459_combout\,
	datac => \Mux332~457_combout\,
	datad => \Mux217~0_combout\,
	combout => \Mux332~460_combout\);

-- Location: LCCOMB_X59_Y66_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & (!\row[2]~input_o\ & !\row[0]~input_o\))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X66_Y62_N2
\Mux332~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~442_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux6~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~442_combout\);

-- Location: LCCOMB_X66_Y62_N4
\Mux332~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~443_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~442_combout\ & (!\Mux221~0_combout\)) # (!\Mux332~442_combout\ & ((\Mux116~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~442_combout\,
	datac => \Mux221~0_combout\,
	datad => \Mux116~0_combout\,
	combout => \Mux332~443_combout\);

-- Location: LCCOMB_X66_Y62_N24
\Mux332~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~445_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux207~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux222~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux207~0_combout\,
	datac => \Mux222~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~445_combout\);

-- Location: LCCOMB_X65_Y60_N2
\Mux195~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux195~0_combout\ = (\row[3]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux195~0_combout\);

-- Location: LCCOMB_X66_Y62_N22
\Mux332~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~444_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux195~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux195~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux319~4_combout\,
	combout => \Mux332~444_combout\);

-- Location: LCCOMB_X65_Y62_N26
\Mux332~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~446_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~443_combout\)) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~445_combout\) # (\Mux332~444_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~443_combout\,
	datab => \Mux332~445_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~444_combout\,
	combout => \Mux332~446_combout\);

-- Location: LCCOMB_X57_Y62_N24
\Mux231~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux231~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & (!\row[1]~input_o\)) # (!\row[0]~input_o\ & ((!\row[2]~input_o\))))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux231~0_combout\);

-- Location: LCCOMB_X57_Y62_N10
\Mux332~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~450_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux52~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux231~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux231~0_combout\,
	datab => \Mux52~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~450_combout\);

-- Location: LCCOMB_X63_Y66_N22
\Mux260~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux260~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ & ((!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[1]~input_o\ $ (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux260~0_combout\);

-- Location: LCCOMB_X57_Y62_N30
\Mux332~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~449_combout\ = (\ascii_ucode[2]~input_o\ & \Mux260~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datad => \Mux260~0_combout\,
	combout => \Mux332~449_combout\);

-- Location: LCCOMB_X57_Y62_N2
\Mux332~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~447_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux260~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux233~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux233~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux260~0_combout\,
	combout => \Mux332~447_combout\);

-- Location: LCCOMB_X57_Y64_N14
\Mux236~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux236~0_combout\ = (!\row[1]~input_o\ & ((\row[3]~input_o\ & (\row[0]~input_o\)) # (!\row[3]~input_o\ & ((\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux236~0_combout\);

-- Location: LCCOMB_X57_Y62_N12
\Mux332~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~448_combout\ = (\Mux332~447_combout\ & ((\Mux264~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~447_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux236~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~447_combout\,
	datab => \Mux264~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux236~0_combout\,
	combout => \Mux332~448_combout\);

-- Location: LCCOMB_X57_Y62_N20
\Mux332~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~451_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~448_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~450_combout\) # ((\Mux332~449_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~450_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~449_combout\,
	datad => \Mux332~448_combout\,
	combout => \Mux332~451_combout\);

-- Location: LCCOMB_X58_Y62_N26
\Mux157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux157~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & ((!\row[2]~input_o\))) # (!\row[1]~input_o\ & ((\row[2]~input_o\) # (!\row[0]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux157~0_combout\);

-- Location: LCCOMB_X58_Y62_N12
\Mux332~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~452_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux157~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux323~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux157~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux323~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~452_combout\);

-- Location: LCCOMB_X59_Y59_N18
\Mux164~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux164~0_combout\ = (!\row[3]~input_o\ & ((\row[1]~input_o\ & (!\row[2]~input_o\)) # (!\row[1]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux164~0_combout\);

-- Location: LCCOMB_X58_Y62_N6
\Mux332~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~453_combout\ = (\Mux332~452_combout\ & ((\Mux187~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~452_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux164~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~452_combout\,
	datab => \Mux187~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux164~0_combout\,
	combout => \Mux332~453_combout\);

-- Location: LCCOMB_X58_Y62_N24
\Mux155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux155~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\)))) # (!\row[3]~input_o\ & (\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux155~0_combout\);

-- Location: LCCOMB_X58_Y62_N18
\Mux332~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~454_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux157~0_combout\) # ((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux155~0_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux157~0_combout\,
	datab => \Mux155~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~454_combout\);

-- Location: LCCOMB_X58_Y62_N28
\Mux332~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~455_combout\ = (\Mux332~454_combout\ & ((\Mux14~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~454_combout\ & (((\Mux319~5_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~454_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux319~5_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~455_combout\);

-- Location: LCCOMB_X61_Y62_N26
\Mux332~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~456_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~453_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~455_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~453_combout\,
	datab => \Mux332~455_combout\,
	datac => \ascii_ucode[1]~input_o\,
	combout => \Mux332~456_combout\);

-- Location: LCCOMB_X61_Y62_N20
\Mux329~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~4_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & (\Mux332~451_combout\)) # (!\ascii_ucode[6]~input_o\ & ((\Mux332~456_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux332~451_combout\,
	datac => \Mux332~456_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux329~4_combout\);

-- Location: LCCOMB_X61_Y62_N6
\Mux329~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~5_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux329~4_combout\ & (\Mux332~460_combout\)) # (!\Mux329~4_combout\ & ((\Mux332~446_combout\))))) # (!\ascii_ucode[5]~input_o\ & (((\Mux329~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux332~460_combout\,
	datac => \Mux332~446_combout\,
	datad => \Mux329~4_combout\,
	combout => \Mux329~5_combout\);

-- Location: LCCOMB_X67_Y63_N20
\Mux329~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~6_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux329~3_combout\) # ((\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (((!\ascii_ucode[4]~input_o\ & \Mux329~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux329~3_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux329~5_combout\,
	combout => \Mux329~6_combout\);

-- Location: LCCOMB_X62_Y68_N28
\Mux265~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux265~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\ $ (!\row[2]~input_o\)))) # (!\row[1]~input_o\ & ((\row[0]~input_o\ & (\row[3]~input_o\)) # (!\row[0]~input_o\ & (!\row[3]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux265~0_combout\);

-- Location: LCCOMB_X68_Y65_N18
\Mux332~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~463_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux265~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux316~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux265~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux316~2_combout\,
	combout => \Mux332~463_combout\);

-- Location: LCCOMB_X68_Y65_N4
\Mux332~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~464_combout\ = (\Mux332~463_combout\) # ((\ascii_ucode[2]~input_o\ & (\Mux289~0_combout\ & !\ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux289~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~463_combout\,
	combout => \Mux332~464_combout\);

-- Location: LCCOMB_X68_Y64_N28
\Mux258~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux258~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\ $ (\row[2]~input_o\)))) # (!\row[1]~input_o\ & ((\row[0]~input_o\ & ((\row[2]~input_o\))) # (!\row[0]~input_o\ & (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux258~0_combout\);

-- Location: LCCOMB_X68_Y64_N30
\Mux332~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~461_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux269~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux258~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux269~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datad => \Mux258~0_combout\,
	combout => \Mux332~461_combout\);

-- Location: LCCOMB_X69_Y63_N30
\Mux332~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~462_combout\ = (!\ascii_ucode[1]~input_o\ & (\ascii_ucode[0]~input_o\ $ (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~462_combout\);

-- Location: LCCOMB_X68_Y61_N6
\Mux332~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~465_combout\ = (\Mux332~464_combout\ & ((\ascii_ucode[1]~input_o\) # ((\Mux332~461_combout\ & \Mux332~462_combout\)))) # (!\Mux332~464_combout\ & (((\Mux332~461_combout\ & \Mux332~462_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~464_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~461_combout\,
	datad => \Mux332~462_combout\,
	combout => \Mux332~465_combout\);

-- Location: LCCOMB_X68_Y61_N8
\Mux332~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~478_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux269~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((!\Mux275~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux269~0_combout\,
	datac => \Mux275~0_combout\,
	combout => \Mux332~478_combout\);

-- Location: LCCOMB_X68_Y61_N12
\Mux322~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~0_combout\ = (\row[2]~input_o\ & (((!\row[3]~input_o\ & !\row[0]~input_o\)) # (!\row[1]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux322~0_combout\);

-- Location: LCCOMB_X68_Y61_N22
\Mux332~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~477_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux322~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux241~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux241~0_combout\,
	datad => \Mux322~0_combout\,
	combout => \Mux332~477_combout\);

-- Location: LCCOMB_X68_Y61_N26
\Mux332~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~479_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~477_combout\) # (\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~478_combout\ & ((!\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~478_combout\,
	datac => \Mux332~477_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~479_combout\);

-- Location: LCCOMB_X65_Y60_N20
\Mux254~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux254~0_combout\ = (\row[0]~input_o\ & (\row[2]~input_o\ & (\row[3]~input_o\ $ (\row[1]~input_o\)))) # (!\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux254~0_combout\);

-- Location: LCCOMB_X66_Y61_N26
\Mux332~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~480_combout\ = (\Mux254~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux254~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~480_combout\);

-- Location: LCCOMB_X68_Y61_N16
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\row[2]~input_o\ & ((\row[3]~input_o\ & (!\row[1]~input_o\ & !\row[0]~input_o\)) # (!\row[3]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X68_Y61_N10
\Mux332~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~476_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux38~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~476_combout\);

-- Location: LCCOMB_X68_Y61_N28
\Mux332~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~481_combout\ = (\Mux332~479_combout\ & (((\Mux332~480_combout\)) # (!\ascii_ucode[1]~input_o\))) # (!\Mux332~479_combout\ & (\ascii_ucode[1]~input_o\ & ((\Mux332~476_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~479_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~480_combout\,
	datad => \Mux332~476_combout\,
	combout => \Mux332~481_combout\);

-- Location: LCCOMB_X59_Y61_N6
\Mux190~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux190~0_combout\ = (!\row[0]~input_o\ & ((\row[2]~input_o\ & (!\row[3]~input_o\ & !\row[1]~input_o\)) # (!\row[2]~input_o\ & (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux190~0_combout\);

-- Location: LCCOMB_X58_Y61_N0
\Mux332~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~471_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux203~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux190~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux190~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux203~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~471_combout\);

-- Location: LCCOMB_X61_Y62_N8
\Mux332~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~472_combout\ = (\Mux332~471_combout\ & ((\Mux319~1_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~471_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux165~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~471_combout\,
	datab => \Mux319~1_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux165~0_combout\,
	combout => \Mux332~472_combout\);

-- Location: LCCOMB_X62_Y61_N10
\Mux332~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~473_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\) # ((\Mux171~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[0]~input_o\ & (\Mux175~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux175~0_combout\,
	datad => \Mux171~0_combout\,
	combout => \Mux332~473_combout\);

-- Location: LCCOMB_X67_Y61_N22
\Mux306~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux306~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\)))) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & (\row[2]~input_o\ & !\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux306~0_combout\);

-- Location: LCCOMB_X62_Y61_N12
\Mux332~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~474_combout\ = (\Mux332~473_combout\ & (((\Mux306~0_combout\)) # (!\ascii_ucode[0]~input_o\))) # (!\Mux332~473_combout\ & (\ascii_ucode[0]~input_o\ & ((\Mux316~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~473_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux306~0_combout\,
	datad => \Mux316~3_combout\,
	combout => \Mux332~474_combout\);

-- Location: LCCOMB_X61_Y62_N10
\Mux332~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~475_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~472_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~474_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~472_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~474_combout\,
	combout => \Mux332~475_combout\);

-- Location: LCCOMB_X67_Y61_N12
\Mux220~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux220~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & ((!\row[1]~input_o\))) # (!\row[0]~input_o\ & (!\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux220~0_combout\);

-- Location: LCCOMB_X62_Y69_N0
\Mux218~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux218~0_combout\ = (!\row[1]~input_o\ & ((\row[0]~input_o\ & (\row[2]~input_o\ & \row[3]~input_o\)) # (!\row[0]~input_o\ & (\row[2]~input_o\ $ (\row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux218~0_combout\);

-- Location: LCCOMB_X66_Y68_N28
\Mux332~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~468_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux220~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux218~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux220~0_combout\,
	datac => \Mux218~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~468_combout\);

-- Location: LCCOMB_X66_Y68_N6
\Mux332~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~469_combout\ = (\Mux332~468_combout\ & ((\Mux264~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~468_combout\ & (((\Mux222~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \Mux332~468_combout\,
	datac => \Mux222~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~469_combout\);

-- Location: LCCOMB_X65_Y68_N14
\Mux226~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux226~0_combout\ = (\row[1]~input_o\ & (!\row[3]~input_o\ & ((\row[2]~input_o\)))) # (!\row[1]~input_o\ & ((\row[2]~input_o\ & ((!\row[0]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux226~0_combout\);

-- Location: LCCOMB_X65_Y68_N28
\Mux224~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux224~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\)) # (!\row[0]~input_o\ & (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux224~0_combout\);

-- Location: LCCOMB_X65_Y67_N10
\Mux257~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux257~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ & (!\row[1]~input_o\))) # (!\row[0]~input_o\ & ((\row[3]~input_o\ & ((!\row[2]~input_o\))) # (!\row[3]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux257~0_combout\);

-- Location: LCCOMB_X65_Y67_N28
\Mux332~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~466_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux232~1_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux257~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux257~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux232~1_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~466_combout\);

-- Location: LCCOMB_X66_Y68_N10
\Mux332~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~467_combout\ = (\Mux332~466_combout\ & ((\Mux226~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~466_combout\ & (((\Mux224~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux226~0_combout\,
	datab => \Mux224~0_combout\,
	datac => \Mux332~466_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~467_combout\);

-- Location: LCCOMB_X66_Y68_N8
\Mux332~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~470_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~467_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~469_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~469_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datad => \Mux332~467_combout\,
	combout => \Mux332~470_combout\);

-- Location: LCCOMB_X61_Y62_N28
\Mux329~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~7_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux332~470_combout\) # (\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux332~475_combout\ & ((!\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~475_combout\,
	datab => \Mux332~470_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux329~7_combout\);

-- Location: LCCOMB_X68_Y61_N14
\Mux329~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~8_combout\ = (\Mux329~7_combout\ & (((\Mux332~481_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux329~7_combout\ & (\Mux332~465_combout\ & ((\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~465_combout\,
	datab => \Mux332~481_combout\,
	datac => \Mux329~7_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux329~8_combout\);

-- Location: LCCOMB_X67_Y63_N30
\Mux329~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~9_combout\ = (\Mux329~6_combout\ & (((\Mux329~8_combout\) # (!\ascii_ucode[4]~input_o\)))) # (!\Mux329~6_combout\ & (\Mux329~1_combout\ & (\ascii_ucode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux329~1_combout\,
	datab => \Mux329~6_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux329~8_combout\,
	combout => \Mux329~9_combout\);

-- Location: LCCOMB_X57_Y64_N0
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\row[2]~input_o\ & (((!\row[0]~input_o\ & !\row[3]~input_o\)))) # (!\row[2]~input_o\ & (\row[1]~input_o\ $ (((\row[0]~input_o\ & \row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X58_Y65_N14
\Mux332~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~485_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux319~7_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux61~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~7_combout\,
	datab => \Mux61~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~485_combout\);

-- Location: LCCOMB_X67_Y62_N28
\Mux332~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~482_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux159~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux147~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux159~0_combout\,
	combout => \Mux332~482_combout\);

-- Location: LCCOMB_X59_Y65_N20
\Mux332~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~483_combout\ = (\Mux332~482_combout\ & ((\Mux319~3_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~482_combout\ & (((\Mux319~7_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \Mux332~482_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~483_combout\);

-- Location: LCCOMB_X59_Y65_N6
\Mux332~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~484_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux317~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Mux317~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~484_combout\);

-- Location: LCCOMB_X59_Y65_N0
\Mux332~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~486_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~483_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~485_combout\) # ((\Mux332~484_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~485_combout\,
	datab => \Mux332~483_combout\,
	datac => \Mux332~484_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~486_combout\);

-- Location: LCCOMB_X60_Y61_N14
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((\row[2]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X67_Y60_N10
\Mux307~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux307~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & ((!\row[2]~input_o\)))) # (!\row[1]~input_o\ & ((\row[3]~input_o\ & (\row[0]~input_o\)) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux307~0_combout\);

-- Location: LCCOMB_X62_Y61_N22
\Mux332~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~492_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux307~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux319~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~5_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux307~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~492_combout\);

-- Location: LCCOMB_X60_Y61_N0
\Mux332~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~493_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~492_combout\ & ((\Mux30~0_combout\))) # (!\Mux332~492_combout\ & (\Mux264~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~492_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~492_combout\,
	combout => \Mux332~493_combout\);

-- Location: LCCOMB_X59_Y61_N24
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\row[2]~input_o\ & (!\row[1]~input_o\ & ((!\row[0]~input_o\) # (!\row[3]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X60_Y59_N24
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\row[1]~input_o\ & (!\row[0]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\)))) # (!\row[1]~input_o\ & (\row[3]~input_o\ & ((!\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X60_Y61_N26
\Mux332~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~490_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux22~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux22~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~490_combout\);

-- Location: LCCOMB_X60_Y61_N28
\Mux332~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~491_combout\ = (\Mux332~490_combout\ & ((\Mux38~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~490_combout\ & (((\Mux32~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~0_combout\,
	datab => \Mux32~0_combout\,
	datac => \Mux332~490_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~491_combout\);

-- Location: LCCOMB_X60_Y61_N2
\Mux332~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~494_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~491_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~493_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~493_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~491_combout\,
	combout => \Mux332~494_combout\);

-- Location: LCCOMB_X61_Y64_N24
\Mux332~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~487_combout\ = (\Mux332~136_combout\ & ((\ascii_ucode[1]~input_o\ & ((\Mux51~0_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Mux332~136_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux51~0_combout\,
	combout => \Mux332~487_combout\);

-- Location: LCCOMB_X60_Y64_N2
\Mux332~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~488_combout\ = (\Mux319~0_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux319~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~488_combout\);

-- Location: LCCOMB_X60_Y64_N20
\Mux332~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~489_combout\ = (\Mux332~487_combout\) # ((\ascii_ucode[2]~input_o\ & ((\Mux332~199_combout\) # (\Mux332~488_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~199_combout\,
	datac => \Mux332~487_combout\,
	datad => \Mux332~488_combout\,
	combout => \Mux332~489_combout\);

-- Location: LCCOMB_X60_Y63_N24
\Mux329~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~10_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\) # (\Mux332~489_combout\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux332~494_combout\ & (!\ascii_ucode[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux332~494_combout\,
	datac => \ascii_ucode[6]~input_o\,
	datad => \Mux332~489_combout\,
	combout => \Mux329~10_combout\);

-- Location: LCCOMB_X58_Y60_N28
\Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\) # ((\row[0]~input_o\ & \row[2]~input_o\)))) # (!\row[1]~input_o\ & (\row[0]~input_o\ & (\row[2]~input_o\ & \row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux117~0_combout\);

-- Location: LCCOMB_X58_Y60_N22
\Mux117~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~1_combout\ = (\Mux117~0_combout\ & ((\row[2]~input_o\ & ((!\row[3]~input_o\) # (!\ascii_ucode[0]~input_o\))) # (!\row[2]~input_o\ & ((\row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux117~0_combout\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux117~1_combout\);

-- Location: LCCOMB_X58_Y60_N26
\Mux144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~0_combout\ = (!\row[0]~input_o\ & ((\row[2]~input_o\ & (!\row[1]~input_o\)) # (!\row[2]~input_o\ & ((\row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux144~0_combout\);

-- Location: LCCOMB_X58_Y60_N4
\Mux332~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~496_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux144~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux223~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux144~0_combout\,
	datac => \Mux223~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~496_combout\);

-- Location: LCCOMB_X58_Y60_N6
\Mux332~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~497_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~496_combout\) # (\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux117~1_combout\ & ((!\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux117~1_combout\,
	datab => \Mux332~496_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~497_combout\);

-- Location: LCCOMB_X58_Y60_N16
\Mux332~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~495_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux120~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux128~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~0_combout\,
	datab => \Mux128~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~495_combout\);

-- Location: LCCOMB_X57_Y60_N16
\Mux143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~0_combout\ = (\row[2]~input_o\ & (!\row[1]~input_o\ & ((\row[3]~input_o\) # (!\row[0]~input_o\)))) # (!\row[2]~input_o\ & (!\row[0]~input_o\ & ((\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux143~0_combout\);

-- Location: LCCOMB_X58_Y60_N8
\Mux332~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~498_combout\ = (\Mux332~497_combout\ & (((\Mux143~0_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~497_combout\ & (\Mux332~495_combout\ & ((\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~497_combout\,
	datab => \Mux332~495_combout\,
	datac => \Mux143~0_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~498_combout\);

-- Location: LCCOMB_X60_Y63_N10
\Mux329~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~11_combout\ = (\Mux329~10_combout\ & (((\Mux332~498_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux329~10_combout\ & (\Mux332~486_combout\ & (\ascii_ucode[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~486_combout\,
	datab => \Mux329~10_combout\,
	datac => \ascii_ucode[6]~input_o\,
	datad => \Mux332~498_combout\,
	combout => \Mux329~11_combout\);

-- Location: LCCOMB_X60_Y60_N28
\Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (\row[2]~input_o\ & (\row[3]~input_o\ $ (((\row[0]~input_o\) # (\row[1]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux104~0_combout\);

-- Location: LCCOMB_X57_Y61_N6
\Mux124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (\row[1]~input_o\ & (!\row[0]~input_o\ & (\row[3]~input_o\ & !\row[2]~input_o\))) # (!\row[1]~input_o\ & (\row[2]~input_o\ & ((\row[3]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux124~0_combout\);

-- Location: LCCOMB_X61_Y60_N12
\Mux332~511\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~511_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux124~0_combout\) # (\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux104~0_combout\ & ((!\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux104~0_combout\,
	datab => \Mux124~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~511_combout\);

-- Location: LCCOMB_X60_Y60_N18
\Mux146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = (\row[3]~input_o\ & (((!\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux146~0_combout\);

-- Location: LCCOMB_X62_Y60_N16
\Mux332~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~512_combout\ = (\Mux332~511_combout\ & ((\Mux217~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~511_combout\ & (((\Mux146~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~511_combout\,
	datab => \Mux217~0_combout\,
	datac => \Mux146~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~512_combout\);

-- Location: LCCOMB_X63_Y61_N26
\Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (!\row[0]~input_o\ & ((\row[1]~input_o\ & (\row[3]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\ & ((\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux80~0_combout\);

-- Location: LCCOMB_X62_Y60_N14
\Mux332~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~509_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux171~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux80~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux80~0_combout\,
	datab => \Mux171~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~509_combout\);

-- Location: LCCOMB_X63_Y61_N16
\Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux109~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ & (!\row[2]~input_o\ & !\row[0]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux109~0_combout\);

-- Location: LCCOMB_X63_Y60_N22
\Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux114~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\))) # (!\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux114~0_combout\);

-- Location: LCCOMB_X63_Y60_N24
\Mux332~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~510_combout\ = (\Mux332~509_combout\ & (((\Mux114~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~509_combout\ & (\Mux109~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~509_combout\,
	datab => \Mux109~0_combout\,
	datac => \Mux114~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~510_combout\);

-- Location: LCCOMB_X62_Y60_N26
\Mux332~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~513_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~510_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~512_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~512_combout\,
	datad => \Mux332~510_combout\,
	combout => \Mux332~513_combout\);

-- Location: LCCOMB_X60_Y66_N16
\Mux332~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~502_combout\ = (\ascii_ucode[2]~input_o\ & ((\row[0]~input_o\ & (!\ascii_ucode[1]~input_o\)) # (!\row[0]~input_o\ & ((!\ascii_ucode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~502_combout\);

-- Location: LCCOMB_X60_Y66_N18
\Mux332~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~503_combout\ = (\Mux332~502_combout\) # ((!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\) # (\Mux332~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~502_combout\,
	datac => \Mux332~288_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~503_combout\);

-- Location: LCCOMB_X58_Y61_N2
\Mux332~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~506_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux18~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux318~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux318~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~506_combout\);

-- Location: LCCOMB_X67_Y61_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\row[3]~input_o\) # ((\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X68_Y64_N24
\Mux316~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux316~5_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & \row[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux316~5_combout\);

-- Location: LCCOMB_X67_Y61_N2
\Mux332~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~507_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((!\Mux316~5_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux316~5_combout\,
	combout => \Mux332~507_combout\);

-- Location: LCCOMB_X58_Y66_N20
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\row[1]~input_o\ & (!\row[0]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\))) # (!\row[1]~input_o\ & (\row[0]~input_o\ & (!\row[2]~input_o\ & \row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X57_Y62_N22
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((\row[1]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[1]~input_o\ $ (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X58_Y66_N6
\Mux332~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~504_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux9~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux9~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~504_combout\);

-- Location: LCCOMB_X61_Y64_N26
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((\row[1]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X61_Y64_N28
\Mux332~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~505_combout\ = (\Mux332~504_combout\ & (((\Mux15~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~504_combout\ & (\Mux278~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~504_combout\,
	datab => \Mux278~0_combout\,
	datac => \Mux15~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~505_combout\);

-- Location: LCCOMB_X58_Y61_N20
\Mux332~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~508_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~506_combout\) # ((\Mux332~507_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~505_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~506_combout\,
	datac => \Mux332~507_combout\,
	datad => \Mux332~505_combout\,
	combout => \Mux332~508_combout\);

-- Location: LCCOMB_X60_Y63_N20
\Mux329~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~12_combout\ = (\ascii_ucode[6]~input_o\ & ((\Mux332~503_combout\) # ((\ascii_ucode[5]~input_o\)))) # (!\ascii_ucode[6]~input_o\ & (((!\ascii_ucode[5]~input_o\ & \Mux332~508_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~503_combout\,
	datab => \ascii_ucode[6]~input_o\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~508_combout\,
	combout => \Mux329~12_combout\);

-- Location: LCCOMB_X61_Y67_N6
\Mux332~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~499_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~0_combout\,
	datac => \Mux49~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~499_combout\);

-- Location: LCCOMB_X61_Y67_N8
\Mux332~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~500_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\row[3]~input_o\)) # (!\ascii_ucode[0]~input_o\ & ((!\Mux47~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \Mux47~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~500_combout\);

-- Location: LCCOMB_X61_Y67_N26
\Mux332~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~501_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~499_combout\) # ((\Mux332~500_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux319~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~499_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~500_combout\,
	datad => \Mux319~0_combout\,
	combout => \Mux332~501_combout\);

-- Location: LCCOMB_X60_Y63_N30
\Mux329~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~13_combout\ = (\Mux329~12_combout\ & ((\Mux332~513_combout\) # ((!\ascii_ucode[5]~input_o\)))) # (!\Mux329~12_combout\ & (((\ascii_ucode[5]~input_o\ & \Mux332~501_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~513_combout\,
	datab => \Mux329~12_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~501_combout\,
	combout => \Mux329~13_combout\);

-- Location: LCCOMB_X61_Y67_N20
\Mux332~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~516_combout\ = (!\Mux47~0_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~516_combout\);

-- Location: LCCOMB_X61_Y68_N12
\Mux332~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~514_combout\ = (\ascii_ucode[0]~input_o\ & (\row[3]~input_o\)) # (!\ascii_ucode[0]~input_o\ & ((!\Mux45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[3]~input_o\,
	datad => \Mux45~0_combout\,
	combout => \Mux332~514_combout\);

-- Location: LCCOMB_X61_Y68_N30
\Mux332~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~515_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~199_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~514_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~514_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~199_combout\,
	combout => \Mux332~515_combout\);

-- Location: LCCOMB_X61_Y67_N14
\Mux332~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~517_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~515_combout\ & (\Mux332~516_combout\)) # (!\Mux332~515_combout\ & ((\Mux319~0_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~515_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~516_combout\,
	datac => \Mux332~515_combout\,
	datad => \Mux319~0_combout\,
	combout => \Mux332~517_combout\);

-- Location: LCCOMB_X59_Y67_N12
\Mux332~518\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~518_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux45~0_combout\ & ((!\ascii_ucode[0]~input_o\) # (!\ascii_ucode[2]~input_o\))) # (!\Mux45~0_combout\ & ((\ascii_ucode[2]~input_o\) # 
-- (\ascii_ucode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~518_combout\);

-- Location: LCCOMB_X60_Y63_N0
\Mux332~519\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~519_combout\ = (!\ascii_ucode[0]~input_o\ & !\row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[3]~input_o\,
	combout => \Mux332~519_combout\);

-- Location: LCCOMB_X59_Y67_N14
\Mux332~520\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~520_combout\ = (\Mux332~518_combout\ & (((!\ascii_ucode[1]~input_o\) # (!\Mux332~519_combout\)))) # (!\Mux332~518_combout\ & (!\Mux332~128_combout\ & ((\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~518_combout\,
	datab => \Mux332~128_combout\,
	datac => \Mux332~519_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~520_combout\);

-- Location: LCCOMB_X62_Y67_N6
\Mux332~523\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~523_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux241~0_combout\ & !\ascii_ucode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux241~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~523_combout\);

-- Location: LCCOMB_X62_Y68_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & (!\row[1]~input_o\)) # (!\row[0]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X62_Y68_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\))) # (!\row[0]~input_o\ & ((\row[1]~input_o\) # (\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X62_Y68_N26
\Mux332~521\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~521_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux5~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux0~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux332~521_combout\);

-- Location: LCCOMB_X62_Y67_N28
\Mux332~522\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~522_combout\ = (\Mux332~521_combout\ & ((\Mux271~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~521_combout\ & (((\Mux314~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux271~0_combout\,
	datab => \Mux314~0_combout\,
	datac => \Mux332~521_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~522_combout\);

-- Location: LCCOMB_X65_Y63_N4
\Mux319~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~11_combout\ = (\row[0]~input_o\ & (!\row[3]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux319~11_combout\);

-- Location: LCCOMB_X65_Y63_N6
\Mux332~524\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~524_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux319~11_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux293~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux319~11_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux293~0_combout\,
	combout => \Mux332~524_combout\);

-- Location: LCCOMB_X62_Y67_N8
\Mux332~525\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~525_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~522_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~523_combout\) # ((\Mux332~524_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~523_combout\,
	datab => \Mux332~522_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~524_combout\,
	combout => \Mux332~525_combout\);

-- Location: LCCOMB_X62_Y67_N18
\Mux329~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~14_combout\ = (\ascii_ucode[6]~input_o\ & (((\ascii_ucode[5]~input_o\)))) # (!\ascii_ucode[6]~input_o\ & ((\ascii_ucode[5]~input_o\ & (\Mux332~520_combout\)) # (!\ascii_ucode[5]~input_o\ & ((\Mux332~525_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~520_combout\,
	datab => \Mux332~525_combout\,
	datac => \ascii_ucode[6]~input_o\,
	datad => \ascii_ucode[5]~input_o\,
	combout => \Mux329~14_combout\);

-- Location: LCCOMB_X59_Y59_N12
\Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & (\row[3]~input_o\ & !\row[0]~input_o\)) # (!\row[1]~input_o\ & (\row[3]~input_o\ $ (!\row[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux105~0_combout\);

-- Location: LCCOMB_X57_Y63_N10
\Mux332~526\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~526_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux105~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\ & \Mux106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux105~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux106~0_combout\,
	combout => \Mux332~526_combout\);

-- Location: LCCOMB_X57_Y63_N12
\Mux332~527\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~527_combout\ = (\Mux332~526_combout\ & (((\Mux164~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~526_combout\ & (\Mux37~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~526_combout\,
	datab => \Mux37~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux164~0_combout\,
	combout => \Mux332~527_combout\);

-- Location: LCCOMB_X62_Y69_N24
\Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~1_combout\ = (\row[1]~input_o\ & ((\row[0]~input_o\ & ((\row[2]~input_o\))) # (!\row[0]~input_o\ & (\ascii_ucode[0]~input_o\ & !\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux87~1_combout\);

-- Location: LCCOMB_X62_Y69_N30
\Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (\ascii_ucode[0]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\row[2]~input_o\) # ((\row[0]~input_o\ & \row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux87~0_combout\);

-- Location: LCCOMB_X62_Y69_N2
\Mux332~530\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~530_combout\ = (!\ascii_ucode[2]~input_o\ & ((\row[3]~input_o\ & (!\Mux87~1_combout\)) # (!\row[3]~input_o\ & ((\Mux87~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux87~1_combout\,
	datac => \Mux87~0_combout\,
	datad => \row[3]~input_o\,
	combout => \Mux332~530_combout\);

-- Location: LCCOMB_X62_Y69_N10
\Mux332~528\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~528_combout\ = (!\ascii_ucode[0]~input_o\ & (\row[2]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux332~528_combout\);

-- Location: LCCOMB_X62_Y69_N12
\Mux332~529\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~529_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~528_combout\) # ((\Mux319~3_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux319~3_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~528_combout\,
	combout => \Mux332~529_combout\);

-- Location: LCCOMB_X62_Y69_N4
\Mux332~531\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~531_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~527_combout\)) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~530_combout\) # (\Mux332~529_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~527_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~530_combout\,
	datad => \Mux332~529_combout\,
	combout => \Mux332~531_combout\);

-- Location: LCCOMB_X62_Y67_N4
\Mux329~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~15_combout\ = (\Mux329~14_combout\ & (((\Mux332~531_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux329~14_combout\ & (\Mux332~517_combout\ & (\ascii_ucode[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~517_combout\,
	datab => \Mux329~14_combout\,
	datac => \ascii_ucode[6]~input_o\,
	datad => \Mux332~531_combout\,
	combout => \Mux329~15_combout\);

-- Location: LCCOMB_X60_Y63_N2
\Mux329~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~16_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux329~13_combout\) # ((\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux329~15_combout\ & !\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux329~13_combout\,
	datab => \Mux329~15_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux329~16_combout\);

-- Location: LCCOMB_X60_Y60_N16
\Mux152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = (\row[0]~input_o\ & (((\row[2]~input_o\ & !\row[1]~input_o\)))) # (!\row[0]~input_o\ & (!\row[3]~input_o\ & (\row[2]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux152~0_combout\);

-- Location: LCCOMB_X60_Y60_N6
\Mux332~922\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~922_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux152~0_combout\ & \ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux104~0_combout\ & ((!\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux104~0_combout\,
	datab => \Mux152~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~922_combout\);

-- Location: LCCOMB_X60_Y60_N4
\Mux332~921\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~921_combout\ = (\Mux146~0_combout\ & (\ascii_ucode[2]~input_o\ $ (\ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux146~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~921_combout\);

-- Location: LCCOMB_X60_Y60_N22
\Mux137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~0_combout\ = (\row[3]~input_o\ & (((!\row[1]~input_o\)) # (!\row[0]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux137~0_combout\);

-- Location: LCCOMB_X60_Y60_N24
\Mux132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux132~0_combout\ = (\row[2]~input_o\ & (!\row[3]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\)))) # (!\row[2]~input_o\ & (((\row[0]~input_o\ & \row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux132~0_combout\);

-- Location: LCCOMB_X60_Y60_N10
\Mux332~545\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~545_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux137~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux132~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux137~0_combout\,
	datab => \Mux132~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~545_combout\);

-- Location: LCCOMB_X60_Y60_N12
\Mux139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~0_combout\ = (\row[3]~input_o\ & (\row[0]~input_o\ $ (((\row[1]~input_o\) # (!\row[2]~input_o\))))) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & (\row[2]~input_o\ & !\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux139~0_combout\);

-- Location: LCCOMB_X60_Y60_N30
\Mux332~546\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~546_combout\ = (\Mux332~545_combout\ & (((\Mux139~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~545_combout\ & (\Mux146~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~545_combout\,
	datab => \Mux146~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux139~0_combout\,
	combout => \Mux332~546_combout\);

-- Location: LCCOMB_X60_Y60_N2
\Mux332~547\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~547_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~922_combout\) # ((\Mux332~921_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~546_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~922_combout\,
	datab => \Mux332~921_combout\,
	datac => \Mux332~546_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~547_combout\);

-- Location: LCCOMB_X59_Y67_N2
\Mux332~538\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~538_combout\ = (\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\row[3]~input_o\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~129_combout\,
	combout => \Mux332~538_combout\);

-- Location: LCCOMB_X59_Y67_N16
\Mux332~537\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~537_combout\ = (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((!\ascii_ucode[0]~input_o\) # (!\Mux45~0_combout\))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~537_combout\);

-- Location: LCCOMB_X59_Y67_N20
\Mux332~539\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~539_combout\ = (\Mux332~538_combout\) # (\Mux332~537_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~538_combout\,
	datad => \Mux332~537_combout\,
	combout => \Mux332~539_combout\);

-- Location: LCCOMB_X60_Y64_N14
\Mux332~542\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~542_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux319~10_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux223~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux223~0_combout\,
	datab => \Mux319~10_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~542_combout\);

-- Location: LCCOMB_X60_Y64_N16
\Mux332~543\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~543_combout\ = (\Mux332~542_combout\ & ((\Mux319~1_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~542_combout\ & (((\Mux106~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~1_combout\,
	datab => \Mux332~542_combout\,
	datac => \Mux106~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~543_combout\);

-- Location: LCCOMB_X62_Y69_N14
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!\row[1]~input_o\ & (!\row[0]~input_o\ & ((\row[2]~input_o\) # (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X62_Y62_N6
\Mux332~540\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~540_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux33~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux165~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux165~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux33~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~540_combout\);

-- Location: LCCOMB_X62_Y62_N20
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\row[0]~input_o\ & ((\row[3]~input_o\ & (!\row[2]~input_o\)) # (!\row[3]~input_o\ & (\row[2]~input_o\ & !\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X62_Y62_N0
\Mux332~541\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~541_combout\ = (\Mux332~540_combout\ & (((\Mux187~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~540_combout\ & (\Mux43~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~540_combout\,
	datab => \Mux43~0_combout\,
	datac => \Mux187~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~541_combout\);

-- Location: LCCOMB_X60_Y63_N12
\Mux332~544\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~544_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~541_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~543_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~543_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~541_combout\,
	combout => \Mux332~544_combout\);

-- Location: LCCOMB_X60_Y63_N22
\Mux329~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~17_combout\ = (\ascii_ucode[6]~input_o\ & (((\ascii_ucode[5]~input_o\)))) # (!\ascii_ucode[6]~input_o\ & ((\ascii_ucode[5]~input_o\ & (\Mux332~539_combout\)) # (!\ascii_ucode[5]~input_o\ & ((\Mux332~544_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~539_combout\,
	datab => \ascii_ucode[6]~input_o\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~544_combout\,
	combout => \Mux329~17_combout\);

-- Location: LCCOMB_X57_Y63_N0
\Mux332~534\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~534_combout\ = (\Mux68~0_combout\ & !\ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux68~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	combout => \Mux332~534_combout\);

-- Location: LCCOMB_X57_Y63_N16
\Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (\row[2]~input_o\ & (\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[0]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (!\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux75~0_combout\);

-- Location: LCCOMB_X57_Y63_N30
\Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & (\row[2]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux77~0_combout\);

-- Location: LCCOMB_X57_Y63_N26
\Mux332~532\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~532_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux77~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux75~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux77~0_combout\,
	combout => \Mux332~532_combout\);

-- Location: LCCOMB_X57_Y63_N20
\Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (\row[2]~input_o\ & ((\row[0]~input_o\ & (!\row[3]~input_o\)) # (!\row[0]~input_o\ & ((\row[1]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux82~0_combout\);

-- Location: LCCOMB_X57_Y63_N22
\Mux332~533\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~533_combout\ = (\Mux332~532_combout\ & ((\Mux82~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~532_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux120~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~532_combout\,
	datab => \Mux82~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux120~0_combout\,
	combout => \Mux332~533_combout\);

-- Location: LCCOMB_X57_Y63_N18
\Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (!\row[0]~input_o\ & ((\row[3]~input_o\ & ((\row[1]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & !\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux96~0_combout\);

-- Location: LCCOMB_X57_Y63_N28
\Mux332~535\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~535_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux96~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux82~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux82~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux96~0_combout\,
	combout => \Mux332~535_combout\);

-- Location: LCCOMB_X57_Y63_N6
\Mux332~536\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~536_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~533_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~534_combout\) # ((\Mux332~535_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~534_combout\,
	datac => \Mux332~533_combout\,
	datad => \Mux332~535_combout\,
	combout => \Mux332~536_combout\);

-- Location: LCCOMB_X60_Y63_N8
\Mux329~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~18_combout\ = (\ascii_ucode[6]~input_o\ & ((\Mux329~17_combout\ & (\Mux332~547_combout\)) # (!\Mux329~17_combout\ & ((\Mux332~536_combout\))))) # (!\ascii_ucode[6]~input_o\ & (((\Mux329~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~547_combout\,
	datab => \ascii_ucode[6]~input_o\,
	datac => \Mux329~17_combout\,
	datad => \Mux332~536_combout\,
	combout => \Mux329~18_combout\);

-- Location: LCCOMB_X60_Y63_N26
\Mux329~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~19_combout\ = (\Mux329~16_combout\ & (((\Mux329~18_combout\) # (!\ascii_ucode[4]~input_o\)))) # (!\Mux329~16_combout\ & (\Mux329~11_combout\ & ((\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux329~11_combout\,
	datab => \Mux329~16_combout\,
	datac => \Mux329~18_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux329~19_combout\);

-- Location: LCCOMB_X67_Y63_N8
\Mux329~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux329~20_combout\ = (\ascii_ucode[7]~input_o\ & (\Mux329~9_combout\)) # (!\ascii_ucode[7]~input_o\ & ((\Mux329~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux329~9_combout\,
	datac => \Mux329~19_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux329~20_combout\);

-- Location: LCCOMB_X68_Y66_N2
\Mux332~576\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~576_combout\ = (!\ascii_ucode[0]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ $ (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux332~576_combout\);

-- Location: LCCOMB_X68_Y66_N20
\Mux332~577\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~577_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux148~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~576_combout\) # ((\Mux332~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~576_combout\,
	datac => \Mux332~191_combout\,
	datad => \Mux148~0_combout\,
	combout => \Mux332~577_combout\);

-- Location: LCCOMB_X68_Y66_N30
\Mux332~578\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~578_combout\ = (\Mux332~438_combout\) # ((\ascii_ucode[1]~input_o\ & \Mux332~577_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~577_combout\,
	datac => \Mux332~438_combout\,
	combout => \Mux332~578_combout\);

-- Location: LCCOMB_X58_Y65_N8
\Mux183~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux183~0_combout\ = (\row[0]~input_o\ & (!\row[3]~input_o\ & (\row[2]~input_o\ & !\row[1]~input_o\))) # (!\row[0]~input_o\ & (((!\row[2]~input_o\ & \row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux183~0_combout\);

-- Location: LCCOMB_X58_Y61_N6
\Mux332~574\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~574_combout\ = (\Mux183~0_combout\ & \ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux183~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~574_combout\);

-- Location: LCCOMB_X65_Y63_N8
\Mux332~572\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~572_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux316~1_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux305~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux305~0_combout\,
	datab => \Mux316~1_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~572_combout\);

-- Location: LCCOMB_X62_Y61_N8
\Mux332~573\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~573_combout\ = (\Mux332~572_combout\ & (((\Mux306~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~572_combout\ & (\Mux170~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~572_combout\,
	datab => \Mux170~0_combout\,
	datac => \Mux306~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~573_combout\);

-- Location: LCCOMB_X65_Y61_N6
\Mux332~565\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~565_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux217~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~3_combout\,
	datac => \Mux217~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~565_combout\);

-- Location: LCCOMB_X65_Y61_N30
\Mux332~575\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~575_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~574_combout\) # ((\Mux332~565_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~573_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~574_combout\,
	datab => \Mux332~573_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~565_combout\,
	combout => \Mux332~575_combout\);

-- Location: LCCOMB_X67_Y62_N24
\Mux247~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux247~0_combout\ = (\row[2]~input_o\ & (!\row[1]~input_o\ & ((!\row[0]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ $ (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux247~0_combout\);

-- Location: LCCOMB_X67_Y62_N10
\Mux332~569\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~569_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux247~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux264~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux247~0_combout\,
	combout => \Mux332~569_combout\);

-- Location: LCCOMB_X68_Y62_N12
\Mux332~924\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~924_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux280~0_combout\ & ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux304~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux280~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux304~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~924_combout\);

-- Location: LCCOMB_X67_Y62_N30
\Mux332~568\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~568_combout\ = (!\ascii_ucode[1]~input_o\ & ((\Mux332~924_combout\) # ((\Mux264~0_combout\ & \Mux332~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~924_combout\,
	datad => \Mux332~140_combout\,
	combout => \Mux332~568_combout\);

-- Location: LCCOMB_X67_Y62_N12
\Mux332~570\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~570_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux280~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux217~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux280~0_combout\,
	datab => \Mux217~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~570_combout\);

-- Location: LCCOMB_X67_Y62_N6
\Mux332~571\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~571_combout\ = (\Mux332~568_combout\) # ((\ascii_ucode[1]~input_o\ & ((\Mux332~569_combout\) # (\Mux332~570_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~569_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~568_combout\,
	datad => \Mux332~570_combout\,
	combout => \Mux332~571_combout\);

-- Location: LCCOMB_X65_Y61_N0
\Mux328~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~2_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & ((\Mux332~571_combout\))) # (!\ascii_ucode[6]~input_o\ & (\Mux332~575_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~575_combout\,
	datab => \Mux332~571_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~2_combout\);

-- Location: LCCOMB_X65_Y61_N8
\Mux213~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux213~0_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & ((!\row[3]~input_o\))) # (!\row[1]~input_o\ & (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux213~0_combout\);

-- Location: LCCOMB_X65_Y61_N18
\Mux332~566\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~566_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux264~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux213~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux264~0_combout\,
	datac => \Mux213~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~566_combout\);

-- Location: LCCOMB_X65_Y61_N26
\Mux332~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~563_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux316~1_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((!\Mux275~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux316~1_combout\,
	datac => \Mux275~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~563_combout\);

-- Location: LCCOMB_X65_Y61_N12
\Mux332~564\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~564_combout\ = (\Mux332~563_combout\ & (((\Mux288~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~563_combout\ & (\Mux264~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \Mux288~0_combout\,
	datac => \Mux332~563_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~564_combout\);

-- Location: LCCOMB_X65_Y61_N28
\Mux332~567\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~567_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~565_combout\) # ((\Mux332~566_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~564_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~565_combout\,
	datab => \Mux332~566_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~564_combout\,
	combout => \Mux332~567_combout\);

-- Location: LCCOMB_X65_Y61_N2
\Mux328~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~3_combout\ = (\Mux328~2_combout\ & ((\Mux332~578_combout\) # ((!\ascii_ucode[5]~input_o\)))) # (!\Mux328~2_combout\ & (((\ascii_ucode[5]~input_o\ & \Mux332~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~578_combout\,
	datab => \Mux328~2_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~567_combout\,
	combout => \Mux328~3_combout\);

-- Location: LCCOMB_X59_Y62_N30
\Mux332~590\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~590_combout\ = (\Mux157~0_combout\ & !\ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux157~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~590_combout\);

-- Location: LCCOMB_X59_Y66_N12
\Mux163~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux163~0_combout\ = (!\row[3]~input_o\ & ((\row[1]~input_o\ & (!\row[2]~input_o\ & !\row[0]~input_o\)) # (!\row[1]~input_o\ & (\row[2]~input_o\ & \row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux163~0_combout\);

-- Location: LCCOMB_X59_Y66_N6
\Mux332~591\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~591_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux6~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux163~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux163~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~591_combout\);

-- Location: LCCOMB_X66_Y63_N6
\Mux169~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux169~0_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux169~0_combout\);

-- Location: LCCOMB_X57_Y60_N26
\Mux156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux156~0_combout\ = (\row[1]~input_o\ & (((!\row[2]~input_o\ & \row[3]~input_o\)))) # (!\row[1]~input_o\ & (\row[0]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux156~0_combout\);

-- Location: LCCOMB_X61_Y60_N14
\Mux332~588\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~588_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux316~3_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux156~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux316~3_combout\,
	datab => \Mux156~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~588_combout\);

-- Location: LCCOMB_X66_Y63_N16
\Mux332~589\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~589_combout\ = (\Mux332~588_combout\ & ((\Mux169~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~588_combout\ & (((\Mux323~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~0_combout\,
	datab => \Mux332~588_combout\,
	datac => \Mux323~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~589_combout\);

-- Location: LCCOMB_X60_Y62_N26
\Mux332~592\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~592_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~590_combout\) # ((\Mux332~591_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~589_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~590_combout\,
	datac => \Mux332~591_combout\,
	datad => \Mux332~589_combout\,
	combout => \Mux332~592_combout\);

-- Location: LCCOMB_X57_Y62_N16
\Mux230~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux230~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & ((\row[0]~input_o\) # (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux230~0_combout\);

-- Location: LCCOMB_X57_Y62_N14
\Mux234~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux234~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ & (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((!\row[0]~input_o\) # (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux234~0_combout\);

-- Location: LCCOMB_X57_Y62_N26
\Mux332~586\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~586_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux234~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux230~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux230~0_combout\,
	datac => \Mux234~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~586_combout\);

-- Location: LCCOMB_X57_Y62_N28
\Mux332~585\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~585_combout\ = (\Mux260~0_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux260~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~585_combout\);

-- Location: LCCOMB_X57_Y62_N8
\Mux332~583\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~583_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux52~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux233~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux52~0_combout\,
	datac => \Mux233~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~583_combout\);

-- Location: LCCOMB_X57_Y62_N18
\Mux332~584\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~584_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~583_combout\) # ((\ascii_ucode[2]~input_o\ & \Mux264~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~583_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux264~0_combout\,
	combout => \Mux332~584_combout\);

-- Location: LCCOMB_X57_Y62_N4
\Mux332~587\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~587_combout\ = (\Mux332~584_combout\) # ((!\ascii_ucode[1]~input_o\ & ((\Mux332~586_combout\) # (\Mux332~585_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~586_combout\,
	datab => \Mux332~585_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~584_combout\,
	combout => \Mux332~587_combout\);

-- Location: LCCOMB_X60_Y62_N4
\Mux328~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~4_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & ((\Mux332~587_combout\))) # (!\ascii_ucode[6]~input_o\ & (\Mux332~592_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux332~592_combout\,
	datac => \Mux332~587_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~4_combout\);

-- Location: LCCOMB_X67_Y61_N28
\Mux332~581\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~581_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux316~5_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~4_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux316~5_combout\,
	combout => \Mux332~581_combout\);

-- Location: LCCOMB_X62_Y61_N26
\Mux332~579\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~579_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux317~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux222~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux222~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux317~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~579_combout\);

-- Location: LCCOMB_X62_Y61_N28
\Mux332~580\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~580_combout\ = (\Mux332~579_combout\ & ((\Mux320~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~579_combout\ & (((\Mux116~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~579_combout\,
	datab => \Mux320~0_combout\,
	datac => \Mux116~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~580_combout\);

-- Location: LCCOMB_X62_Y61_N6
\Mux332~582\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~582_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~580_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~581_combout\) # ((\Mux332~570_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~581_combout\,
	datab => \Mux332~580_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~570_combout\,
	combout => \Mux332~582_combout\);

-- Location: LCCOMB_X63_Y66_N16
\Mux332~593\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~593_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~10_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~10_combout\,
	datad => \Mux319~0_combout\,
	combout => \Mux332~593_combout\);

-- Location: LCCOMB_X63_Y66_N10
\Mux332~594\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~594_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux294~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux241~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux241~0_combout\,
	datab => \Mux294~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~594_combout\);

-- Location: LCCOMB_X63_Y66_N12
\Mux332~595\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~595_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~594_combout\ & (\Mux217~0_combout\)) # (!\Mux332~594_combout\ & ((\Mux332~593_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~594_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux332~593_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~594_combout\,
	combout => \Mux332~595_combout\);

-- Location: LCCOMB_X60_Y62_N14
\Mux328~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~5_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux328~4_combout\ & ((\Mux332~595_combout\))) # (!\Mux328~4_combout\ & (\Mux332~582_combout\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux328~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux328~4_combout\,
	datac => \Mux332~582_combout\,
	datad => \Mux332~595_combout\,
	combout => \Mux328~5_combout\);

-- Location: LCCOMB_X65_Y65_N22
\Mux328~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~6_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux328~3_combout\) # ((\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (((!\ascii_ucode[4]~input_o\ & \Mux328~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux328~3_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux328~5_combout\,
	combout => \Mux328~6_combout\);

-- Location: LCCOMB_X68_Y61_N18
\Mux332~610\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~610_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux322~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux223~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux223~0_combout\,
	datad => \Mux322~0_combout\,
	combout => \Mux332~610_combout\);

-- Location: LCCOMB_X68_Y61_N20
\Mux332~611\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~611_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\) # ((\Mux332~610_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[1]~input_o\ & (\Mux332~478_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~478_combout\,
	datad => \Mux332~610_combout\,
	combout => \Mux332~611_combout\);

-- Location: LCCOMB_X68_Y61_N0
\Mux332~609\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~609_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux241~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux241~0_combout\,
	datab => \Mux38~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~609_combout\);

-- Location: LCCOMB_X68_Y61_N30
\Mux332~612\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~612_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~611_combout\ & (\Mux332~480_combout\)) # (!\Mux332~611_combout\ & ((\Mux332~609_combout\))))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~611_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~611_combout\,
	datac => \Mux332~480_combout\,
	datad => \Mux332~609_combout\,
	combout => \Mux332~612_combout\);

-- Location: LCCOMB_X58_Y61_N12
\Mux332~606\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~606_combout\ = (\Mux190~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux190~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~606_combout\);

-- Location: LCCOMB_X60_Y62_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X63_Y61_N28
\Mux186~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux186~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & (!\row[2]~input_o\ & !\row[0]~input_o\))) # (!\row[1]~input_o\ & (\row[2]~input_o\ & (\row[3]~input_o\ $ (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux186~0_combout\);

-- Location: LCCOMB_X58_Y61_N14
\Mux332~607\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~607_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux12~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux186~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux186~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~607_combout\);

-- Location: LCCOMB_X58_Y61_N24
\Mux332~604\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~604_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux264~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux183~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux183~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~604_combout\);

-- Location: LCCOMB_X58_Y61_N26
\Mux332~605\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~605_combout\ = (!\ascii_ucode[1]~input_o\ & ((\Mux332~604_combout\) # ((\Mux171~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~604_combout\,
	datac => \Mux171~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~605_combout\);

-- Location: LCCOMB_X58_Y61_N8
\Mux332~608\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~608_combout\ = (\Mux332~605_combout\) # ((\ascii_ucode[1]~input_o\ & ((\Mux332~606_combout\) # (\Mux332~607_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~606_combout\,
	datab => \Mux332~607_combout\,
	datac => \Mux332~605_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~608_combout\);

-- Location: LCCOMB_X63_Y66_N30
\Mux225~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux225~0_combout\ = (!\row[1]~input_o\ & (\row[3]~input_o\ & ((\row[2]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux225~0_combout\);

-- Location: LCCOMB_X66_Y68_N26
\Mux332~599\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~599_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux222~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux264~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux222~0_combout\,
	datab => \Mux264~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~599_combout\);

-- Location: LCCOMB_X66_Y68_N12
\Mux332~600\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~600_combout\ = (\Mux332~599_combout\ & ((\Mux226~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~599_combout\ & (((\Mux225~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux226~0_combout\,
	datab => \Mux225~0_combout\,
	datac => \Mux332~599_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~600_combout\);

-- Location: LCCOMB_X66_Y68_N16
\Mux332~602\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~602_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux222~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux218~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux218~0_combout\,
	datab => \Mux222~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~602_combout\);

-- Location: LCCOMB_X66_Y68_N14
\Mux332~601\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~601_combout\ = (\Mux264~0_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~601_combout\);

-- Location: LCCOMB_X66_Y68_N18
\Mux332~603\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~603_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~600_combout\)) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~602_combout\) # (\Mux332~601_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~600_combout\,
	datab => \Mux332~602_combout\,
	datac => \Mux332~601_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~603_combout\);

-- Location: LCCOMB_X65_Y65_N16
\Mux328~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~7_combout\ = (\ascii_ucode[6]~input_o\ & (((\ascii_ucode[5]~input_o\)))) # (!\ascii_ucode[6]~input_o\ & ((\ascii_ucode[5]~input_o\ & ((\Mux332~603_combout\))) # (!\ascii_ucode[5]~input_o\ & (\Mux332~608_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[6]~input_o\,
	datab => \Mux332~608_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~603_combout\,
	combout => \Mux328~7_combout\);

-- Location: LCCOMB_X65_Y67_N6
\Mux332~596\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~596_combout\ = (\Mux268~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux268~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~596_combout\);

-- Location: LCCOMB_X65_Y67_N8
\Mux332~597\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~597_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux257~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux270~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux257~0_combout\,
	datab => \Mux270~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~597_combout\);

-- Location: LCCOMB_X65_Y67_N2
\Mux332~598\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~598_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~596_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~597_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~596_combout\,
	datab => \Mux332~597_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~598_combout\);

-- Location: LCCOMB_X65_Y67_N4
\Mux332~961\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~961_combout\ = (\Mux332~598_combout\ & (((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~598_combout\ & ((\ascii_ucode[0]~input_o\ & ((\Mux265~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux314~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux314~0_combout\,
	datab => \Mux332~598_combout\,
	datac => \Mux265~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~961_combout\);

-- Location: LCCOMB_X65_Y67_N14
\Mux332~962\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~962_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~961_combout\ & ((\Mux289~0_combout\) # (!\Mux332~598_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~598_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~961_combout\,
	datac => \Mux289~0_combout\,
	datad => \Mux332~598_combout\,
	combout => \Mux332~962_combout\);

-- Location: LCCOMB_X65_Y65_N18
\Mux328~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~8_combout\ = (\Mux328~7_combout\ & ((\Mux332~612_combout\) # ((!\ascii_ucode[6]~input_o\)))) # (!\Mux328~7_combout\ & (((\Mux332~962_combout\ & \ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~612_combout\,
	datab => \Mux328~7_combout\,
	datac => \Mux332~962_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~8_combout\);

-- Location: LCCOMB_X66_Y63_N0
\Mux332~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~549_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux316~1_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux314~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux314~0_combout\,
	datac => \Mux316~1_combout\,
	combout => \Mux332~549_combout\);

-- Location: LCCOMB_X66_Y63_N26
\Mux332~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~550_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[1]~input_o\) # (\Mux332~405_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~549_combout\ & (!\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~549_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~405_combout\,
	combout => \Mux332~550_combout\);

-- Location: LCCOMB_X61_Y67_N16
\Mux255~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux255~0_combout\ = (!\row[3]~input_o\ & (\row[2]~input_o\ $ (((\row[1]~input_o\ & \row[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux255~0_combout\);

-- Location: LCCOMB_X61_Y67_N2
\Mux332~548\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~548_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux255~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux255~0_combout\,
	datad => \Mux319~0_combout\,
	combout => \Mux332~548_combout\);

-- Location: LCCOMB_X66_Y63_N12
\Mux332~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~551_combout\ = (\Mux332~550_combout\ & (((\Mux332~909_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~550_combout\ & (\Mux332~548_combout\ & ((\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~550_combout\,
	datab => \Mux332~548_combout\,
	datac => \Mux332~909_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~551_combout\);

-- Location: LCCOMB_X67_Y65_N30
\Mux332~923\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~923_combout\ = \ascii_ucode[0]~input_o\ $ (((!\ascii_ucode[1]~input_o\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	combout => \Mux332~923_combout\);

-- Location: LCCOMB_X68_Y65_N22
\Mux196~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux196~0_combout\ = (!\row[2]~input_o\ & (\row[3]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux196~0_combout\);

-- Location: LCCOMB_X68_Y65_N16
\Mux332~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~552_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux316~2_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux196~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux196~0_combout\,
	datab => \Mux316~2_combout\,
	datac => \ascii_ucode[2]~input_o\,
	combout => \Mux332~552_combout\);

-- Location: LCCOMB_X67_Y65_N6
\Mux332~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~553_combout\ = (\Mux332~923_combout\ & ((\ascii_ucode[1]~input_o\ & (\Mux222~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~552_combout\))))) # (!\Mux332~923_combout\ & ((\ascii_ucode[1]~input_o\ & ((\Mux332~552_combout\))) # 
-- (!\ascii_ucode[1]~input_o\ & (\Mux222~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~923_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux222~0_combout\,
	datad => \Mux332~552_combout\,
	combout => \Mux332~553_combout\);

-- Location: LCCOMB_X67_Y65_N0
\Mux332~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~554_combout\ = (\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~412_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~553_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~553_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~553_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~412_combout\,
	combout => \Mux332~554_combout\);

-- Location: LCCOMB_X66_Y62_N14
\Mux332~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~557_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux319~4_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux314~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~4_combout\,
	datac => \Mux314~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~557_combout\);

-- Location: LCCOMB_X66_Y62_N26
\Mux332~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~555_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux217~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux187~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux187~0_combout\,
	datab => \Mux217~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~555_combout\);

-- Location: LCCOMB_X66_Y62_N28
\Mux332~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~556_combout\ = (\Mux332~555_combout\ & ((\Mux319~7_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~555_combout\ & (((\Mux147~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~7_combout\,
	datab => \Mux147~0_combout\,
	datac => \Mux332~555_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~556_combout\);

-- Location: LCCOMB_X66_Y62_N16
\Mux332~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~558_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~556_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~416_combout\) # ((\Mux332~557_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~416_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~557_combout\,
	datad => \Mux332~556_combout\,
	combout => \Mux332~558_combout\);

-- Location: LCCOMB_X65_Y65_N2
\Mux328~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~0_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux332~554_combout\) # ((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (((\Mux332~558_combout\ & !\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~554_combout\,
	datab => \Mux332~558_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~0_combout\);

-- Location: LCCOMB_X68_Y63_N0
\Mux332~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~560_combout\ = (\ascii_ucode[0]~input_o\ & ((!\Mux172~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux307~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux307~0_combout\,
	datad => \Mux172~0_combout\,
	combout => \Mux332~560_combout\);

-- Location: LCCOMB_X68_Y63_N26
\Mux332~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~561_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~560_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~421_combout\,
	datab => \Mux332~560_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~561_combout\);

-- Location: LCCOMB_X68_Y63_N6
\Mux332~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~559_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux304~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux203~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux203~0_combout\,
	datad => \Mux304~0_combout\,
	combout => \Mux332~559_combout\);

-- Location: LCCOMB_X68_Y63_N28
\Mux332~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~562_combout\ = (\Mux332~561_combout\ & ((\Mux332~423_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~561_combout\ & (((\ascii_ucode[1]~input_o\ & \Mux332~559_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~561_combout\,
	datab => \Mux332~423_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~559_combout\,
	combout => \Mux332~562_combout\);

-- Location: LCCOMB_X65_Y65_N12
\Mux328~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~1_combout\ = (\Mux328~0_combout\ & (((\Mux332~562_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux328~0_combout\ & (\Mux332~551_combout\ & ((\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~551_combout\,
	datab => \Mux328~0_combout\,
	datac => \Mux332~562_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~1_combout\);

-- Location: LCCOMB_X65_Y65_N28
\Mux328~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~9_combout\ = (\Mux328~6_combout\ & ((\Mux328~8_combout\) # ((!\ascii_ucode[4]~input_o\)))) # (!\Mux328~6_combout\ & (((\ascii_ucode[4]~input_o\ & \Mux328~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux328~6_combout\,
	datab => \Mux328~8_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux328~1_combout\,
	combout => \Mux328~9_combout\);

-- Location: LCCOMB_X60_Y63_N28
\Mux332~631\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~631_combout\ = (\ascii_ucode[0]~input_o\ & \row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[3]~input_o\,
	combout => \Mux332~631_combout\);

-- Location: LCCOMB_X61_Y67_N4
\Mux332~632\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~632_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux49~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (!\Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux49~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~632_combout\);

-- Location: LCCOMB_X60_Y63_N6
\Mux332~633\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~633_combout\ = (\Mux332~248_combout\) # ((\ascii_ucode[1]~input_o\ & ((\Mux332~631_combout\) # (\Mux332~632_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~248_combout\,
	datab => \Mux332~631_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~632_combout\,
	combout => \Mux332~633_combout\);

-- Location: LCCOMB_X60_Y67_N2
\Mux332~927\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~927_combout\ = (\ascii_ucode[1]~input_o\ & (((\row[0]~input_o\) # (!\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~363_combout\) # ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~363_combout\,
	datac => \row[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~927_combout\);

-- Location: LCCOMB_X58_Y61_N18
\Mux332~634\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~634_combout\ = (\ascii_ucode[0]~input_o\ & (!\Mux12~0_combout\)) # (!\ascii_ucode[0]~input_o\ & (((\row[3]~input_o\) # (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~634_combout\);

-- Location: LCCOMB_X58_Y61_N28
\Mux332~635\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~635_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~506_combout\) # ((\Mux332~634_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~506_combout\,
	datac => \Mux332~634_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~635_combout\);

-- Location: LCCOMB_X57_Y62_N6
\Mux332~636\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~636_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux9~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux52~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~636_combout\);

-- Location: LCCOMB_X61_Y64_N30
\Mux332~637\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~637_combout\ = (\Mux332~636_combout\ & ((\Mux278~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~636_combout\ & (((\Mux15~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~636_combout\,
	datab => \Mux278~0_combout\,
	datac => \Mux15~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~637_combout\);

-- Location: LCCOMB_X60_Y63_N16
\Mux332~638\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~638_combout\ = (\Mux332~635_combout\) # ((!\ascii_ucode[1]~input_o\ & \Mux332~637_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~635_combout\,
	datad => \Mux332~637_combout\,
	combout => \Mux332~638_combout\);

-- Location: LCCOMB_X60_Y63_N18
\Mux328~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~12_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & (\Mux332~927_combout\)) # (!\ascii_ucode[6]~input_o\ & ((\Mux332~638_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux332~927_combout\,
	datac => \ascii_ucode[6]~input_o\,
	datad => \Mux332~638_combout\,
	combout => \Mux328~12_combout\);

-- Location: LCCOMB_X57_Y61_N8
\Mux332~639\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~639_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux187~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux124~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux124~0_combout\,
	datab => \Mux187~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~639_combout\);

-- Location: LCCOMB_X57_Y61_N10
\Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux113~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ $ (((!\row[0]~input_o\ & !\row[2]~input_o\))))) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux113~0_combout\);

-- Location: LCCOMB_X57_Y61_N12
\Mux332~640\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~640_combout\ = (\Mux332~639_combout\ & (((\Mux113~0_combout\) # (!\ascii_ucode[0]~input_o\)))) # (!\Mux332~639_combout\ & (\Mux171~0_combout\ & (\ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux171~0_combout\,
	datab => \Mux332~639_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux113~0_combout\,
	combout => \Mux332~640_combout\);

-- Location: LCCOMB_X60_Y62_N18
\Mux332~641\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~641_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux105~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux204~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux105~0_combout\,
	datab => \Mux204~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~641_combout\);

-- Location: LCCOMB_X60_Y60_N20
\Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~0_combout\ = (\row[1]~input_o\ & (\row[3]~input_o\ & (!\row[0]~input_o\))) # (!\row[1]~input_o\ & (\row[2]~input_o\ & (\row[3]~input_o\ $ (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux123~0_combout\);

-- Location: LCCOMB_X59_Y62_N8
\Mux332~642\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~642_combout\ = (\Mux332~641_combout\ & ((\Mux288~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~641_combout\ & (((\Mux123~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux288~0_combout\,
	datab => \Mux332~641_combout\,
	datac => \Mux123~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~642_combout\);

-- Location: LCCOMB_X59_Y62_N2
\Mux332~643\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~643_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~640_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~642_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~640_combout\,
	datab => \Mux332~642_combout\,
	datac => \ascii_ucode[1]~input_o\,
	combout => \Mux332~643_combout\);

-- Location: LCCOMB_X60_Y63_N4
\Mux328~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~13_combout\ = (\Mux328~12_combout\ & (((\Mux332~643_combout\) # (!\ascii_ucode[5]~input_o\)))) # (!\Mux328~12_combout\ & (\Mux332~633_combout\ & (\ascii_ucode[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~633_combout\,
	datab => \Mux328~12_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux332~643_combout\,
	combout => \Mux328~13_combout\);

-- Location: LCCOMB_X58_Y63_N18
\Mux332~653\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~653_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux96~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\ & \Mux106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux96~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux106~0_combout\,
	combout => \Mux332~653_combout\);

-- Location: LCCOMB_X59_Y66_N0
\Mux332~654\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~654_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~653_combout\ & (\Mux163~0_combout\)) # (!\Mux332~653_combout\ & ((\Mux232~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~653_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux163~0_combout\,
	datab => \Mux232~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~653_combout\,
	combout => \Mux332~654_combout\);

-- Location: LCCOMB_X62_Y69_N8
\Mux332~655\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~655_combout\ = (!\ascii_ucode[0]~input_o\ & ((\row[3]~input_o\ & ((!\row[1]~input_o\) # (!\row[2]~input_o\))) # (!\row[3]~input_o\ & ((\row[2]~input_o\) # (\row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux332~655_combout\);

-- Location: LCCOMB_X62_Y69_N18
\Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & (\row[0]~input_o\ $ (\row[2]~input_o\))) # (!\row[1]~input_o\ & (!\row[0]~input_o\ & !\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux91~0_combout\);

-- Location: LCCOMB_X62_Y69_N20
\Mux332~656\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~656_combout\ = (!\ascii_ucode[2]~input_o\ & ((\Mux332~655_combout\) # ((\ascii_ucode[0]~input_o\ & \Mux91~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~655_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux91~0_combout\,
	combout => \Mux332~656_combout\);

-- Location: LCCOMB_X62_Y69_N6
\Mux332~657\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~657_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~654_combout\)) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~656_combout\) # (\Mux332~529_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~654_combout\,
	datab => \Mux332~656_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~529_combout\,
	combout => \Mux332~657_combout\);

-- Location: LCCOMB_X59_Y67_N28
\Mux332~928\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~928_combout\ = (\ascii_ucode[1]~input_o\ & ((\row[3]~input_o\) # ((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux45~0_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux45~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~928_combout\);

-- Location: LCCOMB_X59_Y67_N22
\Mux332~929\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~929_combout\ = (\Mux332~335_combout\ & (((!\ascii_ucode[0]~input_o\) # (!\Mux45~0_combout\)))) # (!\Mux332~335_combout\ & (\Mux332~928_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~335_combout\,
	datab => \Mux332~928_combout\,
	datac => \Mux45~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~929_combout\);

-- Location: LCCOMB_X62_Y68_N10
\Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux90~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ & (\row[0]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux90~0_combout\);

-- Location: LCCOMB_X62_Y68_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & (!\row[1]~input_o\)) # (!\row[0]~input_o\ & ((\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X62_Y68_N24
\Mux332~649\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~649_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux319~2_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux319~2_combout\,
	combout => \Mux332~649_combout\);

-- Location: LCCOMB_X62_Y68_N20
\Mux332~650\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~650_combout\ = (\Mux332~649_combout\ & ((\Mux90~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~649_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux314~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux90~0_combout\,
	datab => \Mux332~649_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux314~0_combout\,
	combout => \Mux332~650_combout\);

-- Location: LCCOMB_X65_Y63_N18
\Mux332~651\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~651_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux319~11_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux316~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux319~11_combout\,
	datac => \Mux316~1_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~651_combout\);

-- Location: LCCOMB_X62_Y67_N30
\Mux332~652\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~652_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~650_combout\)) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~651_combout\) # (\Mux332~523_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~650_combout\,
	datac => \Mux332~651_combout\,
	datad => \Mux332~523_combout\,
	combout => \Mux332~652_combout\);

-- Location: LCCOMB_X61_Y68_N16
\Mux332~645\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~645_combout\ = ((\ascii_ucode[0]~input_o\) # ((!\row[0]~input_o\ & !\row[2]~input_o\))) # (!\row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~645_combout\);

-- Location: LCCOMB_X61_Y68_N26
\Mux332~646\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~646_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~645_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~514_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~514_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~645_combout\,
	combout => \Mux332~646_combout\);

-- Location: LCCOMB_X61_Y68_N4
\Mux332~647\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~647_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux47~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux47~0_combout\,
	datad => \Mux319~7_combout\,
	combout => \Mux332~647_combout\);

-- Location: LCCOMB_X62_Y68_N4
\Mux332~644\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~644_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux48~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \Mux48~0_combout\,
	combout => \Mux332~644_combout\);

-- Location: LCCOMB_X61_Y68_N6
\Mux332~648\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~648_combout\ = (\Mux332~646_combout\ & (((!\Mux332~647_combout\)) # (!\ascii_ucode[1]~input_o\))) # (!\Mux332~646_combout\ & (\ascii_ucode[1]~input_o\ & ((\Mux332~644_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~646_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~647_combout\,
	datad => \Mux332~644_combout\,
	combout => \Mux332~648_combout\);

-- Location: LCCOMB_X62_Y67_N0
\Mux328~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~14_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & ((\Mux332~648_combout\))) # (!\ascii_ucode[6]~input_o\ & (\Mux332~652_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~652_combout\,
	datab => \ascii_ucode[5]~input_o\,
	datac => \ascii_ucode[6]~input_o\,
	datad => \Mux332~648_combout\,
	combout => \Mux328~14_combout\);

-- Location: LCCOMB_X62_Y67_N2
\Mux328~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~15_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux328~14_combout\ & (\Mux332~657_combout\)) # (!\Mux328~14_combout\ & ((\Mux332~929_combout\))))) # (!\ascii_ucode[5]~input_o\ & (((\Mux328~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~657_combout\,
	datab => \Mux332~929_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux328~14_combout\,
	combout => \Mux328~15_combout\);

-- Location: LCCOMB_X60_Y67_N26
\Mux328~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~16_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux328~13_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux328~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux328~13_combout\,
	datab => \Mux328~15_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux328~16_combout\);

-- Location: LCCOMB_X63_Y67_N30
\Mux332~926\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~926_combout\ = (\ascii_ucode[0]~input_o\ & (((!\Mux319~7_combout\ & !\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux49~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~926_combout\);

-- Location: LCCOMB_X63_Y67_N28
\Mux332~925\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~925_combout\ = (\Mux48~0_combout\ & (\ascii_ucode[0]~input_o\ $ (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux48~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~925_combout\);

-- Location: LCCOMB_X63_Y67_N14
\Mux332~618\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~618_combout\ = (\ascii_ucode[0]~input_o\ & (((\row[3]~input_o\) # (!\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (!\Mux47~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~618_combout\);

-- Location: LCCOMB_X63_Y67_N24
\Mux332~619\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~619_combout\ = (\Mux332~618_combout\) # ((!\ascii_ucode[2]~input_o\ & \Mux51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datac => \Mux332~618_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux332~619_combout\);

-- Location: LCCOMB_X63_Y67_N18
\Mux332~620\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~620_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~619_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~926_combout\) # ((\Mux332~925_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~926_combout\,
	datab => \Mux332~925_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~619_combout\,
	combout => \Mux332~620_combout\);

-- Location: LCCOMB_X62_Y62_N26
\Mux332~623\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~623_combout\ = (!\ascii_ucode[2]~input_o\ & \Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~623_combout\);

-- Location: LCCOMB_X58_Y62_N22
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\)))) # (!\row[0]~input_o\ & (((!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X58_Y62_N16
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\row[1]~input_o\ & ((\row[2]~input_o\) # ((\row[3]~input_o\ & \row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X58_Y62_N10
\Mux332~621\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~621_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux19~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~5_combout\,
	datab => \Mux19~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~621_combout\);

-- Location: LCCOMB_X58_Y62_N20
\Mux332~622\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~622_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~621_combout\ & ((\Mux319~1_combout\))) # (!\Mux332~621_combout\ & (\Mux26~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~621_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux319~1_combout\,
	datad => \Mux332~621_combout\,
	combout => \Mux332~622_combout\);

-- Location: LCCOMB_X62_Y62_N28
\Mux332~624\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~624_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux38~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux33~0_combout\,
	datad => \Mux38~0_combout\,
	combout => \Mux332~624_combout\);

-- Location: LCCOMB_X62_Y62_N14
\Mux332~625\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~625_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~623_combout\) # ((\Mux332~624_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~622_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~623_combout\,
	datab => \Mux332~622_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~624_combout\,
	combout => \Mux332~625_combout\);

-- Location: LCCOMB_X65_Y65_N30
\Mux328~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~10_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux332~620_combout\) # ((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (((\Mux332~625_combout\ & !\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~620_combout\,
	datab => \Mux332~625_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~10_combout\);

-- Location: LCCOMB_X65_Y68_N18
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\row[3]~input_o\ & (((!\row[1]~input_o\ & !\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & ((!\row[2]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X65_Y68_N12
\Mux332~616\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~616_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux319~7_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux60~0_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~616_combout\);

-- Location: LCCOMB_X65_Y68_N0
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (!\row[1]~input_o\ & (\row[3]~input_o\ $ (\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X65_Y68_N26
\Mux332~613\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~613_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux54~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux147~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux54~0_combout\,
	combout => \Mux332~613_combout\);

-- Location: LCCOMB_X65_Y68_N20
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\row[3]~input_o\ & (\row[1]~input_o\ $ (((\row[0]~input_o\) # (\row[2]~input_o\))))) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X65_Y68_N30
\Mux332~614\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~614_combout\ = (\Mux332~613_combout\ & ((\Mux66~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~613_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux319~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~613_combout\,
	datab => \Mux66~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux319~7_combout\,
	combout => \Mux332~614_combout\);

-- Location: LCCOMB_X65_Y68_N8
\Mux332~615\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~615_combout\ = (!\ascii_ucode[2]~input_o\ & \Mux294~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datac => \Mux294~0_combout\,
	combout => \Mux332~615_combout\);

-- Location: LCCOMB_X65_Y68_N6
\Mux332~617\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~617_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~614_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~616_combout\) # ((\Mux332~615_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~616_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~614_combout\,
	datad => \Mux332~615_combout\,
	combout => \Mux332~617_combout\);

-- Location: LCCOMB_X57_Y60_N30
\Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (\row[0]~input_o\ & ((\row[1]~input_o\ & ((\row[2]~input_o\) # (\row[3]~input_o\))) # (!\row[1]~input_o\ & (\row[2]~input_o\ & \row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux118~0_combout\);

-- Location: LCCOMB_X57_Y60_N28
\Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~0_combout\ = (\row[0]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ $ (\row[3]~input_o\)))) # (!\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[2]~input_o\ & \row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux122~0_combout\);

-- Location: LCCOMB_X57_Y60_N8
\Mux332~628\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~628_combout\ = (\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\)) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux122~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux118~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux118~0_combout\,
	datad => \Mux122~0_combout\,
	combout => \Mux332~628_combout\);

-- Location: LCCOMB_X57_Y60_N10
\Mux332~629\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~629_combout\ = (\Mux332~628_combout\ & (((\Mux143~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~628_combout\ & (\Mux223~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux223~0_combout\,
	datab => \Mux332~628_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux143~0_combout\,
	combout => \Mux332~629_combout\);

-- Location: LCCOMB_X59_Y60_N12
\Mux332~626\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~626_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux190~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux147~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux190~0_combout\,
	datac => \Mux147~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~626_combout\);

-- Location: LCCOMB_X59_Y60_N22
\Mux332~627\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~627_combout\ = (\Mux332~626_combout\ & (((\Mux139~0_combout\) # (!\ascii_ucode[0]~input_o\)))) # (!\Mux332~626_combout\ & (\Mux120~0_combout\ & ((\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~626_combout\,
	datab => \Mux120~0_combout\,
	datac => \Mux139~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~627_combout\);

-- Location: LCCOMB_X58_Y60_N18
\Mux332~630\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~630_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~627_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~629_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~629_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datad => \Mux332~627_combout\,
	combout => \Mux332~630_combout\);

-- Location: LCCOMB_X65_Y65_N8
\Mux328~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~11_combout\ = (\Mux328~10_combout\ & (((\Mux332~630_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux328~10_combout\ & (\Mux332~617_combout\ & ((\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux328~10_combout\,
	datab => \Mux332~617_combout\,
	datac => \Mux332~630_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~11_combout\);

-- Location: LCCOMB_X59_Y61_N18
\Mux332~658\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~658_combout\ = (\row[2]~input_o\ & (((!\row[1]~input_o\)))) # (!\row[2]~input_o\ & (\row[1]~input_o\ & (\ascii_ucode[0]~input_o\ $ (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux332~658_combout\);

-- Location: LCCOMB_X59_Y60_N16
\Mux332~659\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~659_combout\ = (\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\)) # (!\ascii_ucode[2]~input_o\ & (\row[3]~input_o\ & (\ascii_ucode[0]~input_o\ $ (!\Mux332~658_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \Mux332~658_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~659_combout\);

-- Location: LCCOMB_X59_Y60_N18
\Mux332~660\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~660_combout\ = (\Mux332~659_combout\ & (((\Mux139~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~659_combout\ & (\Mux147~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datab => \Mux332~659_combout\,
	datac => \Mux139~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~660_combout\);

-- Location: LCCOMB_X60_Y62_N24
\Mux332~662\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~662_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux123~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux105~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux123~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~662_combout\);

-- Location: LCCOMB_X60_Y62_N12
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & ((!\row[2]~input_o\))) # (!\row[0]~input_o\ & (\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X60_Y62_N30
\Mux332~661\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~661_combout\ = (\Mux69~0_combout\ & !\ascii_ucode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~661_combout\);

-- Location: LCCOMB_X60_Y62_N10
\Mux332~663\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~663_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~660_combout\)) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~662_combout\) # (\Mux332~661_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~660_combout\,
	datab => \Mux332~662_combout\,
	datac => \Mux332~661_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~663_combout\);

-- Location: LCCOMB_X60_Y64_N18
\Mux332~665\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~665_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux319~9_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux106~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~9_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux106~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~665_combout\);

-- Location: LCCOMB_X61_Y62_N30
\Mux332~666\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~666_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~665_combout\ & (\Mux319~1_combout\)) # (!\Mux332~665_combout\ & ((\Mux319~10_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~665_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~1_combout\,
	datac => \Mux319~10_combout\,
	datad => \Mux332~665_combout\,
	combout => \Mux332~666_combout\);

-- Location: LCCOMB_X60_Y62_N20
\Mux332~930\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~930_combout\ = (\Mux223~0_combout\ & (\ascii_ucode[0]~input_o\ $ (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux223~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~930_combout\);

-- Location: LCCOMB_X62_Y62_N16
\Mux332~931\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~931_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux43~0_combout\ & ((!\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux34~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux43~0_combout\,
	datac => \Mux34~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~931_combout\);

-- Location: LCCOMB_X61_Y62_N16
\Mux332~667\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~667_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~930_combout\) # (\Mux332~931_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~666_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~666_combout\,
	datab => \Mux332~930_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~931_combout\,
	combout => \Mux332~667_combout\);

-- Location: LCCOMB_X59_Y67_N30
\Mux332~664\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~664_combout\ = (\Mux332~538_combout\) # ((!\ascii_ucode[1]~input_o\ & ((!\Mux45~0_combout\) # (!\Mux332~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~123_combout\,
	datab => \Mux332~538_combout\,
	datac => \Mux45~0_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~664_combout\);

-- Location: LCCOMB_X60_Y62_N28
\Mux328~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~17_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux332~664_combout\) # (\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux332~667_combout\ & ((!\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux332~667_combout\,
	datac => \Mux332~664_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~17_combout\);

-- Location: LCCOMB_X59_Y60_N20
\Mux136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~0_combout\ = (!\row[0]~input_o\ & ((\row[3]~input_o\) # ((!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux136~0_combout\);

-- Location: LCCOMB_X59_Y60_N30
\Mux131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux131~0_combout\ = (\row[1]~input_o\ & ((\row[0]~input_o\ & ((!\row[2]~input_o\))) # (!\row[0]~input_o\ & (!\row[3]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux131~0_combout\);

-- Location: LCCOMB_X59_Y60_N8
\Mux332~670\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~670_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux136~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux131~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux136~0_combout\,
	datac => \Mux131~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~670_combout\);

-- Location: LCCOMB_X59_Y60_N2
\Mux332~671\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~671_combout\ = (\Mux332~670_combout\ & ((\Mux143~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~670_combout\ & (((\Mux139~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux143~0_combout\,
	datab => \Mux332~670_combout\,
	datac => \Mux139~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~671_combout\);

-- Location: LCCOMB_X57_Y60_N6
\Mux151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~0_combout\ = (\row[0]~input_o\ & (!\row[1]~input_o\ & (\row[2]~input_o\))) # (!\row[0]~input_o\ & (\row[1]~input_o\ & (!\row[2]~input_o\ & !\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux151~0_combout\);

-- Location: LCCOMB_X57_Y60_N12
\Mux332~668\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~668_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\) # (\Mux319~3_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux143~0_combout\ & (!\ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux143~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux319~3_combout\,
	combout => \Mux332~668_combout\);

-- Location: LCCOMB_X57_Y60_N24
\Mux332~669\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~669_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~668_combout\ & (\Mux151~0_combout\)) # (!\Mux332~668_combout\ & ((\Mux190~0_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~668_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~0_combout\,
	datab => \Mux190~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~668_combout\,
	combout => \Mux332~669_combout\);

-- Location: LCCOMB_X60_Y62_N22
\Mux332~672\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~672_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~669_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~671_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~671_combout\,
	datac => \Mux332~669_combout\,
	combout => \Mux332~672_combout\);

-- Location: LCCOMB_X60_Y62_N16
\Mux328~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~18_combout\ = (\Mux328~17_combout\ & (((\Mux332~672_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux328~17_combout\ & (\Mux332~663_combout\ & ((\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~663_combout\,
	datab => \Mux328~17_combout\,
	datac => \Mux332~672_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux328~18_combout\);

-- Location: LCCOMB_X65_Y65_N26
\Mux328~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~19_combout\ = (\Mux328~16_combout\ & (((\Mux328~18_combout\) # (!\ascii_ucode[4]~input_o\)))) # (!\Mux328~16_combout\ & (\Mux328~11_combout\ & (\ascii_ucode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux328~16_combout\,
	datab => \Mux328~11_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux328~18_combout\,
	combout => \Mux328~19_combout\);

-- Location: LCCOMB_X65_Y65_N4
\Mux328~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux328~20_combout\ = (\ascii_ucode[7]~input_o\ & (\Mux328~9_combout\)) # (!\ascii_ucode[7]~input_o\ & ((\Mux328~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[7]~input_o\,
	datab => \Mux328~9_combout\,
	datac => \Mux328~19_combout\,
	combout => \Mux328~20_combout\);

-- Location: LCCOMB_X63_Y65_N28
\Mux332~693\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~693_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux319~0_combout\,
	datac => \Mux31~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~693_combout\);

-- Location: LCCOMB_X60_Y62_N2
\Mux332~694\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~694_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~693_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~458_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~693_combout\,
	datab => \Mux332~458_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~694_combout\);

-- Location: LCCOMB_X61_Y62_N12
\Mux332~695\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~695_combout\ = (\Mux332~694_combout\ & (((\Mux332~350_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~694_combout\ & (\Mux332~457_combout\ & (\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~694_combout\,
	datab => \Mux332~457_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~350_combout\,
	combout => \Mux332~695_combout\);

-- Location: LCCOMB_X59_Y63_N12
\Mux282~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux282~0_combout\ = (\row[3]~input_o\ & ((\row[2]~input_o\ & ((!\row[0]~input_o\))) # (!\row[2]~input_o\ & (\row[1]~input_o\)))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & ((\row[2]~input_o\) # (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux282~0_combout\);

-- Location: LCCOMB_X59_Y63_N14
\Mux332~691\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~691_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux288~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux282~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux282~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux288~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~691_combout\);

-- Location: LCCOMB_X62_Y63_N10
\Mux332~692\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~692_combout\ = (\Mux332~691_combout\ & (((\Mux211~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~691_combout\ & (\Mux245~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~691_combout\,
	datab => \Mux245~0_combout\,
	datac => \Mux211~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~692_combout\);

-- Location: LCCOMB_X62_Y63_N12
\Mux325~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~21_combout\ = (\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\Mux332~692_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~344_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~692_combout\,
	combout => \Mux325~21_combout\);

-- Location: LCCOMB_X61_Y63_N12
\Mux325~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~22_combout\ = (\Mux325~21_combout\) # ((\Mux332~695_combout\ & !\ascii_ucode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~695_combout\,
	datac => \Mux325~21_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~22_combout\);

-- Location: LCCOMB_X61_Y62_N18
\Mux332~674\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~674_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux37~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~1_combout\,
	datac => \Mux37~0_combout\,
	combout => \Mux332~674_combout\);

-- Location: LCCOMB_X61_Y65_N18
\Mux332~675\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~675_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~173_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~674_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~173_combout\,
	datac => \Mux332~674_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~675_combout\);

-- Location: LCCOMB_X61_Y65_N24
\Mux332~673\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~673_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux317~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux233~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux233~0_combout\,
	datad => \Mux317~0_combout\,
	combout => \Mux332~673_combout\);

-- Location: LCCOMB_X61_Y65_N12
\Mux332~676\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~676_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~675_combout\ & (\Mux264~0_combout\)) # (!\Mux332~675_combout\ & ((\Mux332~673_combout\))))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~675_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~675_combout\,
	datac => \Mux264~0_combout\,
	datad => \Mux332~673_combout\,
	combout => \Mux332~676_combout\);

-- Location: LCCOMB_X68_Y62_N30
\Mux239~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux239~0_combout\ = (\row[2]~input_o\ & (((\row[0]~input_o\ & !\row[1]~input_o\)) # (!\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux239~0_combout\);

-- Location: LCCOMB_X68_Y62_N14
\Mux325~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~130_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux253~0_combout\ & ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux239~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux253~0_combout\,
	datac => \Mux239~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~130_combout\);

-- Location: LCCOMB_X61_Y65_N30
\Mux325~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~16_combout\ = (!\ascii_ucode[0]~input_o\ & ((\Mux325~130_combout\) # ((\Mux264~0_combout\ & \Mux332~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux264~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux332~335_combout\,
	datad => \Mux325~130_combout\,
	combout => \Mux325~16_combout\);

-- Location: LCCOMB_X60_Y60_N14
\Mux246~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux246~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((\row[1]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux246~0_combout\);

-- Location: LCCOMB_X60_Y60_N8
\Mux242~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux242~0_combout\ = (!\row[1]~input_o\ & ((\row[0]~input_o\ & (\row[3]~input_o\)) # (!\row[0]~input_o\ & ((\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux242~0_combout\);

-- Location: LCCOMB_X60_Y60_N26
\Mux325~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~14_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux246~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux242~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux246~0_combout\,
	datac => \Mux242~0_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~14_combout\);

-- Location: LCCOMB_X65_Y60_N14
\Mux325~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~15_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux325~14_combout\) # ((\Mux254~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux254~0_combout\,
	datac => \Mux325~14_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~15_combout\);

-- Location: LCCOMB_X61_Y65_N16
\Mux325~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~17_combout\ = (\ascii_ucode[3]~input_o\ & (((\Mux325~16_combout\) # (\Mux325~15_combout\)))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~676_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~676_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux325~16_combout\,
	datad => \Mux325~15_combout\,
	combout => \Mux325~17_combout\);

-- Location: LCCOMB_X60_Y70_N6
\Mux332~689\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~689_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux51~0_combout\,
	combout => \Mux332~689_combout\);

-- Location: LCCOMB_X60_Y67_N20
\Mux332~690\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~690_combout\ = (\Mux332~244_combout\) # ((\Mux332~689_combout\ & (\ascii_ucode[1]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~689_combout\,
	datab => \Mux332~244_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~690_combout\);

-- Location: LCCOMB_X61_Y68_N10
\Mux332~687\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~687_combout\ = (\Mux332~132_combout\) # ((!\ascii_ucode[0]~input_o\ & !\Mux319~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~132_combout\,
	datad => \Mux319~7_combout\,
	combout => \Mux332~687_combout\);

-- Location: LCCOMB_X60_Y70_N4
\Mux332~685\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~685_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux51~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux51~0_combout\,
	combout => \Mux332~685_combout\);

-- Location: LCCOMB_X61_Y68_N24
\Mux332~686\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~686_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~645_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~685_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~685_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~645_combout\,
	combout => \Mux332~686_combout\);

-- Location: LCCOMB_X61_Y68_N20
\Mux332~688\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~688_combout\ = (\Mux332~686_combout\ & ((\Mux332~687_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~686_combout\ & (((\ascii_ucode[1]~input_o\ & \Mux332~644_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~687_combout\,
	datab => \Mux332~686_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~644_combout\,
	combout => \Mux332~688_combout\);

-- Location: LCCOMB_X60_Y67_N30
\Mux325~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~20_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~243_combout\) # ((\Mux332~690_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~688_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~243_combout\,
	datab => \Mux332~690_combout\,
	datac => \Mux332~688_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~20_combout\);

-- Location: LCCOMB_X59_Y66_N26
\Mux332~679\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~679_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux293~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux94~0_combout\,
	datac => \Mux293~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~679_combout\);

-- Location: LCCOMB_X59_Y66_N4
\Mux332~680\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~680_combout\ = (\Mux332~679_combout\ & (((\Mux163~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~679_combout\ & (\Mux37~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~679_combout\,
	datab => \Mux37~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux163~0_combout\,
	combout => \Mux332~680_combout\);

-- Location: LCCOMB_X62_Y68_N30
\Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (!\row[2]~input_o\ & ((\row[0]~input_o\ & (\row[3]~input_o\ & !\row[1]~input_o\)) # (!\row[0]~input_o\ & (!\row[3]~input_o\ & \row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux85~0_combout\);

-- Location: LCCOMB_X62_Y68_N8
\Mux332~681\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~681_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux90~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux85~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux85~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux90~0_combout\,
	combout => \Mux332~681_combout\);

-- Location: LCCOMB_X62_Y65_N14
\Mux332~682\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~682_combout\ = (\Mux332~681_combout\ & (((\Mux319~3_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~681_combout\ & (\Mux211~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~681_combout\,
	datab => \Mux211~0_combout\,
	datac => \Mux319~3_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~682_combout\);

-- Location: LCCOMB_X62_Y65_N16
\Mux325~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~18_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~680_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~682_combout\ & !\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~680_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~682_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~18_combout\);

-- Location: LCCOMB_X58_Y63_N28
\Mux332~677\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~677_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux67~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux124~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux124~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux67~0_combout\,
	combout => \Mux332~677_combout\);

-- Location: LCCOMB_X57_Y63_N24
\Mux332~678\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~678_combout\ = (\Mux332~677_combout\) # ((!\ascii_ucode[2]~input_o\ & \Mux105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~677_combout\,
	datac => \Mux105~0_combout\,
	combout => \Mux332~678_combout\);

-- Location: LCCOMB_X65_Y60_N16
\Mux332~683\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~683_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux171~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux123~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux123~0_combout\,
	datab => \Mux171~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~683_combout\);

-- Location: LCCOMB_X65_Y60_N26
\Mux332~684\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~684_combout\ = (\Mux332~683_combout\ & ((\Mux99~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~683_combout\ & (((\Mux20~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux99~0_combout\,
	datab => \Mux332~683_combout\,
	datac => \Mux20~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~684_combout\);

-- Location: LCCOMB_X61_Y63_N8
\Mux325~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~19_combout\ = (\Mux325~18_combout\ & (((\Mux332~684_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux325~18_combout\ & (\Mux332~678_combout\ & ((\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux332~678_combout\,
	datac => \Mux332~684_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~19_combout\);

-- Location: LCCOMB_X61_Y63_N26
\Mux327~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~0_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux325~19_combout\) # (\ascii_ucode[7]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux325~20_combout\ & ((!\ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux325~20_combout\,
	datac => \Mux325~19_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~0_combout\);

-- Location: LCCOMB_X61_Y63_N30
\Mux327~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~1_combout\ = (\Mux327~0_combout\ & ((\Mux325~22_combout\) # ((!\ascii_ucode[7]~input_o\)))) # (!\Mux327~0_combout\ & (((\Mux325~17_combout\ & \ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~22_combout\,
	datab => \Mux325~17_combout\,
	datac => \Mux327~0_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~1_combout\);

-- Location: LCCOMB_X58_Y60_N12
\Mux130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & ((\row[0]~input_o\) # (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux130~0_combout\);

-- Location: LCCOMB_X59_Y59_N22
\Mux135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux135~0_combout\ = (\row[3]~input_o\ & (((!\row[1]~input_o\ & \row[2]~input_o\)) # (!\row[0]~input_o\))) # (!\row[3]~input_o\ & (!\row[1]~input_o\ & (\row[2]~input_o\ & !\row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux135~0_combout\);

-- Location: LCCOMB_X58_Y60_N30
\Mux332~735\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~735_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux135~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux130~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~0_combout\,
	datab => \Mux135~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~735_combout\);

-- Location: LCCOMB_X58_Y60_N0
\Mux332~736\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~736_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~735_combout\ & ((\Mux144~0_combout\))) # (!\Mux332~735_combout\ & (\Mux143~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~735_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux143~0_combout\,
	datac => \Mux144~0_combout\,
	datad => \Mux332~735_combout\,
	combout => \Mux332~736_combout\);

-- Location: LCCOMB_X59_Y62_N20
\Mux332~737\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~737_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux124~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux123~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux124~0_combout\,
	datac => \Mux123~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~737_combout\);

-- Location: LCCOMB_X58_Y60_N10
\Mux332~738\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~738_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~737_combout\ & ((\Mux143~0_combout\))) # (!\Mux332~737_combout\ & (\Mux190~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~737_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux190~0_combout\,
	datac => \Mux143~0_combout\,
	datad => \Mux332~737_combout\,
	combout => \Mux332~738_combout\);

-- Location: LCCOMB_X59_Y60_N4
\Mux332~739\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~739_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux139~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux124~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux124~0_combout\,
	datac => \Mux139~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~739_combout\);

-- Location: LCCOMB_X58_Y60_N20
\Mux332~740\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~740_combout\ = (\Mux332~739_combout\) # ((\Mux117~1_combout\ & !\ascii_ucode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux117~1_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~739_combout\,
	combout => \Mux332~740_combout\);

-- Location: LCCOMB_X58_Y60_N14
\Mux325~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~48_combout\ = (\ascii_ucode[3]~input_o\ & (((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux332~738_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~740_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~738_combout\,
	datab => \Mux332~740_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~48_combout\);

-- Location: LCCOMB_X59_Y60_N6
\Mux332~741\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~741_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux190~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux139~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux190~0_combout\,
	datac => \Mux139~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~741_combout\);

-- Location: LCCOMB_X59_Y60_N24
\Mux150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = (\row[1]~input_o\ & (!\row[3]~input_o\ & (!\row[0]~input_o\))) # (!\row[1]~input_o\ & (\row[2]~input_o\ & ((\row[3]~input_o\) # (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux150~0_combout\);

-- Location: LCCOMB_X59_Y60_N26
\Mux332~742\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~742_combout\ = (\Mux332~741_combout\ & ((\Mux150~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~741_combout\ & (((\Mux319~3_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~741_combout\,
	datab => \Mux150~0_combout\,
	datac => \Mux319~3_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~742_combout\);

-- Location: LCCOMB_X58_Y60_N24
\Mux325~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~49_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux325~48_combout\ & ((\Mux332~742_combout\))) # (!\Mux325~48_combout\ & (\Mux332~736_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux325~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~736_combout\,
	datac => \Mux325~48_combout\,
	datad => \Mux332~742_combout\,
	combout => \Mux325~49_combout\);

-- Location: LCCOMB_X59_Y64_N0
\Mux332~747\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~747_combout\ = (\row[0]~input_o\ & (!\row[3]~input_o\ & (\row[2]~input_o\ & \row[1]~input_o\))) # (!\row[0]~input_o\ & (!\row[2]~input_o\ & (\row[3]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux332~747_combout\);

-- Location: LCCOMB_X59_Y65_N26
\Mux332~748\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~748_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux319~7_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux332~747_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~747_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~748_combout\);

-- Location: LCCOMB_X59_Y65_N4
\Mux332~749\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~749_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux332~748_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~146_combout\) # ((\Mux332~748_combout\ & \Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~748_combout\,
	datab => \Mux332~146_combout\,
	datac => \Mux52~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~749_combout\);

-- Location: LCCOMB_X58_Y65_N6
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ & ((!\row[1]~input_o\)))) # (!\row[0]~input_o\ & ((\row[2]~input_o\ & ((!\row[1]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X58_Y65_N10
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[2]~input_o\ & !\row[1]~input_o\))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (!\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X58_Y65_N20
\Mux332~745\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~745_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux53~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux216~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~0_combout\,
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~745_combout\);

-- Location: LCCOMB_X58_Y65_N24
\Mux332~746\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~746_combout\ = (\Mux332~745_combout\ & ((\Mux65~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~745_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux319~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~0_combout\,
	datab => \Mux332~745_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux319~7_combout\,
	combout => \Mux332~746_combout\);

-- Location: LCCOMB_X58_Y65_N26
\Mux325~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~50_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~746_combout\) # (\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~749_combout\ & ((!\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~749_combout\,
	datab => \Mux332~746_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~50_combout\);

-- Location: LCCOMB_X60_Y68_N18
\Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (\row[3]~input_o\ & ((\row[2]~input_o\ & (\row[1]~input_o\ & \row[0]~input_o\)) # (!\row[2]~input_o\ & ((\row[1]~input_o\) # (\row[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[2]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux73~0_combout\);

-- Location: LCCOMB_X60_Y68_N20
\Mux332~750\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~750_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux78~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux73~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux73~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux78~0_combout\,
	combout => \Mux332~750_combout\);

-- Location: LCCOMB_X59_Y60_N28
\Mux332~751\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~751_combout\ = (\Mux332~750_combout\ & ((\Mux143~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~750_combout\ & (((\Mux80~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux143~0_combout\,
	datab => \Mux332~750_combout\,
	datac => \Mux80~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~751_combout\);

-- Location: LCCOMB_X58_Y63_N30
\Mux332~743\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~743_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux124~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux204~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux124~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux204~0_combout\,
	combout => \Mux332~743_combout\);

-- Location: LCCOMB_X58_Y63_N8
\Mux332~744\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~744_combout\ = (\Mux332~743_combout\) # ((\Mux68~0_combout\ & !\ascii_ucode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux68~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~743_combout\,
	combout => \Mux332~744_combout\);

-- Location: LCCOMB_X58_Y60_N2
\Mux325~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~51_combout\ = (\Mux325~50_combout\ & ((\Mux332~751_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux325~50_combout\ & (((\ascii_ucode[3]~input_o\ & \Mux332~744_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~50_combout\,
	datab => \Mux332~751_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~744_combout\,
	combout => \Mux325~51_combout\);

-- Location: LCCOMB_X61_Y63_N6
\Mux327~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~7_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux325~49_combout\) # ((\ascii_ucode[7]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (((\Mux325~51_combout\ & !\ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux325~49_combout\,
	datac => \Mux325~51_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~7_combout\);

-- Location: LCCOMB_X66_Y61_N4
\Mux332~752\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~752_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux318~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux318~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~752_combout\);

-- Location: LCCOMB_X66_Y61_N30
\Mux332~753\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~753_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux321~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux241~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux241~0_combout\,
	datac => \Mux321~0_combout\,
	combout => \Mux332~753_combout\);

-- Location: LCCOMB_X66_Y61_N0
\Mux332~754\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~754_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~753_combout\) # ((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~354_combout\ & !\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~753_combout\,
	datab => \Mux332~354_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~754_combout\);

-- Location: LCCOMB_X66_Y61_N10
\Mux332~755\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~755_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~754_combout\ & (\Mux324~1_combout\)) # (!\Mux332~754_combout\ & ((\Mux332~752_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~754_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux324~1_combout\,
	datac => \Mux332~752_combout\,
	datad => \Mux332~754_combout\,
	combout => \Mux332~755_combout\);

-- Location: LCCOMB_X67_Y61_N0
\Mux332~756\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~756_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux317~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux317~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~756_combout\);

-- Location: LCCOMB_X67_Y61_N26
\Mux332~757\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~757_combout\ = (\Mux332~756_combout\ & (((!\Mux311~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~756_combout\ & (\Mux306~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux306~0_combout\,
	datab => \Mux332~756_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux311~0_combout\,
	combout => \Mux332~757_combout\);

-- Location: LCCOMB_X67_Y61_N4
\Mux325~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~52_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux303~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux303~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux325~52_combout\);

-- Location: LCCOMB_X66_Y61_N20
\Mux325~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~53_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~338_combout\) # (\Mux325~52_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~757_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~757_combout\,
	datab => \Mux332~338_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux325~52_combout\,
	combout => \Mux325~53_combout\);

-- Location: LCCOMB_X66_Y61_N14
\Mux325~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~54_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux332~755_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux325~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~755_combout\,
	datab => \Mux325~53_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~54_combout\);

-- Location: LCCOMB_X62_Y64_N20
\Mux325~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~45_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~289_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~519_combout\ & (\Mux316~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~519_combout\,
	datab => \Mux316~4_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~289_combout\,
	combout => \Mux325~45_combout\);

-- Location: LCCOMB_X57_Y64_N10
\Mux319~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux319~12_combout\ = (\row[1]~input_o\ & (\row[0]~input_o\ & (!\row[2]~input_o\ & !\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux319~12_combout\);

-- Location: LCCOMB_X60_Y64_N28
\Mux332~730\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~730_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux319~12_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux319~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~12_combout\,
	datab => \Mux319~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~730_combout\);

-- Location: LCCOMB_X62_Y64_N18
\Mux332~731\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~731_combout\ = (\Mux332~730_combout\ & (((!\Mux221~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~730_combout\ & (\Mux222~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~730_combout\,
	datab => \Mux222~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux221~0_combout\,
	combout => \Mux332~731_combout\);

-- Location: LCCOMB_X62_Y64_N30
\Mux325~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~46_combout\ = (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\Mux332~731_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux325~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux325~45_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~731_combout\,
	combout => \Mux325~46_combout\);

-- Location: LCCOMB_X62_Y64_N28
\Mux332~937\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~937_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux264~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (!\row[3]~input_o\ & (\Mux316~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \Mux316~4_combout\,
	datac => \Mux264~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~937_combout\);

-- Location: LCCOMB_X62_Y67_N12
\Mux332~732\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~732_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux235~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux271~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux271~0_combout\,
	datac => \Mux235~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~732_combout\);

-- Location: LCCOMB_X62_Y67_N14
\Mux332~733\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~733_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~304_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~732_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~732_combout\,
	datab => \Mux332~304_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~733_combout\);

-- Location: LCCOMB_X62_Y67_N16
\Mux332~734\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~734_combout\ = (\Mux332~733_combout\ & (((\Mux332~305_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~733_combout\ & (\Mux332~937_combout\ & (\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~937_combout\,
	datab => \Mux332~733_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~305_combout\,
	combout => \Mux332~734_combout\);

-- Location: LCCOMB_X62_Y63_N20
\Mux325~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~47_combout\ = (\Mux325~46_combout\) # ((\Mux332~734_combout\ & \ascii_ucode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~46_combout\,
	datab => \Mux332~734_combout\,
	datac => \ascii_ucode[3]~input_o\,
	combout => \Mux325~47_combout\);

-- Location: LCCOMB_X61_Y63_N0
\Mux327~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~8_combout\ = (\Mux327~7_combout\ & ((\Mux325~54_combout\) # ((!\ascii_ucode[7]~input_o\)))) # (!\Mux327~7_combout\ & (((\Mux325~47_combout\ & \ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~7_combout\,
	datab => \Mux325~54_combout\,
	datac => \Mux325~47_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~8_combout\);

-- Location: LCCOMB_X68_Y66_N0
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & (!\row[3]~input_o\)) # (!\row[1]~input_o\ & ((!\row[0]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ $ (\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X62_Y62_N18
\Mux332~935\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~935_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux171~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux39~0_combout\))))) # (!\ascii_ucode[0]~input_o\ & (\Mux171~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux171~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux39~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~935_combout\);

-- Location: LCCOMB_X62_Y62_N12
\Mux332~936\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~936_combout\ = (\Mux332~935_combout\) # ((\ascii_ucode[2]~input_o\ & (!\ascii_ucode[0]~input_o\ & \Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~935_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux43~0_combout\,
	combout => \Mux332~936_combout\);

-- Location: LCCOMB_X60_Y64_N12
\Mux332~933\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~933_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux319~1_combout\ & \ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~9_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~9_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~1_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~933_combout\);

-- Location: LCCOMB_X60_Y64_N30
\Mux332~934\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~934_combout\ = (\Mux332~933_combout\) # ((\Mux106~0_combout\ & (\ascii_ucode[0]~input_o\ $ (\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~933_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux106~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~934_combout\);

-- Location: LCCOMB_X59_Y61_N12
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\row[0]~input_o\ & (\row[2]~input_o\ & (!\row[3]~input_o\))) # (!\row[0]~input_o\ & (\row[1]~input_o\ & (\row[2]~input_o\ $ (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X60_Y61_N4
\Mux332~703\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~703_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux268~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux21~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux268~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~703_combout\);

-- Location: LCCOMB_X60_Y61_N22
\Mux332~704\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~704_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~703_combout\ & (\Mux35~0_combout\)) # (!\Mux332~703_combout\ & ((\Mux32~0_combout\))))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~703_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux35~0_combout\,
	datac => \Mux332~703_combout\,
	datad => \Mux32~0_combout\,
	combout => \Mux332~704_combout\);

-- Location: LCCOMB_X62_Y61_N24
\Mux332~705\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~705_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux323~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux319~5_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~5_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~705_combout\);

-- Location: LCCOMB_X60_Y61_N24
\Mux332~706\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~706_combout\ = (\Mux332~705_combout\ & ((\Mux30~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~705_combout\ & (((\Mux25~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~705_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux25~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~706_combout\);

-- Location: LCCOMB_X60_Y61_N18
\Mux325~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~28_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~704_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~706_combout\ & !\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~704_combout\,
	datab => \Mux332~706_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~28_combout\);

-- Location: LCCOMB_X61_Y63_N16
\Mux325~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~29_combout\ = (\Mux325~28_combout\ & ((\Mux332~936_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux325~28_combout\ & (((\Mux332~934_combout\ & \ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~936_combout\,
	datab => \Mux332~934_combout\,
	datac => \Mux325~28_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~29_combout\);

-- Location: LCCOMB_X63_Y67_N20
\Mux325~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~25_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux319~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((!\ascii_ucode[2]~input_o\) # (!\Mux319~0_combout\))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~25_combout\);

-- Location: LCCOMB_X63_Y67_N6
\Mux325~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~26_combout\ = (\Mux325~25_combout\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~123_combout\) # (!\ascii_ucode[1]~input_o\))) # (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\))))) # (!\Mux325~25_combout\ & (((\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~123_combout\,
	datab => \Mux325~25_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~26_combout\);

-- Location: LCCOMB_X63_Y67_N8
\Mux325~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~27_combout\ = (\ascii_ucode[3]~input_o\ & (((!\Mux325~26_combout\)))) # (!\ascii_ucode[3]~input_o\ & ((\Mux325~26_combout\ & ((\Mux332~619_combout\))) # (!\Mux325~26_combout\ & (\Mux332~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~246_combout\,
	datab => \Mux332~619_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux325~26_combout\,
	combout => \Mux325~27_combout\);

-- Location: LCCOMB_X61_Y63_N10
\Mux327~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~2_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux325~27_combout\) # (\ascii_ucode[7]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux325~29_combout\ & ((!\ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux325~29_combout\,
	datac => \Mux325~27_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~2_combout\);

-- Location: LCCOMB_X57_Y61_N16
\Mux179~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux179~0_combout\ = (!\row[3]~input_o\ & ((\row[1]~input_o\ & ((!\row[2]~input_o\))) # (!\row[1]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux179~0_combout\);

-- Location: LCCOMB_X57_Y61_N22
\Mux332~700\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~700_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux116~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux171~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux171~0_combout\,
	datab => \Mux116~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~700_combout\);

-- Location: LCCOMB_X57_Y61_N18
\Mux332~701\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~701_combout\ = (\Mux332~700_combout\ & (((\Mux179~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~700_combout\ & (\Mux217~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux179~0_combout\,
	datac => \Mux332~700_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~701_combout\);

-- Location: LCCOMB_X63_Y65_N30
\Mux332~698\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~698_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux171~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux177~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux177~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux171~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~698_combout\);

-- Location: LCCOMB_X63_Y65_N8
\Mux332~699\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~699_combout\ = (\Mux332~698_combout\ & ((\Mux217~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~698_combout\ & (((\Mux222~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~698_combout\,
	datab => \Mux217~0_combout\,
	datac => \Mux222~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~699_combout\);

-- Location: LCCOMB_X58_Y61_N10
\Mux325~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~23_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~699_combout\) # (\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~701_combout\ & ((!\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~701_combout\,
	datac => \Mux332~699_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~23_combout\);

-- Location: LCCOMB_X58_Y61_N30
\Mux332~696\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~696_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux171~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux183~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux171~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux183~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~696_combout\);

-- Location: LCCOMB_X58_Y61_N16
\Mux332~697\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~697_combout\ = (\Mux332~191_combout\) # (\Mux332~696_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~191_combout\,
	datac => \Mux332~696_combout\,
	combout => \Mux332~697_combout\);

-- Location: LCCOMB_X67_Y61_N6
\Mux332~702\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~702_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux316~5_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux306~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux306~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux316~5_combout\,
	combout => \Mux332~702_combout\);

-- Location: LCCOMB_X58_Y61_N22
\Mux332~932\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~932_combout\ = (\Mux332~702_combout\) # ((\Mux190~0_combout\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux190~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux332~702_combout\,
	combout => \Mux332~932_combout\);

-- Location: LCCOMB_X58_Y61_N4
\Mux325~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~24_combout\ = (\Mux325~23_combout\ & (((\Mux332~932_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux325~23_combout\ & (\Mux332~697_combout\ & ((\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~23_combout\,
	datab => \Mux332~697_combout\,
	datac => \Mux332~932_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~24_combout\);

-- Location: LCCOMB_X63_Y65_N26
\Mux332~711\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~711_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux232~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux224~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux224~0_combout\,
	datac => \Mux232~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~711_combout\);

-- Location: LCCOMB_X63_Y65_N4
\Mux332~712\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~712_combout\ = (\Mux332~711_combout\) # ((!\ascii_ucode[2]~input_o\ & \Mux217~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datac => \Mux332~711_combout\,
	datad => \Mux217~0_combout\,
	combout => \Mux332~712_combout\);

-- Location: LCCOMB_X65_Y64_N4
\Mux332~707\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~707_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux217~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux286~0_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux286~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux217~0_combout\,
	combout => \Mux332~707_combout\);

-- Location: LCCOMB_X65_Y64_N22
\Mux332~708\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~708_combout\ = (\Mux332~707_combout\ & ((\Mux319~7_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~707_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux222~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~7_combout\,
	datab => \Mux332~707_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux222~0_combout\,
	combout => \Mux332~708_combout\);

-- Location: LCCOMB_X65_Y64_N8
\Mux332~709\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~709_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux286~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\ & \Mux232~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux286~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux232~1_combout\,
	combout => \Mux332~709_combout\);

-- Location: LCCOMB_X65_Y64_N18
\Mux332~710\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~710_combout\ = (\Mux332~709_combout\ & ((\Mux319~3_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~709_combout\ & (((\Mux217~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \Mux217~0_combout\,
	datac => \Mux332~709_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~710_combout\);

-- Location: LCCOMB_X65_Y64_N20
\Mux325~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~30_combout\ = (\ascii_ucode[3]~input_o\ & (((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux332~708_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~710_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~708_combout\,
	datab => \Mux332~710_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~30_combout\);

-- Location: LCCOMB_X65_Y64_N30
\Mux325~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~31_combout\ = (\Mux325~30_combout\ & ((\Mux332~712_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux325~30_combout\ & (((\ascii_ucode[3]~input_o\ & \Mux332~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~712_combout\,
	datab => \Mux325~30_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~308_combout\,
	combout => \Mux325~31_combout\);

-- Location: LCCOMB_X61_Y63_N20
\Mux327~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~3_combout\ = (\Mux327~2_combout\ & (((\Mux325~31_combout\) # (!\ascii_ucode[7]~input_o\)))) # (!\Mux327~2_combout\ & (\Mux325~24_combout\ & ((\ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~2_combout\,
	datab => \Mux325~24_combout\,
	datac => \Mux325~31_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~3_combout\);

-- Location: LCCOMB_X59_Y62_N24
\Mux332~726\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~726_combout\ = (\Mux332~191_combout\) # ((!\ascii_ucode[0]~input_o\ & (\Mux232~1_combout\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux232~1_combout\,
	datac => \Mux332~191_combout\,
	datad => \row[0]~input_o\,
	combout => \Mux332~726_combout\);

-- Location: LCCOMB_X59_Y62_N12
\Mux332~724\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~724_combout\ = (\Mux332~191_combout\) # ((!\ascii_ucode[0]~input_o\ & \Mux207~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~191_combout\,
	datad => \Mux207~0_combout\,
	combout => \Mux332~724_combout\);

-- Location: LCCOMB_X59_Y62_N14
\Mux332~725\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~725_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~724_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~427_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~724_combout\,
	datab => \Mux332~427_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~725_combout\);

-- Location: LCCOMB_X59_Y62_N26
\Mux332~727\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~727_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~725_combout\ & (\Mux332~726_combout\)) # (!\Mux332~725_combout\ & ((\Mux332~395_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~725_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~726_combout\,
	datac => \Mux332~725_combout\,
	datad => \Mux332~395_combout\,
	combout => \Mux332~727_combout\);

-- Location: LCCOMB_X66_Y62_N30
\Mux325~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~42_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux254~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux217~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux254~0_combout\,
	datab => \Mux217~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~42_combout\);

-- Location: LCCOMB_X66_Y62_N18
\Mux332~728\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~728_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux245~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux222~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux222~0_combout\,
	datac => \Mux245~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~728_combout\);

-- Location: LCCOMB_X66_Y62_N20
\Mux332~729\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~729_combout\ = (\Mux332~728_combout\ & (((!\ascii_ucode[2]~input_o\)) # (!\Mux221~0_combout\))) # (!\Mux332~728_combout\ & (((\Mux235~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux221~0_combout\,
	datab => \Mux332~728_combout\,
	datac => \Mux235~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~729_combout\);

-- Location: LCCOMB_X66_Y62_N0
\Mux325~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~43_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~729_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~444_combout\) # ((\Mux325~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~444_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux325~42_combout\,
	datad => \Mux332~729_combout\,
	combout => \Mux325~43_combout\);

-- Location: LCCOMB_X60_Y63_N14
\Mux325~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~44_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux332~727_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux325~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~727_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux325~43_combout\,
	combout => \Mux325~44_combout\);

-- Location: LCCOMB_X67_Y64_N30
\Mux332~713\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~713_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux165~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux316~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux316~1_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux165~0_combout\,
	combout => \Mux332~713_combout\);

-- Location: LCCOMB_X66_Y63_N2
\Mux332~714\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~714_combout\ = (\Mux332~713_combout\ & (((\Mux116~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~713_combout\ & (\Mux169~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~0_combout\,
	datab => \Mux116~0_combout\,
	datac => \Mux332~713_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~714_combout\);

-- Location: LCCOMB_X59_Y66_N22
\Mux332~715\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~715_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux187~0_combout\ & (\ascii_ucode[2]~input_o\))) # (!\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\ & \Mux222~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux187~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux222~0_combout\,
	combout => \Mux332~715_combout\);

-- Location: LCCOMB_X59_Y66_N24
\Mux332~716\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~716_combout\ = (\Mux332~715_combout\) # ((!\ascii_ucode[0]~input_o\ & (\ascii_ucode[2]~input_o\ & \Mux163~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~715_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux163~0_combout\,
	combout => \Mux332~716_combout\);

-- Location: LCCOMB_X61_Y62_N22
\Mux332~717\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~717_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux319~1_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\ & \Mux155~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~1_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux155~0_combout\,
	combout => \Mux332~717_combout\);

-- Location: LCCOMB_X62_Y63_N22
\Mux332~718\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~718_combout\ = (\Mux332~717_combout\ & ((\Mux160~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~717_combout\ & (((\Mux319~7_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~717_combout\,
	datab => \Mux160~0_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~718_combout\);

-- Location: LCCOMB_X62_Y63_N24
\Mux325~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~32_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~716_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~718_combout\ & !\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~716_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~718_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~32_combout\);

-- Location: LCCOMB_X68_Y63_N30
\Mux332~719\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~719_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux175~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux172~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux175~0_combout\,
	datac => \Mux172~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~719_combout\);

-- Location: LCCOMB_X66_Y67_N28
\Mux332~720\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~720_combout\ = (\Mux332~719_combout\) # ((!\ascii_ucode[2]~input_o\ & ((\Mux332~173_combout\) # (\Mux332~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~173_combout\,
	datab => \Mux332~147_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~719_combout\,
	combout => \Mux332~720_combout\);

-- Location: LCCOMB_X62_Y63_N18
\Mux325~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~33_combout\ = (\Mux325~32_combout\ & (((\Mux332~720_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux325~32_combout\ & (\Mux332~714_combout\ & (\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~714_combout\,
	datab => \Mux325~32_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~720_combout\,
	combout => \Mux325~33_combout\);

-- Location: LCCOMB_X65_Y62_N20
\Mux325~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~38_combout\ = (\row[3]~input_o\ & (!\ascii_ucode[0]~input_o\ & (\row[0]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux325~38_combout\);

-- Location: LCCOMB_X65_Y62_N14
\Mux325~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~39_combout\ = (!\ascii_ucode[2]~input_o\ & ((\Mux325~38_combout\) # ((\Mux287~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux287~0_combout\,
	datab => \Mux325~38_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~39_combout\);

-- Location: LCCOMB_X66_Y65_N24
\Mux325~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~40_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux325~39_combout\) # ((\Mux332~123_combout\ & \Mux271~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux325~39_combout\,
	datac => \Mux332~123_combout\,
	datad => \Mux271~0_combout\,
	combout => \Mux325~40_combout\);

-- Location: LCCOMB_X69_Y63_N24
\Mux325~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~37_combout\ = (\Mux332~462_combout\ & ((\ascii_ucode[2]~input_o\ & (\Mux305~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux241~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux305~0_combout\,
	datab => \Mux241~0_combout\,
	datac => \Mux332~462_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~37_combout\);

-- Location: LCCOMB_X58_Y62_N30
\Mux332~721\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~721_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux16~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~721_combout\);

-- Location: LCCOMB_X61_Y65_N2
\Mux332~722\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~722_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~721_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~255_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~721_combout\,
	datac => \Mux332~255_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~722_combout\);

-- Location: LCCOMB_X61_Y65_N4
\Mux332~723\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~723_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~722_combout\ & (\Mux332~257_combout\)) # (!\Mux332~722_combout\ & ((\Mux332~173_combout\))))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~722_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~722_combout\,
	datac => \Mux332~257_combout\,
	datad => \Mux332~173_combout\,
	combout => \Mux332~723_combout\);

-- Location: LCCOMB_X61_Y63_N14
\Mux325~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~41_combout\ = (\ascii_ucode[3]~input_o\ & (((\Mux332~723_combout\)))) # (!\ascii_ucode[3]~input_o\ & ((\Mux325~40_combout\) # ((\Mux325~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~40_combout\,
	datab => \Mux325~37_combout\,
	datac => \Mux332~723_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~41_combout\);

-- Location: LCCOMB_X60_Y70_N24
\Mux325~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~34_combout\ = (\row[3]~input_o\ & ((\ascii_ucode[0]~input_o\) # ((!\row[0]~input_o\ & !\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux325~34_combout\);

-- Location: LCCOMB_X60_Y70_N18
\Mux325~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~35_combout\ = (\Mux332~248_combout\) # ((\Mux325~34_combout\ & (\ascii_ucode[1]~input_o\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~248_combout\,
	datab => \Mux325~34_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~35_combout\);

-- Location: LCCOMB_X60_Y70_N28
\Mux332~959\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~959_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~685_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((!\ascii_ucode[0]~input_o\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~685_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~959_combout\);

-- Location: LCCOMB_X60_Y70_N14
\Mux332~960\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~960_combout\ = (\Mux45~0_combout\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~959_combout\)) # (!\ascii_ucode[2]~input_o\ & ((!\ascii_ucode[0]~input_o\))))) # (!\Mux45~0_combout\ & (\Mux332~959_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~0_combout\,
	datab => \Mux332~959_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~960_combout\);

-- Location: LCCOMB_X60_Y70_N20
\Mux325~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~36_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux325~35_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux332~960_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~35_combout\,
	datac => \Mux332~960_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~36_combout\);

-- Location: LCCOMB_X61_Y63_N24
\Mux327~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~4_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux325~36_combout\) # (\ascii_ucode[7]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux325~41_combout\ & ((!\ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[5]~input_o\,
	datab => \Mux325~41_combout\,
	datac => \Mux325~36_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~4_combout\);

-- Location: LCCOMB_X61_Y63_N18
\Mux327~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~5_combout\ = (\Mux327~4_combout\ & ((\Mux325~44_combout\) # ((!\ascii_ucode[7]~input_o\)))) # (!\Mux327~4_combout\ & (((\Mux325~33_combout\ & \ascii_ucode[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~44_combout\,
	datab => \Mux325~33_combout\,
	datac => \Mux327~4_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux327~5_combout\);

-- Location: LCCOMB_X61_Y63_N4
\Mux327~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~6_combout\ = (\ascii_ucode[6]~input_o\ & (((\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[6]~input_o\ & ((\ascii_ucode[4]~input_o\ & (\Mux327~3_combout\)) # (!\ascii_ucode[4]~input_o\ & ((\Mux327~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[6]~input_o\,
	datab => \Mux327~3_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux327~5_combout\,
	combout => \Mux327~6_combout\);

-- Location: LCCOMB_X61_Y63_N2
\Mux327~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~9_combout\ = (\Mux327~6_combout\ & (((\Mux327~8_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux327~6_combout\ & (\Mux327~1_combout\ & ((\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~1_combout\,
	datab => \Mux327~8_combout\,
	datac => \Mux327~6_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux327~9_combout\);

-- Location: LCCOMB_X59_Y67_N0
\Mux325~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~72_combout\ = (\ascii_ucode[3]~input_o\ & (((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (\Mux51~0_combout\ & ((\Mux332~136_combout\) # (!\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~136_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux51~0_combout\,
	combout => \Mux325~72_combout\);

-- Location: LCCOMB_X59_Y67_N26
\Mux325~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~73_combout\ = (\ascii_ucode[3]~input_o\ & (\Mux319~0_combout\ & (\Mux325~72_combout\ $ (\Mux332~123_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux325~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \Mux325~72_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~123_combout\,
	combout => \Mux325~73_combout\);

-- Location: LCCOMB_X60_Y70_N22
\Mux325~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~69_combout\ = (\Mux319~0_combout\ & (!\ascii_ucode[1]~input_o\ & (\ascii_ucode[0]~input_o\ $ (!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~69_combout\);

-- Location: LCCOMB_X60_Y70_N16
\Mux325~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~70_combout\ = (\Mux325~69_combout\) # ((\ascii_ucode[2]~input_o\ & (\ascii_ucode[1]~input_o\ & \Mux332~689_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~69_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~689_combout\,
	combout => \Mux325~70_combout\);

-- Location: LCCOMB_X60_Y70_N2
\Mux325~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~71_combout\ = (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux325~70_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux332~960_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux325~70_combout\,
	datac => \Mux332~960_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~71_combout\);

-- Location: LCCOMB_X61_Y66_N6
\Mux325~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~74_combout\ = (\Mux325~71_combout\) # ((\ascii_ucode[4]~input_o\ & \Mux325~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[4]~input_o\,
	datac => \Mux325~73_combout\,
	datad => \Mux325~71_combout\,
	combout => \Mux325~74_combout\);

-- Location: LCCOMB_X59_Y63_N30
\Mux149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~0_combout\ = (\row[3]~input_o\ & (((!\row[1]~input_o\ & !\row[0]~input_o\)) # (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (\row[1]~input_o\ & ((\row[2]~input_o\) # (!\row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux149~0_combout\);

-- Location: LCCOMB_X59_Y63_N10
\Mux138~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~0_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & ((\row[1]~input_o\) # (!\row[2]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux138~0_combout\);

-- Location: LCCOMB_X59_Y63_N20
\Mux332~837\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~837_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux147~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux138~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux138~0_combout\,
	datab => \Mux147~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~837_combout\);

-- Location: LCCOMB_X59_Y63_N0
\Mux141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~0_combout\ = (\row[3]~input_o\ & ((\row[2]~input_o\ & (!\row[1]~input_o\)) # (!\row[2]~input_o\ & ((!\row[0]~input_o\))))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux141~0_combout\);

-- Location: LCCOMB_X59_Y63_N16
\Mux332~838\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~838_combout\ = (\Mux332~837_combout\ & ((\Mux149~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~837_combout\ & (((\ascii_ucode[0]~input_o\ & \Mux141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux149~0_combout\,
	datab => \Mux332~837_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux141~0_combout\,
	combout => \Mux332~838_combout\);

-- Location: LCCOMB_X62_Y69_N16
\Mux134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~0_combout\ = (\row[0]~input_o\ & (\row[2]~input_o\ & ((!\row[3]~input_o\) # (!\row[1]~input_o\)))) # (!\row[0]~input_o\ & ((\row[2]~input_o\ $ (\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux134~0_combout\);

-- Location: LCCOMB_X58_Y66_N0
\Mux332~833\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~833_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux134~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux320~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~0_combout\,
	datab => \Mux134~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~833_combout\);

-- Location: LCCOMB_X58_Y66_N24
\Mux142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = (\row[3]~input_o\ & (!\row[0]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux142~0_combout\);

-- Location: LCCOMB_X58_Y66_N2
\Mux332~834\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~834_combout\ = (\Mux332~833_combout\ & ((\Mux223~0_combout\) # ((!\ascii_ucode[2]~input_o\)))) # (!\Mux332~833_combout\ & (((\ascii_ucode[2]~input_o\ & \Mux142~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux223~0_combout\,
	datab => \Mux332~833_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux142~0_combout\,
	combout => \Mux332~834_combout\);

-- Location: LCCOMB_X62_Y61_N4
\Mux332~944\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~944_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux120~0_combout\ & !\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux316~3_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux316~3_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux120~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~944_combout\);

-- Location: LCCOMB_X62_Y61_N30
\Mux332~945\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~945_combout\ = (\Mux332~944_combout\) # ((\Mux125~0_combout\ & (\ascii_ucode[0]~input_o\ $ (!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux332~944_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~945_combout\);

-- Location: LCCOMB_X61_Y61_N6
\Mux332~835\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~835_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux147~0_combout\) # ((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux319~2_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datab => \Mux319~2_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~835_combout\);

-- Location: LCCOMB_X61_Y61_N8
\Mux332~836\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~836_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~835_combout\ & (\Mux128~0_combout\)) # (!\Mux332~835_combout\ & ((\Mux319~5_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~835_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~5_combout\,
	datad => \Mux332~835_combout\,
	combout => \Mux332~836_combout\);

-- Location: LCCOMB_X61_Y61_N2
\Mux325~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~81_combout\ = (\ascii_ucode[3]~input_o\ & (((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\Mux332~836_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~945_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~945_combout\,
	datab => \Mux332~836_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~81_combout\);

-- Location: LCCOMB_X58_Y66_N28
\Mux325~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~82_combout\ = (\Mux325~81_combout\ & ((\Mux332~838_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux325~81_combout\ & (((\Mux332~834_combout\ & \ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~838_combout\,
	datab => \Mux332~834_combout\,
	datac => \Mux325~81_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~82_combout\);

-- Location: LCCOMB_X61_Y68_N22
\Mux325~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~84_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux147~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux125~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datab => \Mux125~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux325~84_combout\);

-- Location: LCCOMB_X61_Y61_N20
\Mux332~843\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~843_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux269~0_combout\) # (\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux128~0_combout\ & ((!\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux269~0_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~843_combout\);

-- Location: LCCOMB_X61_Y68_N8
\Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\)))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux108~0_combout\);

-- Location: LCCOMB_X61_Y68_N18
\Mux108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux108~1_combout\ = (\row[3]~input_o\ & (((\row[0]~input_o\ & !\row[1]~input_o\)) # (!\row[2]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux108~1_combout\);

-- Location: LCCOMB_X61_Y68_N28
\Mux332~844\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~844_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~843_combout\ & ((\Mux108~1_combout\))) # (!\Mux332~843_combout\ & (\Mux108~0_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~843_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~843_combout\,
	datac => \Mux108~0_combout\,
	datad => \Mux108~1_combout\,
	combout => \Mux332~844_combout\);

-- Location: LCCOMB_X61_Y68_N14
\Mux325~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~85_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux325~84_combout\) # ((\ascii_ucode[2]~input_o\ & \Mux332~844_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~84_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~844_combout\,
	combout => \Mux325~85_combout\);

-- Location: LCCOMB_X63_Y60_N2
\Mux332~839\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~839_combout\ = (\ascii_ucode[0]~input_o\ & (\ascii_ucode[2]~input_o\)) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux98~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux93~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux98~0_combout\,
	datad => \Mux93~0_combout\,
	combout => \Mux332~839_combout\);

-- Location: LCCOMB_X65_Y60_N28
\Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = (\row[3]~input_o\ & (((!\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & ((\row[0]~input_o\ & (\row[2]~input_o\)) # (!\row[0]~input_o\ & ((\row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux102~0_combout\);

-- Location: LCCOMB_X65_Y60_N30
\Mux332~840\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~840_combout\ = (\Mux332~839_combout\ & ((\Mux102~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~839_combout\ & (((\Mux217~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~839_combout\,
	datab => \Mux102~0_combout\,
	datac => \Mux217~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~840_combout\);

-- Location: LCCOMB_X65_Y60_N0
\Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (!\row[2]~input_o\ & ((\row[3]~input_o\ & (\row[0]~input_o\ & !\row[1]~input_o\)) # (!\row[3]~input_o\ & ((\row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux84~0_combout\);

-- Location: LCCOMB_X65_Y60_N18
\Mux332~841\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~841_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux148~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux84~0_combout\,
	datac => \Mux148~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~841_combout\);

-- Location: LCCOMB_X65_Y60_N4
\Mux332~842\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~842_combout\ = (\Mux332~841_combout\ & ((\Mux99~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~841_combout\ & (((\Mux293~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux99~0_combout\,
	datab => \Mux332~841_combout\,
	datac => \Mux293~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~842_combout\);

-- Location: LCCOMB_X65_Y60_N6
\Mux325~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~83_combout\ = (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux332~840_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~842_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~840_combout\,
	datab => \Mux332~842_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~83_combout\);

-- Location: LCCOMB_X61_Y66_N18
\Mux325~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~86_combout\ = (\ascii_ucode[4]~input_o\ & (\Mux325~82_combout\)) # (!\ascii_ucode[4]~input_o\ & (((\Mux325~85_combout\) # (\Mux325~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~82_combout\,
	datab => \Mux325~85_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux325~83_combout\,
	combout => \Mux325~86_combout\);

-- Location: LCCOMB_X59_Y66_N10
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\row[3]~input_o\ & (!\row[1]~input_o\ & (!\row[2]~input_o\ & !\row[0]~input_o\))) # (!\row[3]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X59_Y66_N20
\Mux332~807\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~807_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux64~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux319~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux64~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datad => \Mux319~7_combout\,
	combout => \Mux332~807_combout\);

-- Location: LCCOMB_X65_Y67_N22
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & ((!\row[2]~input_o\) # (!\row[0]~input_o\))) # (!\row[1]~input_o\ & ((\row[2]~input_o\))))) # (!\row[3]~input_o\ & (((\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X58_Y66_N16
\Mux332~808\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~808_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux187~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux187~0_combout\,
	datac => \Mux58~0_combout\,
	combout => \Mux332~808_combout\);

-- Location: LCCOMB_X58_Y66_N18
\Mux332~809\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~809_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux332~807_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux332~808_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~807_combout\,
	datab => \Mux332~808_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~809_combout\);

-- Location: LCCOMB_X58_Y66_N30
\Mux332~941\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~941_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux58~0_combout\ & (!\ascii_ucode[2]~input_o\ & \ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux58~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~941_combout\);

-- Location: LCCOMB_X58_Y66_N12
\Mux332~810\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~810_combout\ = (\Mux332~809_combout\) # ((\Mux332~941_combout\) # ((!\ascii_ucode[1]~input_o\ & \Mux332~484_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~809_combout\,
	datac => \Mux332~941_combout\,
	datad => \Mux332~484_combout\,
	combout => \Mux332~810_combout\);

-- Location: LCCOMB_X60_Y70_N12
\Mux332~811\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~811_combout\ = (\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\ $ (((\row[0]~input_o\ & \ascii_ucode[1]~input_o\))))) # (!\ascii_ucode[2]~input_o\ & (((\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~811_combout\);

-- Location: LCCOMB_X60_Y70_N30
\Mux332~812\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~812_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~811_combout\)))) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~811_combout\ & (\Mux332~689_combout\)) # (!\Mux332~811_combout\ & ((\Mux319~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~689_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux319~0_combout\,
	datad => \Mux332~811_combout\,
	combout => \Mux332~812_combout\);

-- Location: LCCOMB_X60_Y70_N8
\Mux332~813\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~813_combout\ = (\ascii_ucode[0]~input_o\ & !\ascii_ucode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	combout => \Mux332~813_combout\);

-- Location: LCCOMB_X60_Y70_N26
\Mux332~814\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~814_combout\ = (\ascii_ucode[2]~input_o\ & (((!\Mux332~813_combout\ & \Mux51~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~685_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~685_combout\,
	datab => \Mux332~813_combout\,
	datac => \Mux51~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~814_combout\);

-- Location: LCCOMB_X58_Y66_N14
\Mux325~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~75_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~812_combout\) # ((\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~814_combout\ & !\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~812_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux332~814_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~75_combout\);

-- Location: LCCOMB_X58_Y66_N26
\Mux332~816\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~816_combout\ = (\Mux142~0_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux142~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~816_combout\);

-- Location: LCCOMB_X58_Y63_N2
\Mux332~815\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~815_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux128~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux67~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux67~0_combout\,
	combout => \Mux332~815_combout\);

-- Location: LCCOMB_X58_Y66_N4
\Mux332~817\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~817_combout\ = (\Mux332~815_combout\ & ((\Mux332~816_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~815_combout\ & (((\ascii_ucode[1]~input_o\ & \Mux332~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~816_combout\,
	datab => \Mux332~815_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~365_combout\,
	combout => \Mux332~817_combout\);

-- Location: LCCOMB_X58_Y66_N22
\Mux325~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~76_combout\ = (\Mux325~75_combout\ & (((\Mux332~817_combout\) # (!\ascii_ucode[4]~input_o\)))) # (!\Mux325~75_combout\ & (\Mux332~810_combout\ & ((\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~810_combout\,
	datab => \Mux325~75_combout\,
	datac => \Mux332~817_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~76_combout\);

-- Location: LCCOMB_X65_Y63_N28
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\)))) # (!\row[3]~input_o\ & ((\row[2]~input_o\) # ((\row[0]~input_o\ & \row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X65_Y63_N30
\Mux332~826\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~826_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux36~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux316~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux36~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux316~0_combout\,
	combout => \Mux332~826_combout\);

-- Location: LCCOMB_X63_Y63_N16
\Mux332~827\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~827_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~826_combout\ & ((\Mux217~0_combout\))) # (!\Mux332~826_combout\ & (\Mux106~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~826_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~0_combout\,
	datab => \Mux217~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~826_combout\,
	combout => \Mux332~827_combout\);

-- Location: LCCOMB_X66_Y65_N28
\Mux332~942\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~942_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux269~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux305~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux269~0_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux305~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux269~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~942_combout\);

-- Location: LCCOMB_X66_Y65_N6
\Mux332~943\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~943_combout\ = (\Mux332~942_combout\) # ((\ascii_ucode[0]~input_o\ & (!\Mux221~0_combout\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~942_combout\,
	datac => \Mux221~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~943_combout\);

-- Location: LCCOMB_X62_Y62_N24
\Mux332~828\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~828_combout\ = (\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\)) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux31~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux223~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux223~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~828_combout\);

-- Location: LCCOMB_X62_Y62_N2
\Mux332~829\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~829_combout\ = (\Mux332~828_combout\ & (((\Mux34~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~828_combout\ & (\Mux241~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux241~0_combout\,
	datab => \Mux332~828_combout\,
	datac => \Mux34~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~829_combout\);

-- Location: LCCOMB_X63_Y63_N18
\Mux325~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~78_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~829_combout\) # (\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~943_combout\ & ((!\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~943_combout\,
	datab => \Mux332~829_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~78_combout\);

-- Location: LCCOMB_X67_Y62_N26
\Mux332~831\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~831_combout\ = (\ascii_ucode[2]~input_o\ & ((\row[3]~input_o\ & ((!\row[2]~input_o\))) # (!\row[3]~input_o\ & ((\row[1]~input_o\) # (\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~831_combout\);

-- Location: LCCOMB_X67_Y62_N8
\Mux332~830\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~830_combout\ = (!\ascii_ucode[2]~input_o\ & \Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux38~0_combout\,
	combout => \Mux332~830_combout\);

-- Location: LCCOMB_X67_Y62_N20
\Mux332~832\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~832_combout\ = (\Mux332~930_combout\) # ((\Mux332~140_combout\ & ((\Mux332~831_combout\) # (\Mux332~830_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~831_combout\,
	datab => \Mux332~830_combout\,
	datac => \Mux332~930_combout\,
	datad => \Mux332~140_combout\,
	combout => \Mux332~832_combout\);

-- Location: LCCOMB_X63_Y63_N28
\Mux325~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~79_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux325~78_combout\ & ((\Mux332~832_combout\))) # (!\Mux325~78_combout\ & (\Mux332~827_combout\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux325~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~827_combout\,
	datac => \Mux325~78_combout\,
	datad => \Mux332~832_combout\,
	combout => \Mux325~79_combout\);

-- Location: LCCOMB_X62_Y68_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\row[3]~input_o\ & ((\row[0]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\))) # (!\row[0]~input_o\ & (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X62_Y68_N12
\Mux332~822\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~822_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux5~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux332~822_combout\);

-- Location: LCCOMB_X66_Y64_N30
\Mux332~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~376_combout\ = (\Mux241~0_combout\ & \ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux241~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~376_combout\);

-- Location: LCCOMB_X66_Y64_N8
\Mux332~823\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~823_combout\ = (\Mux6~0_combout\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux6~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~823_combout\);

-- Location: LCCOMB_X66_Y64_N10
\Mux332~824\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~824_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux332~823_combout\) # (\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~376_combout\ & ((!\ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~376_combout\,
	datab => \Mux332~823_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~824_combout\);

-- Location: LCCOMB_X66_Y64_N12
\Mux332~825\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~825_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~824_combout\ & (\Mux332~309_combout\)) # (!\Mux332~824_combout\ & ((\Mux332~822_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~824_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~309_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~822_combout\,
	datad => \Mux332~824_combout\,
	combout => \Mux332~825_combout\);

-- Location: LCCOMB_X63_Y65_N6
\Mux332~818\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~818_combout\ = (!\ascii_ucode[0]~input_o\ & (!\row[3]~input_o\ & \row[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~818_combout\);

-- Location: LCCOMB_X63_Y63_N24
\Mux332~819\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~819_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~3_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux184~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \Mux184~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~819_combout\);

-- Location: LCCOMB_X63_Y63_N2
\Mux332~820\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~820_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[1]~input_o\) # (\Mux332~819_combout\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~372_combout\ & (!\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux332~372_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~819_combout\,
	combout => \Mux332~820_combout\);

-- Location: LCCOMB_X63_Y63_N12
\Mux332~821\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~821_combout\ = (\Mux332~820_combout\ & (((\Mux332~257_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\Mux332~820_combout\ & (\Mux332~818_combout\ & (\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~818_combout\,
	datab => \Mux332~820_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~257_combout\,
	combout => \Mux332~821_combout\);

-- Location: LCCOMB_X63_Y63_N22
\Mux325~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~77_combout\ = (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~821_combout\))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~825_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~825_combout\,
	datac => \Mux332~821_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~77_combout\);

-- Location: LCCOMB_X63_Y63_N6
\Mux325~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~80_combout\ = (\Mux325~77_combout\) # ((\Mux325~79_combout\ & \ascii_ucode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~79_combout\,
	datac => \Mux325~77_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~80_combout\);

-- Location: LCCOMB_X61_Y66_N0
\Mux326~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~2_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & (\Mux325~76_combout\)) # (!\ascii_ucode[6]~input_o\ & ((\Mux325~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~76_combout\,
	datab => \Mux325~80_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux326~2_combout\);

-- Location: LCCOMB_X61_Y66_N12
\Mux326~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~3_combout\ = (\ascii_ucode[5]~input_o\ & ((\Mux326~2_combout\ & ((\Mux325~86_combout\))) # (!\Mux326~2_combout\ & (\Mux325~74_combout\)))) # (!\ascii_ucode[5]~input_o\ & (((\Mux326~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~74_combout\,
	datab => \Mux325~86_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux326~2_combout\,
	combout => \Mux326~3_combout\);

-- Location: LCCOMB_X62_Y66_N30
\Mux332~938\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~938_combout\ = (\Mux332~161_combout\) # ((\Mux274~0_combout\ & (!\ascii_ucode[0]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux274~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~161_combout\,
	combout => \Mux332~938_combout\);

-- Location: LCCOMB_X62_Y66_N0
\Mux325~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~55_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~903_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~938_combout\ & !\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~903_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~938_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~55_combout\);

-- Location: LCCOMB_X62_Y67_N10
\Mux332~758\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~758_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux269~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux319~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~9_combout\,
	datac => \Mux269~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~758_combout\);

-- Location: LCCOMB_X65_Y67_N20
\Mux332~759\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~759_combout\ = (\Mux332~758_combout\ & (((\Mux270~0_combout\) # (!\ascii_ucode[0]~input_o\)))) # (!\Mux332~758_combout\ & (\Mux256~0_combout\ & ((\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux256~0_combout\,
	datab => \Mux270~0_combout\,
	datac => \Mux332~758_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~759_combout\);

-- Location: LCCOMB_X65_Y68_N24
\Mux263~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux263~0_combout\ = (\row[2]~input_o\ & (((!\row[1]~input_o\)))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux263~0_combout\);

-- Location: LCCOMB_X62_Y66_N18
\Mux332~760\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~760_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux263~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux260~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux263~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux260~0_combout\,
	combout => \Mux332~760_combout\);

-- Location: LCCOMB_X62_Y66_N4
\Mux325~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~56_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux325~55_combout\ & ((\Mux332~760_combout\))) # (!\Mux325~55_combout\ & (\Mux332~759_combout\)))) # (!\ascii_ucode[3]~input_o\ & (\Mux325~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux325~55_combout\,
	datac => \Mux332~759_combout\,
	datad => \Mux332~760_combout\,
	combout => \Mux325~56_combout\);

-- Location: LCCOMB_X66_Y68_N4
\Mux325~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~57_combout\ = (\Mux332~251_combout\ & ((\ascii_ucode[0]~input_o\ & (\Mux232~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux229~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux232~0_combout\,
	datac => \Mux229~0_combout\,
	datad => \Mux332~251_combout\,
	combout => \Mux325~57_combout\);

-- Location: LCCOMB_X65_Y68_N2
\Mux325~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~58_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~191_combout\) # ((\Mux235~0_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux235~0_combout\,
	datab => \Mux332~191_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux325~58_combout\);

-- Location: LCCOMB_X66_Y68_N22
\Mux325~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~59_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux325~58_combout\) # ((\Mux332~255_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~58_combout\,
	datab => \Mux332~255_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~59_combout\);

-- Location: LCCOMB_X66_Y68_N24
\Mux325~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~60_combout\ = (!\ascii_ucode[3]~input_o\ & ((\Mux325~57_combout\) # (\Mux325~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~57_combout\,
	datac => \Mux325~59_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~60_combout\);

-- Location: LCCOMB_X62_Y61_N18
\Mux332~763\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~763_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux269~0_combout\) # (\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux316~3_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux316~3_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux269~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~763_combout\);

-- Location: LCCOMB_X65_Y64_N2
\Mux251~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux251~0_combout\ = ((\row[3]~input_o\ & \row[1]~input_o\)) # (!\row[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	combout => \Mux251~0_combout\);

-- Location: LCCOMB_X65_Y64_N28
\Mux332~764\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~764_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~763_combout\ & ((!\Mux251~0_combout\))) # (!\Mux332~763_combout\ & (\Mux232~1_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~763_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux232~1_combout\,
	datac => \Mux332~763_combout\,
	datad => \Mux251~0_combout\,
	combout => \Mux332~764_combout\);

-- Location: LCCOMB_X65_Y68_N4
\Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux111~0_combout\ = (\row[3]~input_o\ & (\row[0]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\))) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux111~0_combout\);

-- Location: LCCOMB_X65_Y68_N22
\Mux332~761\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~761_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux111~0_combout\) # (\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (\Mux263~0_combout\ & ((!\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux263~0_combout\,
	datac => \Mux111~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~761_combout\);

-- Location: LCCOMB_X65_Y64_N24
\Mux332~762\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~762_combout\ = (\Mux332~761_combout\ & ((\Mux217~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~761_combout\ & (((\Mux245~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux332~761_combout\,
	datac => \Mux245~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~762_combout\);

-- Location: LCCOMB_X65_Y64_N14
\Mux325~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~61_combout\ = (\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\Mux332~762_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~764_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~764_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~762_combout\,
	combout => \Mux325~61_combout\);

-- Location: LCCOMB_X61_Y66_N10
\Mux325~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~62_combout\ = (\ascii_ucode[4]~input_o\ & (\Mux325~56_combout\)) # (!\ascii_ucode[4]~input_o\ & (((\Mux325~60_combout\) # (\Mux325~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~56_combout\,
	datab => \Mux325~60_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux325~61_combout\,
	combout => \Mux325~62_combout\);

-- Location: LCCOMB_X61_Y64_N16
\Mux182~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux182~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ $ (((\row[2]~input_o\) # (\row[1]~input_o\))))) # (!\row[0]~input_o\ & ((\row[3]~input_o\ & (!\row[2]~input_o\)) # (!\row[3]~input_o\ & ((\row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux182~0_combout\);

-- Location: LCCOMB_X61_Y64_N2
\Mux332~789\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~789_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux51~0_combout\) # ((\Mux10~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux182~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux51~0_combout\,
	datac => \Mux182~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux332~789_combout\);

-- Location: LCCOMB_X67_Y64_N8
\Mux332~790\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~790_combout\ = (!\ascii_ucode[0]~input_o\ & ((\Mux332~335_combout\ & ((\Mux223~0_combout\))) # (!\Mux332~335_combout\ & (\Mux332~789_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~789_combout\,
	datab => \Mux223~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~335_combout\,
	combout => \Mux332~790_combout\);

-- Location: LCCOMB_X67_Y64_N2
\Mux332~791\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~791_combout\ = (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux217~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux269~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux269~0_combout\,
	datab => \Mux217~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~791_combout\);

-- Location: LCCOMB_X67_Y64_N28
\Mux332~792\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~792_combout\ = (\Mux332~791_combout\) # ((\Mux116~0_combout\ & (\ascii_ucode[1]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux116~0_combout\,
	datab => \Mux332~791_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~792_combout\);

-- Location: LCCOMB_X67_Y64_N6
\Mux332~793\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~793_combout\ = (\Mux332~790_combout\) # ((\ascii_ucode[0]~input_o\ & \Mux332~792_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux332~790_combout\,
	datad => \Mux332~792_combout\,
	combout => \Mux332~793_combout\);

-- Location: LCCOMB_X63_Y61_N0
\Mux332~940\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~940_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux168~0_combout\ & (!\ascii_ucode[0]~input_o\))) # (!\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\ & \Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux332~940_combout\);

-- Location: LCCOMB_X68_Y62_N8
\Mux332~782\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~782_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux165~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux223~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux223~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux165~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~782_combout\);

-- Location: LCCOMB_X68_Y62_N26
\Mux332~783\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~783_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~782_combout\ & (\Mux174~0_combout\)) # (!\Mux332~782_combout\ & ((\Mux319~6_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~782_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux174~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux332~782_combout\,
	datad => \Mux319~6_combout\,
	combout => \Mux332~783_combout\);

-- Location: LCCOMB_X66_Y62_N10
\Mux332~784\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~784_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~783_combout\)))) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~940_combout\) # ((\Mux332~930_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~940_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~930_combout\,
	datad => \Mux332~783_combout\,
	combout => \Mux332~784_combout\);

-- Location: LCCOMB_X66_Y62_N12
\Mux332~785\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~785_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux159~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~7_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux159~0_combout\,
	combout => \Mux332~785_combout\);

-- Location: LCCOMB_X66_Y66_N28
\Mux332~786\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~786_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~785_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~331_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~785_combout\,
	combout => \Mux332~786_combout\);

-- Location: LCCOMB_X68_Y64_N20
\Mux162~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux162~0_combout\ = (\row[3]~input_o\ & (!\row[2]~input_o\ & ((!\row[1]~input_o\) # (!\row[0]~input_o\)))) # (!\row[3]~input_o\ & ((\row[0]~input_o\ & ((\row[2]~input_o\))) # (!\row[0]~input_o\ & (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux162~0_combout\);

-- Location: LCCOMB_X68_Y64_N14
\Mux332~787\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~787_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux158~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux162~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux162~0_combout\,
	datac => \Mux158~0_combout\,
	combout => \Mux332~787_combout\);

-- Location: LCCOMB_X69_Y66_N16
\Mux332~788\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~788_combout\ = (\Mux332~786_combout\ & (((\Mux332~787_combout\)) # (!\ascii_ucode[1]~input_o\))) # (!\Mux332~786_combout\ & (\ascii_ucode[1]~input_o\ & (\Mux332~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~786_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~220_combout\,
	datad => \Mux332~787_combout\,
	combout => \Mux332~788_combout\);

-- Location: LCCOMB_X69_Y66_N18
\Mux325~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~65_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~784_combout\) # ((\ascii_ucode[4]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & (((\Mux332~788_combout\ & !\ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~784_combout\,
	datab => \Mux332~788_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~65_combout\);

-- Location: LCCOMB_X68_Y64_N10
\Mux178~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux178~0_combout\ = (!\row[3]~input_o\ & ((\row[0]~input_o\ & (\row[1]~input_o\ & !\row[2]~input_o\)) # (!\row[0]~input_o\ & (!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux178~0_combout\);

-- Location: LCCOMB_X69_Y66_N26
\Mux332~779\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~779_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux178~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux217~0_combout\,
	datad => \Mux178~0_combout\,
	combout => \Mux332~779_combout\);

-- Location: LCCOMB_X69_Y66_N4
\Mux332~780\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~780_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~779_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux223~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux223~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~779_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~780_combout\);

-- Location: LCCOMB_X69_Y66_N14
\Mux332~781\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~781_combout\ = (\Mux332~780_combout\ & ((\Mux332~191_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~780_combout\ & (((\Mux332~207_combout\ & \ascii_ucode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~191_combout\,
	datab => \Mux332~207_combout\,
	datac => \Mux332~780_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~781_combout\);

-- Location: LCCOMB_X69_Y66_N28
\Mux325~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~66_combout\ = (\Mux325~65_combout\ & ((\Mux332~793_combout\) # ((!\ascii_ucode[4]~input_o\)))) # (!\Mux325~65_combout\ & (((\Mux332~781_combout\ & \ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~793_combout\,
	datab => \Mux325~65_combout\,
	datac => \Mux332~781_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~66_combout\);

-- Location: LCCOMB_X69_Y66_N12
\Mux332~776\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~776_combout\ = (!\ascii_ucode[1]~input_o\ & \Mux323~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[1]~input_o\,
	datad => \Mux323~0_combout\,
	combout => \Mux332~776_combout\);

-- Location: LCCOMB_X66_Y64_N6
\Mux332~777\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~777_combout\ = (\ascii_ucode[1]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux269~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux269~0_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux332~777_combout\);

-- Location: LCCOMB_X69_Y66_N10
\Mux332~775\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~775_combout\ = (\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\))) # (!\ascii_ucode[1]~input_o\ & (!\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~775_combout\);

-- Location: LCCOMB_X69_Y66_N22
\Mux332~778\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~778_combout\ = (\Mux332~775_combout\ & ((\Mux332~776_combout\) # ((\Mux332~777_combout\)))) # (!\Mux332~775_combout\ & (((\Mux217~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~776_combout\,
	datab => \Mux332~777_combout\,
	datac => \Mux217~0_combout\,
	datad => \Mux332~775_combout\,
	combout => \Mux332~778_combout\);

-- Location: LCCOMB_X68_Y66_N26
\Mux332~765\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~765_combout\ = (\ascii_ucode[1]~input_o\ & (\ascii_ucode[2]~input_o\)) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~437_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux332~313_combout\,
	datad => \Mux332~437_combout\,
	combout => \Mux332~765_combout\);

-- Location: LCCOMB_X68_Y66_N28
\Mux332~766\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~766_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux217~0_combout\ & ((\ascii_ucode[0]~input_o\) # (!\Mux332~765_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~765_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux217~0_combout\,
	datac => \Mux332~765_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~766_combout\);

-- Location: LCCOMB_X63_Y68_N26
\Mux332~769\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~769_combout\ = (\row[3]~input_o\ & (((!\row[2]~input_o\) # (!\row[1]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & ((\row[1]~input_o\) # (!\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~769_combout\);

-- Location: LCCOMB_X63_Y68_N14
\Mux206~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux206~0_combout\ = (\row[1]~input_o\ & ((\row[3]~input_o\ & ((!\row[2]~input_o\))) # (!\row[3]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\)))) # (!\row[1]~input_o\ & (((\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux206~0_combout\);

-- Location: LCCOMB_X63_Y68_N0
\Mux332~768\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~768_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux206~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux206~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~768_combout\);

-- Location: LCCOMB_X63_Y68_N4
\Mux332~770\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~770_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\) # ((\Mux332~768_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[1]~input_o\ & (\Mux332~769_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~769_combout\,
	datad => \Mux332~768_combout\,
	combout => \Mux332~770_combout\);

-- Location: LCCOMB_X63_Y68_N12
\Mux332~767\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~767_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux229~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datad => \Mux229~0_combout\,
	combout => \Mux332~767_combout\);

-- Location: LCCOMB_X63_Y68_N6
\Mux332~771\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~771_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~770_combout\ & (\Mux332~298_combout\)) # (!\Mux332~770_combout\ & ((\Mux332~767_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~770_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~298_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~770_combout\,
	datad => \Mux332~767_combout\,
	combout => \Mux332~771_combout\);

-- Location: LCCOMB_X66_Y64_N2
\Mux332~772\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~772_combout\ = (!\ascii_ucode[1]~input_o\ & ((\Mux332~318_combout\) # ((!\Mux251~0_combout\ & \Mux332~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux251~0_combout\,
	datab => \Mux332~318_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~123_combout\,
	combout => \Mux332~772_combout\);

-- Location: LCCOMB_X68_Y65_N28
\Mux332~939\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~939_combout\ = (!\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\ & \Mux196~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux196~0_combout\,
	combout => \Mux332~939_combout\);

-- Location: LCCOMB_X67_Y66_N30
\Mux332~773\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~773_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux200~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux198~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux198~0_combout\,
	datab => \Mux200~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~773_combout\);

-- Location: LCCOMB_X66_Y64_N20
\Mux332~774\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~774_combout\ = (\Mux332~772_combout\) # ((\ascii_ucode[1]~input_o\ & ((\Mux332~939_combout\) # (\Mux332~773_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~772_combout\,
	datac => \Mux332~939_combout\,
	datad => \Mux332~773_combout\,
	combout => \Mux332~774_combout\);

-- Location: LCCOMB_X66_Y68_N2
\Mux325~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~63_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux332~771_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux332~774_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~771_combout\,
	datab => \Mux332~774_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~63_combout\);

-- Location: LCCOMB_X69_Y66_N24
\Mux325~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~64_combout\ = (\Mux325~63_combout\ & ((\Mux332~778_combout\) # ((!\ascii_ucode[4]~input_o\)))) # (!\Mux325~63_combout\ & (((\Mux332~766_combout\ & \ascii_ucode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~778_combout\,
	datab => \Mux332~766_combout\,
	datac => \Mux325~63_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~64_combout\);

-- Location: LCCOMB_X69_Y66_N30
\Mux326~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~0_combout\ = (\ascii_ucode[6]~input_o\ & (((\ascii_ucode[5]~input_o\)))) # (!\ascii_ucode[6]~input_o\ & ((\ascii_ucode[5]~input_o\ & ((\Mux325~64_combout\))) # (!\ascii_ucode[5]~input_o\ & (\Mux325~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[6]~input_o\,
	datab => \Mux325~66_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux325~64_combout\,
	combout => \Mux326~0_combout\);

-- Location: LCCOMB_X65_Y61_N20
\Mux332~794\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~794_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux116~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux294~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux116~0_combout\,
	datac => \Mux294~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~794_combout\);

-- Location: LCCOMB_X65_Y61_N22
\Mux332~795\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~795_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~794_combout\ & ((\Mux275~0_combout\))) # (!\Mux332~794_combout\ & (\Mux297~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~794_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux297~0_combout\,
	datac => \Mux275~0_combout\,
	datad => \Mux332~794_combout\,
	combout => \Mux332~795_combout\);

-- Location: LCCOMB_X65_Y66_N0
\Mux332~796\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~796_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux302~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux301~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux302~0_combout\,
	datab => \Mux301~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~796_combout\);

-- Location: LCCOMB_X65_Y66_N26
\Mux332~797\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~797_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~224_combout\) # ((\Mux332~796_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~795_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~224_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~795_combout\,
	datad => \Mux332~796_combout\,
	combout => \Mux332~797_combout\);

-- Location: LCCOMB_X67_Y65_N2
\Mux332~805\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~805_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux332~189_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux332~218_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~189_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~218_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~805_combout\);

-- Location: LCCOMB_X66_Y66_N14
\Mux332~806\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~806_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~805_combout\ & (\Mux332~220_combout\)) # (!\Mux332~805_combout\ & ((\Mux317~0_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~805_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~220_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux317~0_combout\,
	datad => \Mux332~805_combout\,
	combout => \Mux332~806_combout\);

-- Location: LCCOMB_X62_Y64_N26
\Mux332~802\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~802_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~216_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~348_combout\,
	datab => \Mux332~216_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~802_combout\);

-- Location: LCCOMB_X60_Y64_N6
\Mux332~803\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~803_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~9_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~9_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~10_combout\,
	combout => \Mux332~803_combout\);

-- Location: LCCOMB_X62_Y64_N0
\Mux332~801\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~801_combout\ = (\ascii_ucode[0]~input_o\ & ((!\Mux275~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux317~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux317~0_combout\,
	datad => \Mux275~0_combout\,
	combout => \Mux332~801_combout\);

-- Location: LCCOMB_X62_Y64_N12
\Mux332~804\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~804_combout\ = (\Mux332~802_combout\ & ((\Mux332~803_combout\) # ((!\ascii_ucode[1]~input_o\)))) # (!\Mux332~802_combout\ & (((\ascii_ucode[1]~input_o\ & \Mux332~801_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~802_combout\,
	datab => \Mux332~803_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~801_combout\,
	combout => \Mux332~804_combout\);

-- Location: LCCOMB_X65_Y62_N0
\Mux281~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux281~0_combout\ = (\row[0]~input_o\ & (\row[3]~input_o\ $ ((\row[1]~input_o\)))) # (!\row[0]~input_o\ & ((\row[3]~input_o\) # ((!\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux281~0_combout\);

-- Location: LCCOMB_X65_Y62_N10
\Mux332~798\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~798_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux319~7_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux281~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux281~0_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~798_combout\);

-- Location: LCCOMB_X65_Y62_N4
\Mux332~799\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~799_combout\ = (\Mux332~798_combout\ & ((\Mux203~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~798_combout\ & (((\ascii_ucode[0]~input_o\ & \Mux287~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~798_combout\,
	datab => \Mux203~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux287~0_combout\,
	combout => \Mux332~799_combout\);

-- Location: LCCOMB_X65_Y66_N20
\Mux332~800\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~800_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux332~799_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~799_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~226_combout\,
	combout => \Mux332~800_combout\);

-- Location: LCCOMB_X65_Y66_N6
\Mux325~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~67_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~800_combout\))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~804_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~804_combout\,
	datab => \Mux332~800_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~67_combout\);

-- Location: LCCOMB_X65_Y66_N16
\Mux325~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~68_combout\ = (\ascii_ucode[4]~input_o\ & ((\Mux325~67_combout\ & ((\Mux332~806_combout\))) # (!\Mux325~67_combout\ & (\Mux332~797_combout\)))) # (!\ascii_ucode[4]~input_o\ & (((\Mux325~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~797_combout\,
	datab => \Mux332~806_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux325~67_combout\,
	combout => \Mux325~68_combout\);

-- Location: LCCOMB_X61_Y66_N20
\Mux326~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~1_combout\ = (\Mux326~0_combout\ & (((\Mux325~68_combout\) # (!\ascii_ucode[6]~input_o\)))) # (!\Mux326~0_combout\ & (\Mux325~62_combout\ & ((\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~62_combout\,
	datab => \Mux326~0_combout\,
	datac => \Mux325~68_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux326~1_combout\);

-- Location: LCCOMB_X61_Y66_N14
\Mux326~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~4_combout\ = (\ascii_ucode[7]~input_o\ & ((\Mux326~1_combout\))) # (!\ascii_ucode[7]~input_o\ & (\Mux326~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~3_combout\,
	datab => \Mux326~1_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux326~4_combout\);

-- Location: LCCOMB_X57_Y63_N2
\Mux332~886\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~886_combout\ = (!\ascii_ucode[0]~input_o\ & ((\row[2]~input_o\ & ((!\row[3]~input_o\) # (!\row[0]~input_o\))) # (!\row[2]~input_o\ & ((\row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[0]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux332~886_combout\);

-- Location: LCCOMB_X57_Y63_N4
\Mux332~887\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~887_combout\ = (\Mux332~886_combout\) # ((\Mux77~0_combout\ & \ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux77~0_combout\,
	datab => \Mux332~886_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~887_combout\);

-- Location: LCCOMB_X63_Y66_N0
\Mux332~873\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~873_combout\ = (!\ascii_ucode[1]~input_o\ & !\ascii_ucode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~873_combout\);

-- Location: LCCOMB_X67_Y66_N12
\Mux332~884\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~884_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux216~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux187~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux187~0_combout\,
	combout => \Mux332~884_combout\);

-- Location: LCCOMB_X63_Y66_N4
\Mux332~885\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~885_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux332~884_combout\) # ((\Mux165~0_combout\ & \Mux332~873_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux165~0_combout\,
	datab => \Mux332~873_combout\,
	datac => \Mux332~884_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~885_combout\);

-- Location: LCCOMB_X57_Y63_N14
\Mux332~888\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~888_combout\ = (\Mux332~885_combout\) # ((\ascii_ucode[1]~input_o\ & (\Mux332~887_combout\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~887_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~885_combout\,
	combout => \Mux332~888_combout\);

-- Location: LCCOMB_X58_Y65_N12
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\row[2]~input_o\ & ((\row[0]~input_o\ & ((!\row[1]~input_o\))) # (!\row[0]~input_o\ & ((\row[3]~input_o\) # (\row[1]~input_o\))))) # (!\row[2]~input_o\ & (\row[3]~input_o\ & ((\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X58_Y65_N16
\Mux332~881\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~881_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux216~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~881_combout\);

-- Location: LCCOMB_X58_Y65_N22
\Mux332~880\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~880_combout\ = (\Mux187~0_combout\ & (\ascii_ucode[2]~input_o\ & !\ascii_ucode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux187~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~880_combout\);

-- Location: LCCOMB_X60_Y68_N14
\Mux332~878\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~878_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux319~0_combout\) # ((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (((\Mux268~0_combout\ & !\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux268~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~878_combout\);

-- Location: LCCOMB_X59_Y65_N22
\Mux332~879\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~879_combout\ = (\Mux332~878_combout\ & (((\Mux319~7_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~878_combout\ & (\Mux57~0_combout\ & ((\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \Mux332~878_combout\,
	datac => \Mux319~7_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~879_combout\);

-- Location: LCCOMB_X58_Y65_N2
\Mux332~882\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~882_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~881_combout\) # ((\Mux332~880_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~879_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~881_combout\,
	datac => \Mux332~880_combout\,
	datad => \Mux332~879_combout\,
	combout => \Mux332~882_combout\);

-- Location: LCCOMB_X61_Y67_N22
\Mux332~952\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~952_combout\ = (\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\ & ((\row[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux319~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~0_combout\,
	datac => \row[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~952_combout\);

-- Location: LCCOMB_X60_Y67_N16
\Mux332~883\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~883_combout\ = (\Mux332~690_combout\) # ((!\ascii_ucode[1]~input_o\ & \Mux332~952_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~690_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~952_combout\,
	combout => \Mux332~883_combout\);

-- Location: LCCOMB_X60_Y66_N28
\Mux325~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~111_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~883_combout\))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~814_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[4]~input_o\,
	datab => \Mux332~814_combout\,
	datac => \Mux332~883_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~111_combout\);

-- Location: LCCOMB_X61_Y66_N30
\Mux325~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~112_combout\ = (\ascii_ucode[4]~input_o\ & ((\Mux325~111_combout\ & (\Mux332~888_combout\)) # (!\Mux325~111_combout\ & ((\Mux332~882_combout\))))) # (!\ascii_ucode[4]~input_o\ & (((\Mux325~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~888_combout\,
	datab => \Mux332~882_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux325~111_combout\,
	combout => \Mux325~112_combout\);

-- Location: LCCOMB_X59_Y66_N14
\Mux332~955\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~955_combout\ = (\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\ & \Mux37~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux41~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux332~955_combout\);

-- Location: LCCOMB_X60_Y66_N10
\Mux332~956\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~956_combout\ = (\Mux332~955_combout\) # ((\Mux187~0_combout\ & (\ascii_ucode[0]~input_o\ $ (!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~955_combout\,
	datab => \Mux187~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~956_combout\);

-- Location: LCCOMB_X58_Y63_N4
\Mux332~954\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~954_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux29~0_combout\ & (\ascii_ucode[2]~input_o\))) # (!\ascii_ucode[0]~input_o\ & (((!\ascii_ucode[2]~input_o\ & \Mux106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux29~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux106~0_combout\,
	combout => \Mux332~954_combout\);

-- Location: LCCOMB_X62_Y64_N22
\Mux332~891\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~891_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux31~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux20~0_combout\,
	combout => \Mux332~891_combout\);

-- Location: LCCOMB_X62_Y64_N14
\Mux332~953\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~953_combout\ = (\Mux332~891_combout\) # ((\Mux317~0_combout\ & (\ascii_ucode[0]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux317~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~891_combout\,
	combout => \Mux332~953_combout\);

-- Location: LCCOMB_X62_Y64_N8
\Mux325~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~113_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~953_combout\) # (\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~954_combout\ & ((!\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~954_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~953_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~113_combout\);

-- Location: LCCOMB_X60_Y64_N0
\Mux332~889\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~889_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\) # ((\Mux319~9_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[0]~input_o\ & ((\Mux319~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux319~9_combout\,
	datad => \Mux319~6_combout\,
	combout => \Mux332~889_combout\);

-- Location: LCCOMB_X60_Y64_N26
\Mux332~890\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~890_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~889_combout\ & (\Mux217~0_combout\)) # (!\Mux332~889_combout\ & ((\Mux319~12_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux332~889_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datab => \Mux319~12_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux332~889_combout\,
	combout => \Mux332~890_combout\);

-- Location: LCCOMB_X60_Y66_N22
\Mux325~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~114_combout\ = (\Mux325~113_combout\ & ((\Mux332~956_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux325~113_combout\ & (((\Mux332~890_combout\ & \ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~956_combout\,
	datab => \Mux325~113_combout\,
	datac => \Mux332~890_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~114_combout\);

-- Location: LCCOMB_X62_Y68_N22
\Mux325~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~118_combout\ = (\ascii_ucode[1]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux319~2_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux319~2_combout\,
	combout => \Mux325~118_combout\);

-- Location: LCCOMB_X60_Y66_N4
\Mux325~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~134_combout\ = (\Mux325~118_combout\) # ((\Mux319~0_combout\ & (!\ascii_ucode[0]~input_o\ & !\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \Mux325~118_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~134_combout\);

-- Location: LCCOMB_X60_Y66_N0
\Mux325~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~115_combout\ = (\Mux332~136_combout\ & ((\ascii_ucode[1]~input_o\ & (\Mux216~0_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux216~0_combout\,
	datac => \Mux332~136_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux325~115_combout\);

-- Location: LCCOMB_X60_Y66_N26
\Mux325~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~116_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux18~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~3_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux18~0_combout\,
	combout => \Mux325~116_combout\);

-- Location: LCCOMB_X60_Y66_N12
\Mux325~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~117_combout\ = (\Mux325~115_combout\) # ((\ascii_ucode[1]~input_o\ & (\Mux325~116_combout\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux325~115_combout\,
	datac => \Mux325~116_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~117_combout\);

-- Location: LCCOMB_X60_Y66_N30
\Mux325~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~119_combout\ = (\ascii_ucode[3]~input_o\ & (((\Mux325~117_combout\)))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~335_combout\ & (\Mux325~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~335_combout\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux325~134_combout\,
	datad => \Mux325~117_combout\,
	combout => \Mux325~119_combout\);

-- Location: LCCOMB_X60_Y66_N24
\Mux325~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~120_combout\ = (\ascii_ucode[4]~input_o\ & (\Mux325~114_combout\)) # (!\ascii_ucode[4]~input_o\ & ((\Mux325~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~114_combout\,
	datac => \Mux325~119_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~120_combout\);

-- Location: LCCOMB_X61_Y66_N8
\Mux325~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~121_combout\ = (\ascii_ucode[5]~input_o\ & (((\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & ((\ascii_ucode[6]~input_o\ & (\Mux325~112_combout\)) # (!\ascii_ucode[6]~input_o\ & ((\Mux325~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~112_combout\,
	datab => \Mux325~120_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux325~121_combout\);

-- Location: LCCOMB_X62_Y60_N12
\Mux332~892\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~892_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux187~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux165~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux165~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux187~0_combout\,
	combout => \Mux332~892_combout\);

-- Location: LCCOMB_X62_Y60_N6
\Mux332~893\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~893_combout\ = (\Mux332~892_combout\ & ((\Mux106~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~892_combout\ & (((\Mux104~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~892_combout\,
	datab => \Mux106~0_combout\,
	datac => \Mux104~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~893_combout\);

-- Location: LCCOMB_X62_Y69_N26
\Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux107~0_combout\ = (\row[1]~input_o\ & (!\row[0]~input_o\ & (\row[2]~input_o\ $ (\row[3]~input_o\)))) # (!\row[1]~input_o\ & (\row[0]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux107~0_combout\);

-- Location: LCCOMB_X63_Y67_N26
\Mux332~896\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~896_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux111~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux107~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux111~0_combout\,
	datab => \Mux107~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~896_combout\);

-- Location: LCCOMB_X62_Y60_N0
\Mux332~897\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~897_combout\ = (\Mux332~896_combout\) # ((\Mux332~274_combout\ & !\ascii_ucode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~274_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~896_combout\,
	combout => \Mux332~897_combout\);

-- Location: LCCOMB_X63_Y60_N0
\Mux332~895\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~895_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux293~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux319~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux293~0_combout\,
	datac => \Mux319~12_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~895_combout\);

-- Location: LCCOMB_X63_Y60_N30
\Mux332~958\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~958_combout\ = (\Mux332~895_combout\) # ((\ascii_ucode[0]~input_o\ & (\Mux98~0_combout\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~895_combout\,
	datac => \Mux98~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~958_combout\);

-- Location: LCCOMB_X63_Y60_N4
\Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = (\row[3]~input_o\ & (((!\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\))) # (!\row[3]~input_o\ & (((\row[1]~input_o\ & \row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux101~0_combout\);

-- Location: LCCOMB_X63_Y60_N14
\Mux332~894\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~894_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux101~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux100~0_combout\,
	datac => \Mux101~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~894_combout\);

-- Location: LCCOMB_X63_Y60_N12
\Mux332~957\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~957_combout\ = (\Mux332~894_combout\) # ((\Mux95~0_combout\ & (!\ascii_ucode[2]~input_o\ & \ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux95~0_combout\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux332~894_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~957_combout\);

-- Location: LCCOMB_X63_Y60_N10
\Mux325~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~122_combout\ = (\ascii_ucode[1]~input_o\ & ((\ascii_ucode[3]~input_o\) # ((\Mux332~957_combout\)))) # (!\ascii_ucode[1]~input_o\ & (!\ascii_ucode[3]~input_o\ & (\Mux332~958_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[3]~input_o\,
	datac => \Mux332~958_combout\,
	datad => \Mux332~957_combout\,
	combout => \Mux325~122_combout\);

-- Location: LCCOMB_X62_Y60_N10
\Mux325~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~123_combout\ = (\Mux325~122_combout\ & (((\Mux332~897_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux325~122_combout\ & (\Mux332~893_combout\ & ((\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~893_combout\,
	datab => \Mux332~897_combout\,
	datac => \Mux325~122_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~123_combout\);

-- Location: LCCOMB_X58_Y65_N28
\Mux140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~0_combout\ = (\row[2]~input_o\ & ((\row[3]~input_o\ & ((!\row[1]~input_o\))) # (!\row[3]~input_o\ & ((\row[0]~input_o\) # (\row[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[1]~input_o\,
	combout => \Mux140~0_combout\);

-- Location: LCCOMB_X58_Y65_N30
\Mux332~898\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~898_combout\ = (\ascii_ucode[2]~input_o\ & (((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux140~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux216~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux140~0_combout\,
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~898_combout\);

-- Location: LCCOMB_X62_Y60_N8
\Mux332~899\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~899_combout\ = (\Mux332~898_combout\ & (((\Mux148~0_combout\) # (!\ascii_ucode[2]~input_o\)))) # (!\Mux332~898_combout\ & (\Mux146~0_combout\ & (\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~898_combout\,
	datab => \Mux146~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux148~0_combout\,
	combout => \Mux332~899_combout\);

-- Location: LCCOMB_X67_Y66_N22
\Mux325~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~136_combout\ = (\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux187~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux216~0_combout\))))) # (!\ascii_ucode[0]~input_o\ & (((\Mux216~0_combout\ & \ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux187~0_combout\,
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~136_combout\);

-- Location: LCCOMB_X62_Y60_N2
\Mux325~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~126_combout\ = (\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux332~899_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux325~136_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~899_combout\,
	datac => \Mux325~136_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~126_combout\);

-- Location: LCCOMB_X62_Y60_N28
\Mux325~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~124_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux187~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\ascii_ucode[1]~input_o\ & ((\Mux126~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux187~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux126~0_combout\,
	combout => \Mux325~124_combout\);

-- Location: LCCOMB_X62_Y60_N22
\Mux325~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~135_combout\ = (\ascii_ucode[2]~input_o\ & (((\Mux325~124_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[1]~input_o\ & ((\Mux332~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux325~124_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~271_combout\,
	combout => \Mux325~135_combout\);

-- Location: LCCOMB_X62_Y60_N30
\Mux325~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~125_combout\ = (\Mux325~135_combout\ & !\ascii_ucode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~135_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~125_combout\);

-- Location: LCCOMB_X62_Y60_N4
\Mux325~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~127_combout\ = (\ascii_ucode[4]~input_o\ & (((\Mux325~126_combout\) # (\Mux325~125_combout\)))) # (!\ascii_ucode[4]~input_o\ & (\Mux325~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~123_combout\,
	datab => \Mux325~126_combout\,
	datac => \Mux325~125_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~127_combout\);

-- Location: LCCOMB_X61_Y66_N26
\Mux325~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~128_combout\ = (\Mux325~121_combout\ & (((\Mux325~127_combout\) # (!\ascii_ucode[5]~input_o\)))) # (!\Mux325~121_combout\ & (\Mux325~74_combout\ & (\ascii_ucode[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~74_combout\,
	datab => \Mux325~121_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \Mux325~127_combout\,
	combout => \Mux325~128_combout\);

-- Location: LCCOMB_X65_Y66_N18
\Mux332~876\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~876_combout\ = (\ascii_ucode[2]~input_o\ & ((\Mux319~7_combout\) # ((\ascii_ucode[0]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux280~0_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~7_combout\,
	datab => \Mux280~0_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~876_combout\);

-- Location: LCCOMB_X65_Y66_N12
\Mux332~877\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~877_combout\ = (\Mux332~876_combout\ & ((\Mux293~0_combout\) # ((!\ascii_ucode[0]~input_o\)))) # (!\Mux332~876_combout\ & (((\Mux286~0_combout\ & \ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux293~0_combout\,
	datab => \Mux332~876_combout\,
	datac => \Mux286~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~877_combout\);

-- Location: LCCOMB_X62_Y66_N14
\Mux332~874\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~874_combout\ = (!\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\ & (\row[2]~input_o\ & !\row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \Mux332~874_combout\);

-- Location: LCCOMB_X62_Y66_N8
\Mux332~875\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~875_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((!\Mux275~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux319~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux319~0_combout\,
	datac => \Mux275~0_combout\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~875_combout\);

-- Location: LCCOMB_X62_Y66_N26
\Mux325~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~107_combout\ = (\ascii_ucode[3]~input_o\ & (((\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & ((\Mux332~875_combout\))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[3]~input_o\,
	datab => \Mux332~228_combout\,
	datac => \Mux332~875_combout\,
	datad => \ascii_ucode[1]~input_o\,
	combout => \Mux325~107_combout\);

-- Location: LCCOMB_X62_Y66_N28
\Mux325~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~108_combout\ = (\Mux325~107_combout\ & ((\Mux332~877_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux325~107_combout\ & (((\Mux332~874_combout\ & \ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~877_combout\,
	datab => \Mux332~874_combout\,
	datac => \Mux325~107_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~108_combout\);

-- Location: LCCOMB_X66_Y66_N8
\Mux332~870\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~870_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux323~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux320~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~0_combout\,
	datab => \Mux323~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	combout => \Mux332~870_combout\);

-- Location: LCCOMB_X66_Y66_N18
\Mux332~871\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~871_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[1]~input_o\) # ((\Mux332~870_combout\)))) # (!\ascii_ucode[2]~input_o\ & (!\ascii_ucode[1]~input_o\ & ((\Mux332~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~870_combout\,
	datad => \Mux332~148_combout\,
	combout => \Mux332~871_combout\);

-- Location: LCCOMB_X66_Y66_N12
\Mux332~872\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~872_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~871_combout\ & ((\Mux332~150_combout\))) # (!\Mux332~871_combout\ & (\Mux332~216_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~871_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~871_combout\,
	datac => \Mux332~216_combout\,
	datad => \Mux332~150_combout\,
	combout => \Mux332~872_combout\);

-- Location: LCCOMB_X63_Y66_N2
\Mux325~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~104_combout\ = (\Mux332~873_combout\ & ((\ascii_ucode[2]~input_o\ & ((\Mux305~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux294~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux294~0_combout\,
	datac => \Mux305~0_combout\,
	datad => \Mux332~873_combout\,
	combout => \Mux325~104_combout\);

-- Location: LCCOMB_X65_Y63_N12
\Mux296~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux296~0_combout\ = (!\row[3]~input_o\ & ((\row[1]~input_o\ & (\row[0]~input_o\ & !\row[2]~input_o\)) # (!\row[1]~input_o\ & ((\row[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux296~0_combout\);

-- Location: LCCOMB_X65_Y63_N22
\Mux325~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~105_combout\ = (\ascii_ucode[1]~input_o\ & (\Mux316~1_combout\ & (!\ascii_ucode[0]~input_o\))) # (!\ascii_ucode[1]~input_o\ & (((\ascii_ucode[0]~input_o\ & \Mux296~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux316~1_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux296~0_combout\,
	combout => \Mux325~105_combout\);

-- Location: LCCOMB_X63_Y66_N14
\Mux325~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~133_combout\ = (\Mux325~104_combout\) # ((\ascii_ucode[2]~input_o\ & (\ascii_ucode[0]~input_o\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux325~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~104_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux325~105_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~133_combout\);

-- Location: LCCOMB_X66_Y66_N22
\Mux325~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~106_combout\ = (\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & (\Mux332~872_combout\)) # (!\ascii_ucode[3]~input_o\ & ((\Mux325~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~872_combout\,
	datab => \Mux325~133_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~106_combout\);

-- Location: LCCOMB_X65_Y66_N22
\Mux325~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~109_combout\ = (\Mux325~106_combout\) # ((\Mux325~108_combout\ & !\ascii_ucode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~108_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux325~106_combout\,
	combout => \Mux325~109_combout\);

-- Location: LCCOMB_X65_Y63_N24
\Mux262~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux262~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\ & ((!\row[2]~input_o\))) # (!\row[1]~input_o\ & (!\row[0]~input_o\ & \row[2]~input_o\)))) # (!\row[3]~input_o\ & (\row[2]~input_o\ & (\row[0]~input_o\ $ (\row[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux262~0_combout\);

-- Location: LCCOMB_X65_Y63_N2
\Mux332~854\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~854_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux262~0_combout\)) # (!\ascii_ucode[0]~input_o\ & (((\Mux316~1_combout\) # (\Mux316~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux262~0_combout\,
	datac => \Mux316~1_combout\,
	datad => \Mux316~0_combout\,
	combout => \Mux332~854_combout\);

-- Location: LCCOMB_X65_Y67_N0
\Mux332~947\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~947_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~854_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux305~0_combout\ & (\ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux305~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~854_combout\,
	combout => \Mux332~947_combout\);

-- Location: LCCOMB_X65_Y67_N18
\Mux332~948\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~948_combout\ = (\ascii_ucode[2]~input_o\ & (\Mux332~596_combout\ & ((!\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~947_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~596_combout\,
	datab => \Mux332~947_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~948_combout\);

-- Location: LCCOMB_X62_Y65_N2
\Mux332~853\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~853_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux237~0_combout\) # (!\ascii_ucode[1]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux286~0_combout\ & (\ascii_ucode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux286~0_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux237~0_combout\,
	combout => \Mux332~853_combout\);

-- Location: LCCOMB_X62_Y65_N6
\Mux332~946\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~946_combout\ = (\Mux332~853_combout\ & (((\ascii_ucode[1]~input_o\ & \ascii_ucode[2]~input_o\)))) # (!\Mux332~853_combout\ & (\Mux228~0_combout\ & (!\ascii_ucode[1]~input_o\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux228~0_combout\,
	datab => \Mux332~853_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~946_combout\);

-- Location: LCCOMB_X66_Y67_N26
\Mux243~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux243~0_combout\ = (\row[0]~input_o\ & ((\row[2]~input_o\ & ((!\row[1]~input_o\))) # (!\row[2]~input_o\ & (\row[3]~input_o\)))) # (!\row[0]~input_o\ & (\row[3]~input_o\ & (\row[1]~input_o\ $ (\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux243~0_combout\);

-- Location: LCCOMB_X66_Y67_N20
\Mux332~851\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~851_combout\ = (!\ascii_ucode[2]~input_o\ & ((\Mux332~148_combout\) # ((\Mux243~0_combout\ & !\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux243~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~148_combout\,
	combout => \Mux332~851_combout\);

-- Location: LCCOMB_X66_Y67_N6
\Mux332~847\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~847_combout\ = (\row[3]~input_o\ & (\ascii_ucode[0]~input_o\ $ (((!\row[0]~input_o\ & !\row[1]~input_o\))))) # (!\row[3]~input_o\ & (\row[0]~input_o\ & (\row[1]~input_o\ $ (!\ascii_ucode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[3]~input_o\,
	datab => \row[0]~input_o\,
	datac => \row[1]~input_o\,
	datad => \ascii_ucode[0]~input_o\,
	combout => \Mux332~847_combout\);

-- Location: LCCOMB_X63_Y61_N22
\Mux332~848\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~848_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\) # (\Mux241~0_combout\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux316~3_combout\ & (!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux316~3_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux241~0_combout\,
	combout => \Mux332~848_combout\);

-- Location: LCCOMB_X66_Y67_N8
\Mux332~849\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~849_combout\ = (\ascii_ucode[2]~input_o\ & (\row[2]~input_o\ & (\Mux332~847_combout\ $ (\Mux332~848_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux332~848_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~847_combout\,
	datab => \Mux332~848_combout\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux332~849_combout\);

-- Location: LCCOMB_X62_Y67_N20
\Mux332~850\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~850_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux323~0_combout\ & \ascii_ucode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datac => \Mux323~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~850_combout\);

-- Location: LCCOMB_X66_Y67_N14
\Mux332~852\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~852_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~851_combout\) # ((\Mux332~850_combout\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~849_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~851_combout\,
	datac => \Mux332~849_combout\,
	datad => \Mux332~850_combout\,
	combout => \Mux332~852_combout\);

-- Location: LCCOMB_X62_Y65_N4
\Mux325~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~87_combout\ = (\ascii_ucode[4]~input_o\ & (((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[4]~input_o\ & ((\ascii_ucode[3]~input_o\ & ((\Mux332~852_combout\))) # (!\ascii_ucode[3]~input_o\ & (\Mux332~946_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~946_combout\,
	datab => \Mux332~852_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~87_combout\);

-- Location: LCCOMB_X66_Y68_N20
\Mux332~845\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~845_combout\ = (\ascii_ucode[0]~input_o\ & (!\ascii_ucode[1]~input_o\ & \ascii_ucode[2]~input_o\)) # (!\ascii_ucode[0]~input_o\ & ((!\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ascii_ucode[1]~input_o\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~845_combout\);

-- Location: LCCOMB_X66_Y68_N30
\Mux332~846\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~846_combout\ = (\Mux332~845_combout\ & ((\Mux332~251_combout\ & ((\Mux316~1_combout\))) # (!\Mux332~251_combout\ & (\Mux319~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux319~0_combout\,
	datab => \Mux332~845_combout\,
	datac => \Mux332~251_combout\,
	datad => \Mux316~1_combout\,
	combout => \Mux332~846_combout\);

-- Location: LCCOMB_X61_Y66_N24
\Mux325~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~88_combout\ = (\Mux325~87_combout\ & ((\Mux332~948_combout\) # ((!\ascii_ucode[4]~input_o\)))) # (!\Mux325~87_combout\ & (((\ascii_ucode[4]~input_o\ & \Mux332~846_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~948_combout\,
	datab => \Mux325~87_combout\,
	datac => \ascii_ucode[4]~input_o\,
	datad => \Mux332~846_combout\,
	combout => \Mux325~88_combout\);

-- Location: LCCOMB_X60_Y65_N18
\Mux332~866\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~866_combout\ = (\ascii_ucode[0]~input_o\ & (\ascii_ucode[2]~input_o\)) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((!\Mux275~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux165~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux165~0_combout\,
	datad => \Mux275~0_combout\,
	combout => \Mux332~866_combout\);

-- Location: LCCOMB_X60_Y65_N12
\Mux332~867\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~867_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux332~866_combout\ & (\Mux173~0_combout\)) # (!\Mux332~866_combout\ & ((\Mux319~6_combout\))))) # (!\ascii_ucode[0]~input_o\ & (\Mux332~866_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~866_combout\,
	datac => \Mux173~0_combout\,
	datad => \Mux319~6_combout\,
	combout => \Mux332~867_combout\);

-- Location: LCCOMB_X57_Y61_N4
\Mux161~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux161~0_combout\ = (\row[1]~input_o\ & ((\row[2]~input_o\ & ((!\row[3]~input_o\))) # (!\row[2]~input_o\ & (!\row[0]~input_o\)))) # (!\row[1]~input_o\ & (((\row[3]~input_o\ & !\row[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[1]~input_o\,
	datad => \row[2]~input_o\,
	combout => \Mux161~0_combout\);

-- Location: LCCOMB_X57_Y61_N14
\Mux332~864\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~864_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux171~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux161~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux171~0_combout\,
	datab => \Mux161~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~864_combout\);

-- Location: LCCOMB_X66_Y65_N8
\Mux332~865\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~865_combout\ = (\Mux305~0_combout\ & ((\Mux332~136_combout\) # ((\Mux332~123_combout\ & \Mux158~0_combout\)))) # (!\Mux305~0_combout\ & (\Mux332~123_combout\ & (\Mux158~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux305~0_combout\,
	datab => \Mux332~123_combout\,
	datac => \Mux158~0_combout\,
	datad => \Mux332~136_combout\,
	combout => \Mux332~865_combout\);

-- Location: LCCOMB_X60_Y65_N16
\Mux332~951\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~951_combout\ = (\Mux332~865_combout\) # ((\ascii_ucode[0]~input_o\ & (\Mux319~5_combout\ & !\ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux332~865_combout\,
	datac => \Mux319~5_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~951_combout\);

-- Location: LCCOMB_X60_Y65_N0
\Mux325~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~95_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~864_combout\) # ((\ascii_ucode[3]~input_o\)))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~951_combout\ & !\ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~864_combout\,
	datab => \Mux332~951_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~95_combout\);

-- Location: LCCOMB_X68_Y65_N10
\Mux332~863\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~863_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux167~0_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux165~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux165~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \Mux332~863_combout\);

-- Location: LCCOMB_X68_Y65_N6
\Mux332~950\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~950_combout\ = (\Mux332~863_combout\) # ((\Mux171~0_combout\ & (\ascii_ucode[0]~input_o\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux171~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \ascii_ucode[2]~input_o\,
	datad => \Mux332~863_combout\,
	combout => \Mux332~950_combout\);

-- Location: LCCOMB_X60_Y65_N6
\Mux325~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~96_combout\ = (\Mux325~95_combout\ & ((\Mux332~867_combout\) # ((!\ascii_ucode[3]~input_o\)))) # (!\Mux325~95_combout\ & (((\Mux332~950_combout\ & \ascii_ucode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~867_combout\,
	datab => \Mux325~95_combout\,
	datac => \Mux332~950_combout\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~96_combout\);

-- Location: LCCOMB_X67_Y66_N0
\Mux325~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~99_combout\ = (!\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & ((\Mux305~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux187~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux187~0_combout\,
	datab => \Mux305~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~99_combout\);

-- Location: LCCOMB_X67_Y66_N2
\Mux325~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~100_combout\ = (\Mux325~99_combout\) # ((\ascii_ucode[2]~input_o\ & (!\ascii_ucode[0]~input_o\ & \Mux216~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[2]~input_o\,
	datab => \Mux325~99_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux216~0_combout\,
	combout => \Mux325~100_combout\);

-- Location: LCCOMB_X59_Y59_N8
\Mux181~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux181~0_combout\ = (\row[1]~input_o\ & (!\row[3]~input_o\ & ((\row[2]~input_o\) # (\row[0]~input_o\)))) # (!\row[1]~input_o\ & (\row[3]~input_o\ & (!\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[3]~input_o\,
	datac => \row[2]~input_o\,
	datad => \row[0]~input_o\,
	combout => \Mux181~0_combout\);

-- Location: LCCOMB_X59_Y59_N26
\Mux332~868\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~868_combout\ = (\ascii_ucode[0]~input_o\ & (((\ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux187~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux181~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux187~0_combout\,
	datac => \Mux181~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~868_combout\);

-- Location: LCCOMB_X59_Y59_N28
\Mux332~869\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~869_combout\ = (\Mux332~868_combout\ & (((\Mux319~1_combout\) # (!\ascii_ucode[0]~input_o\)))) # (!\Mux332~868_combout\ & (\Mux184~0_combout\ & (\ascii_ucode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~868_combout\,
	datab => \Mux184~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux319~1_combout\,
	combout => \Mux332~869_combout\);

-- Location: LCCOMB_X60_Y65_N28
\Mux325~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~101_combout\ = (\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux325~100_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux332~869_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~100_combout\,
	datab => \Mux332~869_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~101_combout\);

-- Location: LCCOMB_X60_Y65_N10
\Mux325~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~131_combout\ = (\ascii_ucode[0]~input_o\ & (((\Mux222~0_combout\ & \ascii_ucode[2]~input_o\)))) # (!\ascii_ucode[0]~input_o\ & (\Mux223~0_combout\ & ((!\ascii_ucode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux223~0_combout\,
	datac => \Mux222~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~131_combout\);

-- Location: LCCOMB_X60_Y65_N8
\Mux325~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~97_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux319~6_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux187~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux319~6_combout\,
	datad => \Mux187~0_combout\,
	combout => \Mux325~97_combout\);

-- Location: LCCOMB_X60_Y65_N20
\Mux325~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~132_combout\ = (\ascii_ucode[2]~input_o\ & (!\ascii_ucode[0]~input_o\ & ((\Mux222~0_combout\)))) # (!\ascii_ucode[2]~input_o\ & (((\Mux325~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux325~97_combout\,
	datac => \Mux222~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux325~132_combout\);

-- Location: LCCOMB_X60_Y65_N26
\Mux325~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~98_combout\ = (!\ascii_ucode[3]~input_o\ & ((\ascii_ucode[1]~input_o\ & (\Mux325~131_combout\)) # (!\ascii_ucode[1]~input_o\ & ((\Mux325~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~131_combout\,
	datab => \Mux325~132_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \ascii_ucode[3]~input_o\,
	combout => \Mux325~98_combout\);

-- Location: LCCOMB_X60_Y65_N14
\Mux325~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~102_combout\ = (\ascii_ucode[4]~input_o\ & (((\Mux325~101_combout\) # (\Mux325~98_combout\)))) # (!\ascii_ucode[4]~input_o\ & (\Mux325~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~96_combout\,
	datab => \Mux325~101_combout\,
	datac => \Mux325~98_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~102_combout\);

-- Location: LCCOMB_X63_Y62_N20
\Mux332~855\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~855_combout\ = (\ascii_ucode[2]~input_o\ & ((\ascii_ucode[0]~input_o\ & (\Mux222~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux205~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[0]~input_o\,
	datab => \Mux222~0_combout\,
	datac => \Mux205~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~855_combout\);

-- Location: LCCOMB_X63_Y62_N30
\Mux332~856\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~856_combout\ = (\Mux332~855_combout\) # (\Mux332~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux332~855_combout\,
	datac => \Mux332~178_combout\,
	combout => \Mux332~856_combout\);

-- Location: LCCOMB_X66_Y65_N10
\Mux332~857\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~857_combout\ = (\Mux332~156_combout\ & ((\Mux286~0_combout\) # ((\Mux232~1_combout\ & \Mux332~123_combout\)))) # (!\Mux332~156_combout\ & (\Mux232~1_combout\ & (\Mux332~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~156_combout\,
	datab => \Mux232~1_combout\,
	datac => \Mux332~123_combout\,
	datad => \Mux286~0_combout\,
	combout => \Mux332~857_combout\);

-- Location: LCCOMB_X66_Y65_N20
\Mux325~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~89_combout\ = (\ascii_ucode[1]~input_o\ & (((\ascii_ucode[3]~input_o\) # (\Mux332~857_combout\)))) # (!\ascii_ucode[1]~input_o\ & (\Mux332~905_combout\ & (!\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \Mux332~905_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~857_combout\,
	combout => \Mux325~89_combout\);

-- Location: LCCOMB_X62_Y62_N4
\Mux332~858\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~858_combout\ = (!\ascii_ucode[0]~input_o\ & ((\ascii_ucode[2]~input_o\ & (\Mux211~0_combout\)) # (!\ascii_ucode[2]~input_o\ & ((\Mux203~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux211~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux203~0_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~858_combout\);

-- Location: LCCOMB_X62_Y62_N30
\Mux332~949\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~949_combout\ = (\Mux332~858_combout\) # ((\Mux222~0_combout\ & (\ascii_ucode[0]~input_o\ & \ascii_ucode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux222~0_combout\,
	datab => \ascii_ucode[0]~input_o\,
	datac => \Mux332~858_combout\,
	datad => \ascii_ucode[2]~input_o\,
	combout => \Mux332~949_combout\);

-- Location: LCCOMB_X66_Y65_N30
\Mux325~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~90_combout\ = (\Mux325~89_combout\ & (((\Mux332~949_combout\) # (!\ascii_ucode[3]~input_o\)))) # (!\Mux325~89_combout\ & (\Mux332~856_combout\ & (\ascii_ucode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~856_combout\,
	datab => \Mux325~89_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~949_combout\,
	combout => \Mux325~90_combout\);

-- Location: LCCOMB_X69_Y66_N2
\Mux325~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~92_combout\ = (\ascii_ucode[1]~input_o\ & (((\Mux332~207_combout\) # (\Mux332~376_combout\)))) # (!\ascii_ucode[1]~input_o\ & (!\Mux221~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux221~0_combout\,
	datab => \ascii_ucode[1]~input_o\,
	datac => \Mux332~207_combout\,
	datad => \Mux332~376_combout\,
	combout => \Mux325~92_combout\);

-- Location: LCCOMB_X69_Y66_N20
\Mux325~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~93_combout\ = (\ascii_ucode[3]~input_o\ & ((\Mux332~775_combout\ & ((\Mux325~92_combout\))) # (!\Mux332~775_combout\ & (\Mux222~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux222~0_combout\,
	datab => \Mux325~92_combout\,
	datac => \ascii_ucode[3]~input_o\,
	datad => \Mux332~775_combout\,
	combout => \Mux325~93_combout\);

-- Location: LCCOMB_X67_Y66_N16
\Mux332~859\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~859_combout\ = (\ascii_ucode[0]~input_o\ & ((\Mux222~0_combout\))) # (!\ascii_ucode[0]~input_o\ & (\Mux217~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux217~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux222~0_combout\,
	combout => \Mux332~859_combout\);

-- Location: LCCOMB_X67_Y66_N10
\Mux332~860\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~860_combout\ = (\ascii_ucode[0]~input_o\ & (\Mux216~0_combout\)) # (!\ascii_ucode[0]~input_o\ & ((\Mux222~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux216~0_combout\,
	datac => \ascii_ucode[0]~input_o\,
	datad => \Mux222~0_combout\,
	combout => \Mux332~860_combout\);

-- Location: LCCOMB_X67_Y66_N28
\Mux332~861\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~861_combout\ = (\ascii_ucode[1]~input_o\ & (\ascii_ucode[2]~input_o\)) # (!\ascii_ucode[1]~input_o\ & ((\ascii_ucode[2]~input_o\ & ((\Mux332~860_combout\))) # (!\ascii_ucode[2]~input_o\ & (\Mux332~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_ucode[1]~input_o\,
	datab => \ascii_ucode[2]~input_o\,
	datac => \Mux332~189_combout\,
	datad => \Mux332~860_combout\,
	combout => \Mux332~861_combout\);

-- Location: LCCOMB_X67_Y66_N6
\Mux332~862\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux332~862_combout\ = (\ascii_ucode[1]~input_o\ & ((\Mux332~861_combout\ & (\Mux332~191_combout\)) # (!\Mux332~861_combout\ & ((\Mux332~859_combout\))))) # (!\ascii_ucode[1]~input_o\ & (((\Mux332~861_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~191_combout\,
	datab => \Mux332~859_combout\,
	datac => \ascii_ucode[1]~input_o\,
	datad => \Mux332~861_combout\,
	combout => \Mux332~862_combout\);

-- Location: LCCOMB_X69_Y66_N8
\Mux325~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~91_combout\ = (\Mux332~862_combout\ & !\ascii_ucode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux332~862_combout\,
	datac => \ascii_ucode[3]~input_o\,
	combout => \Mux325~91_combout\);

-- Location: LCCOMB_X69_Y66_N6
\Mux325~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~94_combout\ = (\ascii_ucode[4]~input_o\ & (((\Mux325~93_combout\) # (\Mux325~91_combout\)))) # (!\ascii_ucode[4]~input_o\ & (\Mux325~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~90_combout\,
	datab => \Mux325~93_combout\,
	datac => \Mux325~91_combout\,
	datad => \ascii_ucode[4]~input_o\,
	combout => \Mux325~94_combout\);

-- Location: LCCOMB_X61_Y66_N2
\Mux325~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~103_combout\ = (\ascii_ucode[5]~input_o\ & (((\Mux325~94_combout\) # (\ascii_ucode[6]~input_o\)))) # (!\ascii_ucode[5]~input_o\ & (\Mux325~102_combout\ & ((!\ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~102_combout\,
	datab => \Mux325~94_combout\,
	datac => \ascii_ucode[5]~input_o\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux325~103_combout\);

-- Location: LCCOMB_X61_Y66_N4
\Mux325~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~110_combout\ = (\Mux325~103_combout\ & ((\Mux325~109_combout\) # ((!\ascii_ucode[6]~input_o\)))) # (!\Mux325~103_combout\ & (((\Mux325~88_combout\ & \ascii_ucode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~109_combout\,
	datab => \Mux325~88_combout\,
	datac => \Mux325~103_combout\,
	datad => \ascii_ucode[6]~input_o\,
	combout => \Mux325~110_combout\);

-- Location: LCCOMB_X61_Y66_N28
\Mux325~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~129_combout\ = (\ascii_ucode[7]~input_o\ & ((\Mux325~110_combout\))) # (!\ascii_ucode[7]~input_o\ & (\Mux325~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~128_combout\,
	datab => \Mux325~110_combout\,
	datad => \ascii_ucode[7]~input_o\,
	combout => \Mux325~129_combout\);

ww_char_line(0) <= \char_line[0]~output_o\;

ww_char_line(1) <= \char_line[1]~output_o\;

ww_char_line(2) <= \char_line[2]~output_o\;

ww_char_line(3) <= \char_line[3]~output_o\;

ww_char_line(4) <= \char_line[4]~output_o\;

ww_char_line(5) <= \char_line[5]~output_o\;

ww_char_line(6) <= \char_line[6]~output_o\;

ww_char_line(7) <= \char_line[7]~output_o\;
END structure;


