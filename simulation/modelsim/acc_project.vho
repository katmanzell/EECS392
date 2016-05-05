-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "04/28/2016 16:53:33"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	acc_project IS
    PORT (
	reset : IN std_logic;
	clk_50Mhz : IN std_logic;
	LCD_RS : OUT std_logic;
	LCD_E : OUT std_logic;
	LCD_ON : OUT std_logic;
	RESET_LED : OUT std_logic;
	SEC_LED : OUT std_logic;
	LCD_RW : BUFFER std_logic;
	DATA_BUS : INOUT std_logic_vector(7 DOWNTO 0);
	scl : INOUT std_logic;
	sda : INOUT std_logic
	);
END acc_project;

-- Design Ports Information
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_E	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_LED	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_LED	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF acc_project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_RESET_LED : std_logic;
SIGNAL ww_SEC_LED : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_map|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \de2lcd_map|CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \scl~input_o\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \DATA_BUS[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS[7]~output_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_E~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \RESET_LED~output_o\ : std_logic;
SIGNAL \SEC_LED~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[15]~52\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[16]~53_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[16]~54\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[17]~55_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[17]~56\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[18]~57_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[18]~58\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[19]~59_combout\ : std_logic;
SIGNAL \de2lcd_map|LessThan0~4_combout\ : std_logic;
SIGNAL \de2lcd_map|LessThan0~0_combout\ : std_logic;
SIGNAL \de2lcd_map|LessThan0~1_combout\ : std_logic;
SIGNAL \de2lcd_map|LessThan0~2_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[3]~27_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[3]~28\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[4]~29_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[4]~30\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[5]~31_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[5]~32\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[6]~33_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[6]~34\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[7]~35_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[7]~36\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[8]~37_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[8]~38\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[9]~39_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[9]~40\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[10]~41_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[10]~42\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[11]~43_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[11]~44\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[12]~45_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[12]~46\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[13]~47_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[13]~48\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[14]~49_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[14]~50\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[15]~51_combout\ : std_logic;
SIGNAL \de2lcd_map|LessThan0~3_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_400HZ~0_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_400HZ~q\ : std_logic;
SIGNAL \de2lcd_map|CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \de2lcd_map|state.HOLD~q\ : std_logic;
SIGNAL \de2lcd_map|LCD_RS~0_combout\ : std_logic;
SIGNAL \de2lcd_map|state.TOGGLE_E~q\ : std_logic;
SIGNAL \de2lcd_map|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \de2lcd_map|state.RESET1~q\ : std_logic;
SIGNAL \de2lcd_map|Selector32~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.RESET2~q\ : std_logic;
SIGNAL \de2lcd_map|state~62_combout\ : std_logic;
SIGNAL \de2lcd_map|state.RESET2~q\ : std_logic;
SIGNAL \de2lcd_map|Selector33~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.RESET3~q\ : std_logic;
SIGNAL \de2lcd_map|state~63_combout\ : std_logic;
SIGNAL \de2lcd_map|state.RESET3~q\ : std_logic;
SIGNAL \de2lcd_map|Selector12~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.FUNC_SET~q\ : std_logic;
SIGNAL \de2lcd_map|state~61_combout\ : std_logic;
SIGNAL \de2lcd_map|state.FUNC_SET~q\ : std_logic;
SIGNAL \de2lcd_map|Selector34~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \de2lcd_map|state~59_combout\ : std_logic;
SIGNAL \de2lcd_map|state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \de2lcd_map|Selector35~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \de2lcd_map|state~60_combout\ : std_logic;
SIGNAL \de2lcd_map|state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \de2lcd_map|Selector9~0_combout\ : std_logic;
SIGNAL \de2lcd_map|state~56_combout\ : std_logic;
SIGNAL \de2lcd_map|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \de2lcd_map|Selector14~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.MODE_SET~q\ : std_logic;
SIGNAL \de2lcd_map|state~57_combout\ : std_logic;
SIGNAL \de2lcd_map|state.MODE_SET~q\ : std_logic;
SIGNAL \de2lcd_map|Selector17~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR3~q\ : std_logic;
SIGNAL \de2lcd_map|state~67_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR3~q\ : std_logic;
SIGNAL \de2lcd_map|Selector18~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR4~q\ : std_logic;
SIGNAL \de2lcd_map|state~79_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR4~q\ : std_logic;
SIGNAL \de2lcd_map|Selector19~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR5~q\ : std_logic;
SIGNAL \de2lcd_map|state~78_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR5~q\ : std_logic;
SIGNAL \de2lcd_map|Selector20~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR6~q\ : std_logic;
SIGNAL \de2lcd_map|state~77_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR6~q\ : std_logic;
SIGNAL \de2lcd_map|Selector21~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR7~q\ : std_logic;
SIGNAL \de2lcd_map|state~76_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR7~q\ : std_logic;
SIGNAL \de2lcd_map|Selector22~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR8~q\ : std_logic;
SIGNAL \de2lcd_map|state~75_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR8~q\ : std_logic;
SIGNAL \de2lcd_map|Selector23~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR9~q\ : std_logic;
SIGNAL \de2lcd_map|state~74_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR9~q\ : std_logic;
SIGNAL \de2lcd_map|Selector24~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR10~q\ : std_logic;
SIGNAL \de2lcd_map|state~73_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR10~q\ : std_logic;
SIGNAL \de2lcd_map|Selector25~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR11~q\ : std_logic;
SIGNAL \de2lcd_map|state~72_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR11~q\ : std_logic;
SIGNAL \de2lcd_map|Selector26~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR12~q\ : std_logic;
SIGNAL \de2lcd_map|state~68_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR12~q\ : std_logic;
SIGNAL \de2lcd_map|Selector27~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR13~q\ : std_logic;
SIGNAL \de2lcd_map|state~69_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR13~q\ : std_logic;
SIGNAL \de2lcd_map|Selector28~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR14~q\ : std_logic;
SIGNAL \de2lcd_map|state~70_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR14~q\ : std_logic;
SIGNAL \de2lcd_map|Selector29~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR15~q\ : std_logic;
SIGNAL \de2lcd_map|state~71_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR15~q\ : std_logic;
SIGNAL \de2lcd_map|Selector30~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR16~q\ : std_logic;
SIGNAL \de2lcd_map|state~64_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR16~q\ : std_logic;
SIGNAL \de2lcd_map|Selector31~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \de2lcd_map|state~58_combout\ : std_logic;
SIGNAL \de2lcd_map|state.RETURN_HOME~q\ : std_logic;
SIGNAL \de2lcd_map|Selector15~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR1~q\ : std_logic;
SIGNAL \de2lcd_map|state~66_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR1~q\ : std_logic;
SIGNAL \de2lcd_map|Selector3~0_combout\ : std_logic;
SIGNAL \de2lcd_map|state~65_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR2~q\ : std_logic;
SIGNAL \de2lcd_map|Selector8~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector7~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector6~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector6~1_combout\ : std_logic;
SIGNAL \de2lcd_map|WideOr2~2_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector6~2_combout\ : std_logic;
SIGNAL \de2lcd_map|WideOr2~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~1_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~2_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~3_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector4~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector4~1_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector2~0_combout\ : std_logic;
SIGNAL \clock_map|Add0~0_combout\ : std_logic;
SIGNAL \clock_map|Add0~1\ : std_logic;
SIGNAL \clock_map|Add0~2_combout\ : std_logic;
SIGNAL \clock_map|Add0~3\ : std_logic;
SIGNAL \clock_map|Add0~4_combout\ : std_logic;
SIGNAL \clock_map|Add0~5\ : std_logic;
SIGNAL \clock_map|Add0~6_combout\ : std_logic;
SIGNAL \clock_map|counter~6_combout\ : std_logic;
SIGNAL \clock_map|Add0~7\ : std_logic;
SIGNAL \clock_map|Add0~8_combout\ : std_logic;
SIGNAL \clock_map|Add0~9\ : std_logic;
SIGNAL \clock_map|Add0~10_combout\ : std_logic;
SIGNAL \clock_map|Equal0~3_combout\ : std_logic;
SIGNAL \clock_map|Add0~11\ : std_logic;
SIGNAL \clock_map|Add0~12_combout\ : std_logic;
SIGNAL \clock_map|counter~5_combout\ : std_logic;
SIGNAL \clock_map|Add0~13\ : std_logic;
SIGNAL \clock_map|Add0~14_combout\ : std_logic;
SIGNAL \clock_map|Add0~15\ : std_logic;
SIGNAL \clock_map|Add0~16_combout\ : std_logic;
SIGNAL \clock_map|Add0~17\ : std_logic;
SIGNAL \clock_map|Add0~18_combout\ : std_logic;
SIGNAL \clock_map|Add0~19\ : std_logic;
SIGNAL \clock_map|Add0~20_combout\ : std_logic;
SIGNAL \clock_map|Add0~21\ : std_logic;
SIGNAL \clock_map|Add0~22_combout\ : std_logic;
SIGNAL \clock_map|counter~4_combout\ : std_logic;
SIGNAL \clock_map|Add0~23\ : std_logic;
SIGNAL \clock_map|Add0~24_combout\ : std_logic;
SIGNAL \clock_map|Add0~25\ : std_logic;
SIGNAL \clock_map|Add0~26_combout\ : std_logic;
SIGNAL \clock_map|counter~3_combout\ : std_logic;
SIGNAL \clock_map|Add0~27\ : std_logic;
SIGNAL \clock_map|Add0~28_combout\ : std_logic;
SIGNAL \clock_map|counter~2_combout\ : std_logic;
SIGNAL \clock_map|Add0~29\ : std_logic;
SIGNAL \clock_map|Add0~30_combout\ : std_logic;
SIGNAL \clock_map|counter~1_combout\ : std_logic;
SIGNAL \clock_map|Add0~31\ : std_logic;
SIGNAL \clock_map|Add0~32_combout\ : std_logic;
SIGNAL \clock_map|counter~0_combout\ : std_logic;
SIGNAL \clock_map|Equal0~0_combout\ : std_logic;
SIGNAL \clock_map|Equal0~1_combout\ : std_logic;
SIGNAL \clock_map|Equal0~2_combout\ : std_logic;
SIGNAL \clock_map|Equal0~4_combout\ : std_logic;
SIGNAL \clock_map|temporal~0_combout\ : std_logic;
SIGNAL \clock_map|temporal~feeder_combout\ : std_logic;
SIGNAL \clock_map|temporal~q\ : std_logic;
SIGNAL \clock_map|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \mpu_map|Add1~0_combout\ : std_logic;
SIGNAL \mpu_map|Add1~1\ : std_logic;
SIGNAL \mpu_map|Add1~2_combout\ : std_logic;
SIGNAL \mpu_map|Add1~3\ : std_logic;
SIGNAL \mpu_map|Add1~4_combout\ : std_logic;
SIGNAL \mpu_map|Add1~5\ : std_logic;
SIGNAL \mpu_map|Add1~6_combout\ : std_logic;
SIGNAL \mpu_map|Add1~7\ : std_logic;
SIGNAL \mpu_map|Add1~8_combout\ : std_logic;
SIGNAL \mpu_map|cnt_sum~3_combout\ : std_logic;
SIGNAL \mpu_map|Add1~9\ : std_logic;
SIGNAL \mpu_map|Add1~10_combout\ : std_logic;
SIGNAL \mpu_map|cnt_sum~2_combout\ : std_logic;
SIGNAL \mpu_map|Add1~11\ : std_logic;
SIGNAL \mpu_map|Add1~12_combout\ : std_logic;
SIGNAL \mpu_map|cnt_sum~1_combout\ : std_logic;
SIGNAL \mpu_map|Add1~13\ : std_logic;
SIGNAL \mpu_map|Add1~14_combout\ : std_logic;
SIGNAL \mpu_map|cnt_sum~4_combout\ : std_logic;
SIGNAL \mpu_map|Add1~15\ : std_logic;
SIGNAL \mpu_map|Add1~16_combout\ : std_logic;
SIGNAL \mpu_map|cnt_sum~0_combout\ : std_logic;
SIGNAL \mpu_map|Decoder0~0_combout\ : std_logic;
SIGNAL \mpu_map|Decoder0~1_combout\ : std_logic;
SIGNAL \mpu_map|Decoder0~2_combout\ : std_logic;
SIGNAL \mpu_map|cnt_sum~5_combout\ : std_logic;
SIGNAL \mpu_map|Decoder0~3_combout\ : std_logic;
SIGNAL \mpu_map|Decoder0~4_combout\ : std_logic;
SIGNAL \mpu_map|cnt.010~q\ : std_logic;
SIGNAL \mpu_map|cnt.000~q\ : std_logic;
SIGNAL \mpu_map|scl_r~2_combout\ : std_logic;
SIGNAL \mpu_map|scl_r~q\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[2]~19_cout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[2]~20_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[2]~21\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[3]~22_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[3]~23\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[4]~24_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[4]~25\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[5]~26_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[5]~27\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[6]~28_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[6]~29\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[7]~30_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[7]~31\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[8]~32_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[8]~33\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[9]~34_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[9]~35\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[10]~36_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[10]~37\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[11]~38_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[11]~39\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[12]~40_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[12]~41\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[13]~42_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[13]~43\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[14]~44_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[14]~45\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[15]~46_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[15]~47\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[16]~48_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[16]~49\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[17]~50_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[17]~51\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[18]~52_combout\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[18]~53\ : std_logic;
SIGNAL \mpu_map|cnt_10ms[19]~54_combout\ : std_logic;
SIGNAL \mpu_map|Decoder0~6_combout\ : std_logic;
SIGNAL \mpu_map|cnt.001~q\ : std_logic;
SIGNAL \mpu_map|Decoder0~5_combout\ : std_logic;
SIGNAL \mpu_map|cnt.011~q\ : std_logic;
SIGNAL \mpu_map|times[0]~5_combout\ : std_logic;
SIGNAL \mpu_map|Selector24~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ACK4~q\ : std_logic;
SIGNAL \mpu_map|state.ACK4~_wirecell_combout\ : std_logic;
SIGNAL \mpu_map|num[1]~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector16~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ADD1~q\ : std_logic;
SIGNAL \mpu_map|Selector17~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ACK1~q\ : std_logic;
SIGNAL \mpu_map|WideOr11~0_combout\ : std_logic;
SIGNAL \mpu_map|times[1]~8\ : std_logic;
SIGNAL \mpu_map|times[2]~13_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mpu_map|times[2]~14\ : std_logic;
SIGNAL \mpu_map|times[3]~15_combout\ : std_logic;
SIGNAL \mpu_map|times[3]~16\ : std_logic;
SIGNAL \mpu_map|times[4]~17_combout\ : std_logic;
SIGNAL \mpu_map|WideOr5~0_combout\ : std_logic;
SIGNAL \mpu_map|times[3]~10_combout\ : std_logic;
SIGNAL \mpu_map|times[3]~11_combout\ : std_logic;
SIGNAL \mpu_map|WideOr5~2_combout\ : std_logic;
SIGNAL \mpu_map|times[3]~9_combout\ : std_logic;
SIGNAL \mpu_map|times[3]~12_combout\ : std_logic;
SIGNAL \mpu_map|times[0]~6\ : std_logic;
SIGNAL \mpu_map|times[1]~7_combout\ : std_logic;
SIGNAL \mpu_map|Selector11~0_combout\ : std_logic;
SIGNAL \mpu_map|Equal2~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector20~1_combout\ : std_logic;
SIGNAL \mpu_map|state.START2~q\ : std_logic;
SIGNAL \mpu_map|Selector21~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ADD3~q\ : std_logic;
SIGNAL \mpu_map|Selector22~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ACK3~q\ : std_logic;
SIGNAL \mpu_map|Selector23~0_combout\ : std_logic;
SIGNAL \mpu_map|state.DATA~q\ : std_logic;
SIGNAL \mpu_map|num[1]~2_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~0_combout\ : std_logic;
SIGNAL \mpu_map|num[1]~3_combout\ : std_logic;
SIGNAL \mpu_map|Selector32~0_combout\ : std_logic;
SIGNAL \mpu_map|num[1]~4_combout\ : std_logic;
SIGNAL \mpu_map|num[1]~5_combout\ : std_logic;
SIGNAL \mpu_map|num[1]~6_combout\ : std_logic;
SIGNAL \mpu_map|Selector31~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector30~0_combout\ : std_logic;
SIGNAL \mpu_map|Add3~0_combout\ : std_logic;
SIGNAL \mpu_map|num[3]~7_combout\ : std_logic;
SIGNAL \mpu_map|Equal1~0_combout\ : std_logic;
SIGNAL \mpu_map|always4~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector18~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ADD2~q\ : std_logic;
SIGNAL \mpu_map|Selector19~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ACK2~q\ : std_logic;
SIGNAL \mpu_map|Selector20~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector27~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ADD_EXT~q\ : std_logic;
SIGNAL \mpu_map|Selector28~0_combout\ : std_logic;
SIGNAL \mpu_map|state.ACK_EXT~q\ : std_logic;
SIGNAL \mpu_map|Selector5~2_combout\ : std_logic;
SIGNAL \mpu_map|Selector25~0_combout\ : std_logic;
SIGNAL \mpu_map|state.STOP1~q\ : std_logic;
SIGNAL \mpu_map|state~43_combout\ : std_logic;
SIGNAL \mpu_map|state~39_combout\ : std_logic;
SIGNAL \mpu_map|state~41_combout\ : std_logic;
SIGNAL \mpu_map|state~38_combout\ : std_logic;
SIGNAL \mpu_map|state~40_combout\ : std_logic;
SIGNAL \mpu_map|state~42_combout\ : std_logic;
SIGNAL \mpu_map|state~44_combout\ : std_logic;
SIGNAL \mpu_map|Selector26~0_combout\ : std_logic;
SIGNAL \mpu_map|state.STOP2~q\ : std_logic;
SIGNAL \mpu_map|state~45_combout\ : std_logic;
SIGNAL \mpu_map|state.IDLE~q\ : std_logic;
SIGNAL \mpu_map|Selector15~0_combout\ : std_logic;
SIGNAL \mpu_map|state.START1~q\ : std_logic;
SIGNAL \mpu_map|Selector6~2_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~3_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~5_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~4_combout\ : std_logic;
SIGNAL \mpu_map|Selector12~0_combout\ : std_logic;
SIGNAL \mpu_map|WideOr5~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector13~4_combout\ : std_logic;
SIGNAL \mpu_map|Selector13~5_combout\ : std_logic;
SIGNAL \mpu_map|db_r[0]~0_combout\ : std_logic;
SIGNAL \mpu_map|db_r[0]~1_combout\ : std_logic;
SIGNAL \mpu_map|WideOr10~0_combout\ : std_logic;
SIGNAL \mpu_map|WideOr6~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector14~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector14~1_combout\ : std_logic;
SIGNAL \mpu_map|Mux0~4_combout\ : std_logic;
SIGNAL \mpu_map|Selector11~1_combout\ : std_logic;
SIGNAL \mpu_map|WideOr3~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector11~2_combout\ : std_logic;
SIGNAL \mpu_map|Selector11~3_combout\ : std_logic;
SIGNAL \mpu_map|WideOr4~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector12~2_combout\ : std_logic;
SIGNAL \mpu_map|Selector12~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector12~3_combout\ : std_logic;
SIGNAL \mpu_map|Mux0~0_combout\ : std_logic;
SIGNAL \mpu_map|WideOr1~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector10~0_combout\ : std_logic;
SIGNAL \mpu_map|WideOr9~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector10~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector9~0_combout\ : std_logic;
SIGNAL \mpu_map|WideOr2~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector9~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector9~2_combout\ : std_logic;
SIGNAL \mpu_map|Mux0~1_combout\ : std_logic;
SIGNAL \mpu_map|WideOr8~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector8~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector8~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector7~0_combout\ : std_logic;
SIGNAL \mpu_map|Selector7~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector7~2_combout\ : std_logic;
SIGNAL \mpu_map|Mux0~2_combout\ : std_logic;
SIGNAL \mpu_map|Mux0~3_combout\ : std_logic;
SIGNAL \mpu_map|Mux0~5_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~6_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~1_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~8_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~9_combout\ : std_logic;
SIGNAL \mpu_map|Selector6~7_combout\ : std_logic;
SIGNAL \mpu_map|sda_r~q\ : std_logic;
SIGNAL \mpu_map|Selector5~8_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~10_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~6_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~7_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~12_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~9_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~3_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~4_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~5_combout\ : std_logic;
SIGNAL \mpu_map|Selector5~11_combout\ : std_logic;
SIGNAL \mpu_map|sda_link~q\ : std_logic;
SIGNAL \de2lcd_map|WideOr2~1_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector1~0_combout\ : std_logic;
SIGNAL \de2lcd_map|LCD_RS~q\ : std_logic;
SIGNAL \de2lcd_map|LCD_E~0_combout\ : std_logic;
SIGNAL \de2lcd_map|LCD_E~q\ : std_logic;
SIGNAL \mpu_map|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \de2lcd_map|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \de2lcd_map|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mpu_map|times\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mpu_map|cnt_10ms\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mpu_map|db_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mpu_map|cnt_sum\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clock_map|counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \mpu_map|ALT_INV_sda_r~q\ : std_logic;
SIGNAL \de2lcd_map|ALT_INV_state.HOLD~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk_50Mhz <= clk_50Mhz;
LCD_RS <= ww_LCD_RS;
LCD_E <= ww_LCD_E;
LCD_ON <= ww_LCD_ON;
RESET_LED <= ww_RESET_LED;
SEC_LED <= ww_SEC_LED;
LCD_RW <= ww_LCD_RW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\clock_map|temporal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_map|temporal~q\);

\de2lcd_map|CLK_400HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \de2lcd_map|CLK_400HZ~q\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\mpu_map|ALT_INV_sda_r~q\ <= NOT \mpu_map|sda_r~q\;
\de2lcd_map|ALT_INV_state.HOLD~q\ <= NOT \de2lcd_map|state.HOLD~q\;

-- Location: IOOBUF_X0_Y52_N16
\DATA_BUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\DATA_BUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\DATA_BUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\DATA_BUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\DATA_BUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\DATA_BUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\DATA_BUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\DATA_BUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|DATA_BUS_VALUE\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[7]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mpu_map|scl_r~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mpu_map|ALT_INV_sda_r~q\,
	oe => \mpu_map|sda_link~q\,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|LCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de2lcd_map|LCD_E~q\,
	devoe => ww_devoe,
	o => \LCD_E~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\RESET_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_reset~input_o\,
	devoe => ww_devoe,
	o => \RESET_LED~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\SEC_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEC_LED~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: CLKCTRL_G4
\clk_50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y40_N12
\de2lcd_map|CLK_COUNT_400HZ[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[0]~20_combout\ = \de2lcd_map|CLK_COUNT_400HZ\(0) $ (VCC)
-- \de2lcd_map|CLK_COUNT_400HZ[0]~21\ = CARRY(\de2lcd_map|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \de2lcd_map|CLK_COUNT_400HZ[0]~20_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[0]~21\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X113_Y39_N10
\de2lcd_map|CLK_COUNT_400HZ[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[15]~51_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(15) & (!\de2lcd_map|CLK_COUNT_400HZ[14]~50\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(15) & ((\de2lcd_map|CLK_COUNT_400HZ[14]~50\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[15]~52\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[14]~50\) # (!\de2lcd_map|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[14]~50\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[15]~51_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[15]~52\);

-- Location: LCCOMB_X113_Y39_N12
\de2lcd_map|CLK_COUNT_400HZ[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[16]~53_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(16) & (\de2lcd_map|CLK_COUNT_400HZ[15]~52\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(16) & (!\de2lcd_map|CLK_COUNT_400HZ[15]~52\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[16]~54\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(16) & !\de2lcd_map|CLK_COUNT_400HZ[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[15]~52\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[16]~53_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[16]~54\);

-- Location: FF_X113_Y39_N13
\de2lcd_map|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[16]~53_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X113_Y39_N14
\de2lcd_map|CLK_COUNT_400HZ[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[17]~55_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(17) & (!\de2lcd_map|CLK_COUNT_400HZ[16]~54\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(17) & ((\de2lcd_map|CLK_COUNT_400HZ[16]~54\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[17]~56\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[16]~54\) # (!\de2lcd_map|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[16]~54\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[17]~55_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[17]~56\);

-- Location: FF_X113_Y39_N15
\de2lcd_map|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[17]~55_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X113_Y39_N16
\de2lcd_map|CLK_COUNT_400HZ[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[18]~57_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(18) & (\de2lcd_map|CLK_COUNT_400HZ[17]~56\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(18) & (!\de2lcd_map|CLK_COUNT_400HZ[17]~56\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[18]~58\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(18) & !\de2lcd_map|CLK_COUNT_400HZ[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[17]~56\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[18]~57_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[18]~58\);

-- Location: FF_X113_Y39_N17
\de2lcd_map|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[18]~57_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X113_Y39_N18
\de2lcd_map|CLK_COUNT_400HZ[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[19]~59_combout\ = \de2lcd_map|CLK_COUNT_400HZ[18]~58\ $ (\de2lcd_map|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \de2lcd_map|CLK_COUNT_400HZ\(19),
	cin => \de2lcd_map|CLK_COUNT_400HZ[18]~58\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[19]~59_combout\);

-- Location: FF_X113_Y39_N19
\de2lcd_map|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[19]~59_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X113_Y39_N24
\de2lcd_map|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~4_combout\ = (!\de2lcd_map|CLK_COUNT_400HZ\(16) & (!\de2lcd_map|CLK_COUNT_400HZ\(19) & (!\de2lcd_map|CLK_COUNT_400HZ\(17) & !\de2lcd_map|CLK_COUNT_400HZ\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(16),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(19),
	datac => \de2lcd_map|CLK_COUNT_400HZ\(17),
	datad => \de2lcd_map|CLK_COUNT_400HZ\(18),
	combout => \de2lcd_map|LessThan0~4_combout\);

-- Location: LCCOMB_X113_Y40_N4
\de2lcd_map|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~0_combout\ = ((!\de2lcd_map|CLK_COUNT_400HZ\(2) & (!\de2lcd_map|CLK_COUNT_400HZ\(3) & !\de2lcd_map|CLK_COUNT_400HZ\(4)))) # (!\de2lcd_map|CLK_COUNT_400HZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(2),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(3),
	datac => \de2lcd_map|CLK_COUNT_400HZ\(5),
	datad => \de2lcd_map|CLK_COUNT_400HZ\(4),
	combout => \de2lcd_map|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y40_N6
\de2lcd_map|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~1_combout\ = (!\de2lcd_map|CLK_COUNT_400HZ\(7) & (!\de2lcd_map|CLK_COUNT_400HZ\(6) & (!\de2lcd_map|CLK_COUNT_400HZ\(9) & !\de2lcd_map|CLK_COUNT_400HZ\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(7),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(6),
	datac => \de2lcd_map|CLK_COUNT_400HZ\(9),
	datad => \de2lcd_map|CLK_COUNT_400HZ\(8),
	combout => \de2lcd_map|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y39_N28
\de2lcd_map|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~2_combout\ = (!\de2lcd_map|CLK_COUNT_400HZ\(11) & (((\de2lcd_map|LessThan0~0_combout\ & \de2lcd_map|LessThan0~1_combout\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(10),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(11),
	datac => \de2lcd_map|LessThan0~0_combout\,
	datad => \de2lcd_map|LessThan0~1_combout\,
	combout => \de2lcd_map|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y39_N22
\de2lcd_map|CLK_COUNT_400HZ[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\ = (((!\de2lcd_map|LessThan0~3_combout\ & !\de2lcd_map|LessThan0~2_combout\)) # (!\de2lcd_map|LessThan0~4_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \de2lcd_map|LessThan0~4_combout\,
	datac => \de2lcd_map|LessThan0~3_combout\,
	datad => \de2lcd_map|LessThan0~2_combout\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\);

-- Location: FF_X113_Y40_N13
\de2lcd_map|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X113_Y40_N14
\de2lcd_map|CLK_COUNT_400HZ[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[1]~22_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(1) & (!\de2lcd_map|CLK_COUNT_400HZ[0]~21\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(1) & ((\de2lcd_map|CLK_COUNT_400HZ[0]~21\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[1]~23\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[0]~21\) # (!\de2lcd_map|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[0]~21\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[1]~22_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[1]~23\);

-- Location: FF_X113_Y40_N15
\de2lcd_map|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X113_Y40_N16
\de2lcd_map|CLK_COUNT_400HZ[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[2]~24_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(2) & (\de2lcd_map|CLK_COUNT_400HZ[1]~23\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(2) & (!\de2lcd_map|CLK_COUNT_400HZ[1]~23\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[2]~25\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(2) & !\de2lcd_map|CLK_COUNT_400HZ[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[1]~23\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[2]~24_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[2]~25\);

-- Location: FF_X113_Y40_N17
\de2lcd_map|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X113_Y40_N18
\de2lcd_map|CLK_COUNT_400HZ[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[3]~27_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(3) & (!\de2lcd_map|CLK_COUNT_400HZ[2]~25\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(3) & ((\de2lcd_map|CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[3]~28\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[2]~25\) # (!\de2lcd_map|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[2]~25\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[3]~27_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[3]~28\);

-- Location: FF_X113_Y40_N19
\de2lcd_map|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[3]~27_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X113_Y40_N20
\de2lcd_map|CLK_COUNT_400HZ[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[4]~29_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(4) & (\de2lcd_map|CLK_COUNT_400HZ[3]~28\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(4) & (!\de2lcd_map|CLK_COUNT_400HZ[3]~28\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[4]~30\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(4) & !\de2lcd_map|CLK_COUNT_400HZ[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[3]~28\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[4]~29_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[4]~30\);

-- Location: FF_X113_Y40_N21
\de2lcd_map|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[4]~29_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X113_Y40_N22
\de2lcd_map|CLK_COUNT_400HZ[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[5]~31_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(5) & (!\de2lcd_map|CLK_COUNT_400HZ[4]~30\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(5) & ((\de2lcd_map|CLK_COUNT_400HZ[4]~30\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[5]~32\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[4]~30\) # (!\de2lcd_map|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[4]~30\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[5]~31_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[5]~32\);

-- Location: FF_X113_Y40_N23
\de2lcd_map|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[5]~31_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X113_Y40_N24
\de2lcd_map|CLK_COUNT_400HZ[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[6]~33_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(6) & (\de2lcd_map|CLK_COUNT_400HZ[5]~32\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(6) & (!\de2lcd_map|CLK_COUNT_400HZ[5]~32\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[6]~34\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(6) & !\de2lcd_map|CLK_COUNT_400HZ[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[5]~32\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[6]~33_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[6]~34\);

-- Location: FF_X113_Y40_N25
\de2lcd_map|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[6]~33_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X113_Y40_N26
\de2lcd_map|CLK_COUNT_400HZ[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[7]~35_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(7) & (!\de2lcd_map|CLK_COUNT_400HZ[6]~34\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(7) & ((\de2lcd_map|CLK_COUNT_400HZ[6]~34\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[7]~36\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[6]~34\) # (!\de2lcd_map|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[6]~34\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[7]~35_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[7]~36\);

-- Location: FF_X113_Y40_N27
\de2lcd_map|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[7]~35_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X113_Y40_N28
\de2lcd_map|CLK_COUNT_400HZ[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[8]~37_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(8) & (\de2lcd_map|CLK_COUNT_400HZ[7]~36\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(8) & (!\de2lcd_map|CLK_COUNT_400HZ[7]~36\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[8]~38\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(8) & !\de2lcd_map|CLK_COUNT_400HZ[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[7]~36\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[8]~37_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[8]~38\);

-- Location: FF_X113_Y40_N29
\de2lcd_map|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[8]~37_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X113_Y40_N30
\de2lcd_map|CLK_COUNT_400HZ[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[9]~39_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(9) & (!\de2lcd_map|CLK_COUNT_400HZ[8]~38\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(9) & ((\de2lcd_map|CLK_COUNT_400HZ[8]~38\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[9]~40\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[8]~38\) # (!\de2lcd_map|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[8]~38\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[9]~39_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[9]~40\);

-- Location: FF_X113_Y40_N31
\de2lcd_map|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[9]~39_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X113_Y39_N0
\de2lcd_map|CLK_COUNT_400HZ[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[10]~41_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(10) & (\de2lcd_map|CLK_COUNT_400HZ[9]~40\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(10) & (!\de2lcd_map|CLK_COUNT_400HZ[9]~40\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[10]~42\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(10) & !\de2lcd_map|CLK_COUNT_400HZ[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[9]~40\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[10]~41_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[10]~42\);

-- Location: FF_X113_Y39_N1
\de2lcd_map|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[10]~41_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X113_Y39_N2
\de2lcd_map|CLK_COUNT_400HZ[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[11]~43_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(11) & (!\de2lcd_map|CLK_COUNT_400HZ[10]~42\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(11) & ((\de2lcd_map|CLK_COUNT_400HZ[10]~42\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[11]~44\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[10]~42\) # (!\de2lcd_map|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[10]~42\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[11]~43_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[11]~44\);

-- Location: FF_X113_Y39_N3
\de2lcd_map|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[11]~43_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X113_Y39_N4
\de2lcd_map|CLK_COUNT_400HZ[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[12]~45_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(12) & (\de2lcd_map|CLK_COUNT_400HZ[11]~44\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(12) & (!\de2lcd_map|CLK_COUNT_400HZ[11]~44\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[12]~46\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(12) & !\de2lcd_map|CLK_COUNT_400HZ[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[11]~44\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[12]~45_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[12]~46\);

-- Location: FF_X113_Y39_N5
\de2lcd_map|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[12]~45_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X113_Y39_N6
\de2lcd_map|CLK_COUNT_400HZ[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[13]~47_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(13) & (!\de2lcd_map|CLK_COUNT_400HZ[12]~46\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(13) & ((\de2lcd_map|CLK_COUNT_400HZ[12]~46\) # (GND)))
-- \de2lcd_map|CLK_COUNT_400HZ[13]~48\ = CARRY((!\de2lcd_map|CLK_COUNT_400HZ[12]~46\) # (!\de2lcd_map|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[12]~46\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[13]~47_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[13]~48\);

-- Location: FF_X113_Y39_N7
\de2lcd_map|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[13]~47_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X113_Y39_N8
\de2lcd_map|CLK_COUNT_400HZ[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[14]~49_combout\ = (\de2lcd_map|CLK_COUNT_400HZ\(14) & (\de2lcd_map|CLK_COUNT_400HZ[13]~48\ $ (GND))) # (!\de2lcd_map|CLK_COUNT_400HZ\(14) & (!\de2lcd_map|CLK_COUNT_400HZ[13]~48\ & VCC))
-- \de2lcd_map|CLK_COUNT_400HZ[14]~50\ = CARRY((\de2lcd_map|CLK_COUNT_400HZ\(14) & !\de2lcd_map|CLK_COUNT_400HZ[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \de2lcd_map|CLK_COUNT_400HZ[13]~48\,
	combout => \de2lcd_map|CLK_COUNT_400HZ[14]~49_combout\,
	cout => \de2lcd_map|CLK_COUNT_400HZ[14]~50\);

-- Location: FF_X113_Y39_N9
\de2lcd_map|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[14]~49_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(14));

-- Location: FF_X113_Y39_N11
\de2lcd_map|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[15]~51_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X113_Y39_N26
\de2lcd_map|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~3_combout\ = (((!\de2lcd_map|CLK_COUNT_400HZ\(13)) # (!\de2lcd_map|CLK_COUNT_400HZ\(12))) # (!\de2lcd_map|CLK_COUNT_400HZ\(14))) # (!\de2lcd_map|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(15),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(14),
	datac => \de2lcd_map|CLK_COUNT_400HZ\(12),
	datad => \de2lcd_map|CLK_COUNT_400HZ\(13),
	combout => \de2lcd_map|LessThan0~3_combout\);

-- Location: LCCOMB_X114_Y39_N22
\de2lcd_map|CLK_400HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_400HZ~0_combout\ = \de2lcd_map|CLK_400HZ~q\ $ ((((!\de2lcd_map|LessThan0~3_combout\ & !\de2lcd_map|LessThan0~2_combout\)) # (!\de2lcd_map|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|LessThan0~3_combout\,
	datab => \de2lcd_map|LessThan0~4_combout\,
	datac => \de2lcd_map|CLK_400HZ~q\,
	datad => \de2lcd_map|LessThan0~2_combout\,
	combout => \de2lcd_map|CLK_400HZ~0_combout\);

-- Location: FF_X114_Y39_N21
\de2lcd_map|CLK_400HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \de2lcd_map|CLK_400HZ~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_400HZ~q\);

-- Location: CLKCTRL_G6
\de2lcd_map|CLK_400HZ~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \de2lcd_map|CLK_400HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\);

-- Location: FF_X6_Y48_N31
\de2lcd_map|state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	asdata => \de2lcd_map|state.TOGGLE_E~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.HOLD~q\);

-- Location: LCCOMB_X6_Y48_N18
\de2lcd_map|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LCD_RS~0_combout\ = (!\de2lcd_map|state.HOLD~q\ & !\de2lcd_map|state.TOGGLE_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|LCD_RS~0_combout\);

-- Location: FF_X6_Y48_N29
\de2lcd_map|state.TOGGLE_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	asdata => \de2lcd_map|LCD_RS~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.TOGGLE_E~q\);

-- Location: LCCOMB_X5_Y48_N8
\de2lcd_map|state.RESET1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \de2lcd_map|state.RESET1~feeder_combout\);

-- Location: FF_X5_Y48_N9
\de2lcd_map|state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state.RESET1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.RESET1~q\);

-- Location: LCCOMB_X5_Y48_N16
\de2lcd_map|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector32~0_combout\ = (\de2lcd_map|state.RESET1~q\ & ((\de2lcd_map|next_command.RESET2~q\) # ((!\de2lcd_map|state.HOLD~q\ & !\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.RESET1~q\,
	datac => \de2lcd_map|next_command.RESET2~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector32~0_combout\);

-- Location: FF_X5_Y48_N17
\de2lcd_map|next_command.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.RESET2~q\);

-- Location: LCCOMB_X5_Y48_N12
\de2lcd_map|state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~62_combout\ = (\de2lcd_map|state.HOLD~q\ & !\de2lcd_map|next_command.RESET2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.RESET2~q\,
	combout => \de2lcd_map|state~62_combout\);

-- Location: FF_X5_Y48_N13
\de2lcd_map|state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.RESET2~q\);

-- Location: LCCOMB_X5_Y48_N26
\de2lcd_map|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector33~0_combout\ = (\de2lcd_map|state.RESET2~q\) # ((\de2lcd_map|next_command.RESET3~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.RESET3~q\,
	datad => \de2lcd_map|state.RESET2~q\,
	combout => \de2lcd_map|Selector33~0_combout\);

-- Location: FF_X5_Y48_N27
\de2lcd_map|next_command.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.RESET3~q\);

-- Location: LCCOMB_X5_Y48_N22
\de2lcd_map|state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~63_combout\ = (\de2lcd_map|next_command.RESET3~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|next_command.RESET3~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~63_combout\);

-- Location: FF_X5_Y48_N23
\de2lcd_map|state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.RESET3~q\);

-- Location: LCCOMB_X5_Y48_N14
\de2lcd_map|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector12~0_combout\ = (\de2lcd_map|state.RESET3~q\) # ((\de2lcd_map|next_command.FUNC_SET~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.RESET3~q\,
	datac => \de2lcd_map|next_command.FUNC_SET~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector12~0_combout\);

-- Location: FF_X5_Y48_N15
\de2lcd_map|next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.FUNC_SET~q\);

-- Location: LCCOMB_X5_Y48_N18
\de2lcd_map|state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~61_combout\ = (\de2lcd_map|next_command.FUNC_SET~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.FUNC_SET~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~61_combout\);

-- Location: FF_X5_Y48_N19
\de2lcd_map|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.FUNC_SET~q\);

-- Location: LCCOMB_X6_Y48_N2
\de2lcd_map|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector34~0_combout\ = (\de2lcd_map|state.FUNC_SET~q\) # ((\de2lcd_map|next_command.DISPLAY_OFF~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.DISPLAY_OFF~q\,
	datad => \de2lcd_map|state.FUNC_SET~q\,
	combout => \de2lcd_map|Selector34~0_combout\);

-- Location: FF_X6_Y48_N3
\de2lcd_map|next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.DISPLAY_OFF~q\);

-- Location: LCCOMB_X7_Y48_N2
\de2lcd_map|state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~59_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.DISPLAY_OFF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.DISPLAY_OFF~q\,
	combout => \de2lcd_map|state~59_combout\);

-- Location: FF_X7_Y48_N3
\de2lcd_map|state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X7_Y48_N24
\de2lcd_map|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector35~0_combout\ = (\de2lcd_map|state.DISPLAY_OFF~q\) # ((\de2lcd_map|next_command.DISPLAY_CLEAR~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_OFF~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.DISPLAY_CLEAR~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector35~0_combout\);

-- Location: FF_X7_Y48_N25
\de2lcd_map|next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X7_Y48_N8
\de2lcd_map|state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~60_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.DISPLAY_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.DISPLAY_CLEAR~q\,
	combout => \de2lcd_map|state~60_combout\);

-- Location: FF_X7_Y48_N9
\de2lcd_map|state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X6_Y48_N20
\de2lcd_map|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector9~0_combout\ = (\de2lcd_map|state.DISPLAY_CLEAR~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(0) & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.TOGGLE_E~q\,
	datab => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(0),
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector9~0_combout\);

-- Location: FF_X6_Y48_N21
\de2lcd_map|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X6_Y48_N26
\de2lcd_map|state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~56_combout\ = (\de2lcd_map|DATA_BUS_VALUE\(0) & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|DATA_BUS_VALUE\(0),
	datac => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~56_combout\);

-- Location: FF_X6_Y48_N27
\de2lcd_map|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.DISPLAY_ON~q\);

-- Location: LCCOMB_X6_Y48_N22
\de2lcd_map|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector14~0_combout\ = (\de2lcd_map|state.DISPLAY_ON~q\) # ((\de2lcd_map|next_command.MODE_SET~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_ON~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.MODE_SET~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector14~0_combout\);

-- Location: FF_X6_Y48_N23
\de2lcd_map|next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.MODE_SET~q\);

-- Location: LCCOMB_X6_Y48_N0
\de2lcd_map|state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~57_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.MODE_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.MODE_SET~q\,
	combout => \de2lcd_map|state~57_combout\);

-- Location: FF_X6_Y48_N1
\de2lcd_map|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.MODE_SET~q\);

-- Location: LCCOMB_X5_Y48_N4
\de2lcd_map|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector17~0_combout\ = (\de2lcd_map|state.WRITE_CHAR2~q\) # ((\de2lcd_map|next_command.WRITE_CHAR3~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR3~q\,
	datad => \de2lcd_map|state.WRITE_CHAR2~q\,
	combout => \de2lcd_map|Selector17~0_combout\);

-- Location: FF_X5_Y48_N5
\de2lcd_map|next_command.WRITE_CHAR3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR3~q\);

-- Location: LCCOMB_X8_Y48_N16
\de2lcd_map|state~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~67_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR3~q\,
	combout => \de2lcd_map|state~67_combout\);

-- Location: FF_X8_Y48_N17
\de2lcd_map|state.WRITE_CHAR3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR3~q\);

-- Location: LCCOMB_X8_Y48_N18
\de2lcd_map|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector18~0_combout\ = (\de2lcd_map|state.WRITE_CHAR3~q\) # ((\de2lcd_map|next_command.WRITE_CHAR4~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR3~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR4~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector18~0_combout\);

-- Location: FF_X8_Y48_N19
\de2lcd_map|next_command.WRITE_CHAR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR4~q\);

-- Location: LCCOMB_X8_Y48_N0
\de2lcd_map|state~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~79_combout\ = (\de2lcd_map|next_command.WRITE_CHAR4~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR4~q\,
	datac => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~79_combout\);

-- Location: FF_X8_Y48_N1
\de2lcd_map|state.WRITE_CHAR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR4~q\);

-- Location: LCCOMB_X8_Y48_N26
\de2lcd_map|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector19~0_combout\ = (\de2lcd_map|state.WRITE_CHAR4~q\) # ((\de2lcd_map|next_command.WRITE_CHAR5~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR4~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR5~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector19~0_combout\);

-- Location: FF_X8_Y48_N27
\de2lcd_map|next_command.WRITE_CHAR5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR5~q\);

-- Location: LCCOMB_X8_Y48_N20
\de2lcd_map|state~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~78_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR5~q\,
	combout => \de2lcd_map|state~78_combout\);

-- Location: FF_X8_Y48_N21
\de2lcd_map|state.WRITE_CHAR5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR5~q\);

-- Location: LCCOMB_X9_Y48_N30
\de2lcd_map|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector20~0_combout\ = (\de2lcd_map|state.WRITE_CHAR5~q\) # ((\de2lcd_map|next_command.WRITE_CHAR6~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR5~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR6~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector20~0_combout\);

-- Location: FF_X9_Y48_N31
\de2lcd_map|next_command.WRITE_CHAR6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR6~q\);

-- Location: LCCOMB_X9_Y48_N28
\de2lcd_map|state~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~77_combout\ = (\de2lcd_map|next_command.WRITE_CHAR6~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR6~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~77_combout\);

-- Location: FF_X9_Y48_N29
\de2lcd_map|state.WRITE_CHAR6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR6~q\);

-- Location: LCCOMB_X9_Y48_N18
\de2lcd_map|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector21~0_combout\ = (\de2lcd_map|state.WRITE_CHAR6~q\) # ((\de2lcd_map|next_command.WRITE_CHAR7~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.TOGGLE_E~q\,
	datab => \de2lcd_map|state.WRITE_CHAR6~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR7~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector21~0_combout\);

-- Location: FF_X9_Y48_N19
\de2lcd_map|next_command.WRITE_CHAR7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR7~q\);

-- Location: LCCOMB_X9_Y48_N12
\de2lcd_map|state~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~76_combout\ = (\de2lcd_map|next_command.WRITE_CHAR7~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR7~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~76_combout\);

-- Location: FF_X9_Y48_N13
\de2lcd_map|state.WRITE_CHAR7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR7~q\);

-- Location: LCCOMB_X9_Y48_N10
\de2lcd_map|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector22~0_combout\ = (\de2lcd_map|state.WRITE_CHAR7~q\) # ((\de2lcd_map|next_command.WRITE_CHAR8~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR7~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR8~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector22~0_combout\);

-- Location: FF_X9_Y48_N11
\de2lcd_map|next_command.WRITE_CHAR8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR8~q\);

-- Location: LCCOMB_X9_Y48_N4
\de2lcd_map|state~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~75_combout\ = (\de2lcd_map|next_command.WRITE_CHAR8~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|next_command.WRITE_CHAR8~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~75_combout\);

-- Location: FF_X9_Y48_N5
\de2lcd_map|state.WRITE_CHAR8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR8~q\);

-- Location: LCCOMB_X8_Y48_N30
\de2lcd_map|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector23~0_combout\ = (\de2lcd_map|state.WRITE_CHAR8~q\) # ((\de2lcd_map|next_command.WRITE_CHAR9~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR8~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR9~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector23~0_combout\);

-- Location: FF_X8_Y48_N31
\de2lcd_map|next_command.WRITE_CHAR9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR9~q\);

-- Location: LCCOMB_X8_Y48_N24
\de2lcd_map|state~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~74_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR9~q\,
	combout => \de2lcd_map|state~74_combout\);

-- Location: FF_X8_Y48_N25
\de2lcd_map|state.WRITE_CHAR9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR9~q\);

-- Location: LCCOMB_X7_Y48_N30
\de2lcd_map|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector24~0_combout\ = (\de2lcd_map|state.WRITE_CHAR9~q\) # ((\de2lcd_map|next_command.WRITE_CHAR10~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR10~q\,
	datad => \de2lcd_map|state.WRITE_CHAR9~q\,
	combout => \de2lcd_map|Selector24~0_combout\);

-- Location: FF_X7_Y48_N31
\de2lcd_map|next_command.WRITE_CHAR10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR10~q\);

-- Location: LCCOMB_X7_Y48_N0
\de2lcd_map|state~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~73_combout\ = (\de2lcd_map|next_command.WRITE_CHAR10~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR10~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~73_combout\);

-- Location: FF_X7_Y48_N1
\de2lcd_map|state.WRITE_CHAR10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR10~q\);

-- Location: LCCOMB_X7_Y48_N10
\de2lcd_map|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector25~0_combout\ = (\de2lcd_map|state.WRITE_CHAR10~q\) # ((\de2lcd_map|next_command.WRITE_CHAR11~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR11~q\,
	datad => \de2lcd_map|state.WRITE_CHAR10~q\,
	combout => \de2lcd_map|Selector25~0_combout\);

-- Location: FF_X7_Y48_N11
\de2lcd_map|next_command.WRITE_CHAR11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR11~q\);

-- Location: LCCOMB_X8_Y48_N6
\de2lcd_map|state~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~72_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.WRITE_CHAR11~q\,
	combout => \de2lcd_map|state~72_combout\);

-- Location: FF_X8_Y48_N7
\de2lcd_map|state.WRITE_CHAR11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR11~q\);

-- Location: LCCOMB_X8_Y48_N14
\de2lcd_map|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector26~0_combout\ = (\de2lcd_map|state.WRITE_CHAR11~q\) # ((\de2lcd_map|next_command.WRITE_CHAR12~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR12~q\,
	datad => \de2lcd_map|state.WRITE_CHAR11~q\,
	combout => \de2lcd_map|Selector26~0_combout\);

-- Location: FF_X8_Y48_N15
\de2lcd_map|next_command.WRITE_CHAR12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR12~q\);

-- Location: LCCOMB_X8_Y48_N22
\de2lcd_map|state~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~68_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR12~q\,
	combout => \de2lcd_map|state~68_combout\);

-- Location: FF_X8_Y48_N23
\de2lcd_map|state.WRITE_CHAR12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR12~q\);

-- Location: LCCOMB_X8_Y48_N12
\de2lcd_map|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector27~0_combout\ = (\de2lcd_map|state.WRITE_CHAR12~q\) # ((\de2lcd_map|next_command.WRITE_CHAR13~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR12~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR13~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector27~0_combout\);

-- Location: FF_X8_Y48_N13
\de2lcd_map|next_command.WRITE_CHAR13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR13~q\);

-- Location: LCCOMB_X8_Y48_N8
\de2lcd_map|state~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~69_combout\ = (\de2lcd_map|next_command.WRITE_CHAR13~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR13~q\,
	datac => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~69_combout\);

-- Location: FF_X8_Y48_N9
\de2lcd_map|state.WRITE_CHAR13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR13~q\);

-- Location: LCCOMB_X8_Y48_N2
\de2lcd_map|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector28~0_combout\ = (\de2lcd_map|state.WRITE_CHAR13~q\) # ((\de2lcd_map|next_command.WRITE_CHAR14~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR13~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR14~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector28~0_combout\);

-- Location: FF_X8_Y48_N3
\de2lcd_map|next_command.WRITE_CHAR14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR14~q\);

-- Location: LCCOMB_X8_Y48_N10
\de2lcd_map|state~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~70_combout\ = (\de2lcd_map|next_command.WRITE_CHAR14~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR14~q\,
	datac => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~70_combout\);

-- Location: FF_X8_Y48_N11
\de2lcd_map|state.WRITE_CHAR14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR14~q\);

-- Location: LCCOMB_X8_Y48_N28
\de2lcd_map|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector29~0_combout\ = (\de2lcd_map|state.WRITE_CHAR14~q\) # ((\de2lcd_map|next_command.WRITE_CHAR15~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR14~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR15~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector29~0_combout\);

-- Location: FF_X8_Y48_N29
\de2lcd_map|next_command.WRITE_CHAR15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR15~q\);

-- Location: LCCOMB_X7_Y48_N12
\de2lcd_map|state~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~71_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.WRITE_CHAR15~q\,
	combout => \de2lcd_map|state~71_combout\);

-- Location: FF_X7_Y48_N13
\de2lcd_map|state.WRITE_CHAR15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR15~q\);

-- Location: LCCOMB_X7_Y48_N4
\de2lcd_map|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector30~0_combout\ = (\de2lcd_map|state.WRITE_CHAR15~q\) # ((\de2lcd_map|next_command.WRITE_CHAR16~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR16~q\,
	datad => \de2lcd_map|state.WRITE_CHAR15~q\,
	combout => \de2lcd_map|Selector30~0_combout\);

-- Location: FF_X7_Y48_N5
\de2lcd_map|next_command.WRITE_CHAR16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR16~q\);

-- Location: LCCOMB_X7_Y48_N18
\de2lcd_map|state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~64_combout\ = (\de2lcd_map|next_command.WRITE_CHAR16~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR16~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~64_combout\);

-- Location: FF_X7_Y48_N19
\de2lcd_map|state.WRITE_CHAR16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR16~q\);

-- Location: LCCOMB_X7_Y48_N14
\de2lcd_map|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector31~0_combout\ = (\de2lcd_map|state.WRITE_CHAR16~q\) # ((\de2lcd_map|next_command.RETURN_HOME~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.RETURN_HOME~q\,
	datad => \de2lcd_map|state.WRITE_CHAR16~q\,
	combout => \de2lcd_map|Selector31~0_combout\);

-- Location: FF_X7_Y48_N15
\de2lcd_map|next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X7_Y48_N28
\de2lcd_map|state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~58_combout\ = (\de2lcd_map|next_command.RETURN_HOME~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.RETURN_HOME~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~58_combout\);

-- Location: FF_X7_Y48_N29
\de2lcd_map|state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.RETURN_HOME~q\);

-- Location: LCCOMB_X6_Y48_N16
\de2lcd_map|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector15~0_combout\ = (\de2lcd_map|state.MODE_SET~q\) # ((\de2lcd_map|state.RETURN_HOME~q\) # ((\de2lcd_map|next_command.WRITE_CHAR1~q\ & !\de2lcd_map|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.MODE_SET~q\,
	datab => \de2lcd_map|state.RETURN_HOME~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR1~q\,
	datad => \de2lcd_map|LCD_RS~0_combout\,
	combout => \de2lcd_map|Selector15~0_combout\);

-- Location: FF_X6_Y48_N17
\de2lcd_map|next_command.WRITE_CHAR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.WRITE_CHAR1~q\);

-- Location: LCCOMB_X6_Y48_N6
\de2lcd_map|state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~66_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR1~q\,
	combout => \de2lcd_map|state~66_combout\);

-- Location: FF_X6_Y48_N7
\de2lcd_map|state.WRITE_CHAR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR1~q\);

-- Location: LCCOMB_X5_Y48_N24
\de2lcd_map|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector3~0_combout\ = (\de2lcd_map|state.WRITE_CHAR1~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(6) & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(6),
	datad => \de2lcd_map|state.WRITE_CHAR1~q\,
	combout => \de2lcd_map|Selector3~0_combout\);

-- Location: FF_X5_Y48_N25
\de2lcd_map|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X5_Y48_N6
\de2lcd_map|state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~65_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|DATA_BUS_VALUE\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|DATA_BUS_VALUE\(6),
	combout => \de2lcd_map|state~65_combout\);

-- Location: FF_X5_Y48_N7
\de2lcd_map|state.WRITE_CHAR2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|state~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|state.WRITE_CHAR2~q\);

-- Location: LCCOMB_X6_Y48_N8
\de2lcd_map|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector8~0_combout\ = (\de2lcd_map|state.MODE_SET~q\) # ((\de2lcd_map|state.WRITE_CHAR2~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(1) & !\de2lcd_map|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.MODE_SET~q\,
	datab => \de2lcd_map|state.WRITE_CHAR2~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(1),
	datad => \de2lcd_map|LCD_RS~0_combout\,
	combout => \de2lcd_map|Selector8~0_combout\);

-- Location: FF_X6_Y48_N9
\de2lcd_map|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X6_Y48_N14
\de2lcd_map|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector7~0_combout\ = (\de2lcd_map|state.DISPLAY_ON~q\) # ((\de2lcd_map|state.MODE_SET~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(2) & !\de2lcd_map|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_ON~q\,
	datab => \de2lcd_map|state.MODE_SET~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(2),
	datad => \de2lcd_map|LCD_RS~0_combout\,
	combout => \de2lcd_map|Selector7~0_combout\);

-- Location: FF_X6_Y48_N15
\de2lcd_map|DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X6_Y48_N30
\de2lcd_map|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector6~0_combout\ = (\de2lcd_map|state.DISPLAY_ON~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(3) & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_ON~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|DATA_BUS_VALUE\(3),
	combout => \de2lcd_map|Selector6~0_combout\);

-- Location: LCCOMB_X6_Y48_N28
\de2lcd_map|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector6~1_combout\ = (\de2lcd_map|state.WRITE_CHAR1~q\) # ((\de2lcd_map|state.WRITE_CHAR2~q\) # (\de2lcd_map|state.DISPLAY_OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR1~q\,
	datab => \de2lcd_map|state.WRITE_CHAR2~q\,
	datad => \de2lcd_map|state.DISPLAY_OFF~q\,
	combout => \de2lcd_map|Selector6~1_combout\);

-- Location: LCCOMB_X5_Y48_N20
\de2lcd_map|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|WideOr2~2_combout\ = (!\de2lcd_map|state.RESET3~q\ & (!\de2lcd_map|state.FUNC_SET~q\ & (\de2lcd_map|state.RESET1~q\ & !\de2lcd_map|state.RESET2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.RESET3~q\,
	datab => \de2lcd_map|state.FUNC_SET~q\,
	datac => \de2lcd_map|state.RESET1~q\,
	datad => \de2lcd_map|state.RESET2~q\,
	combout => \de2lcd_map|WideOr2~2_combout\);

-- Location: LCCOMB_X6_Y48_N12
\de2lcd_map|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector6~2_combout\ = (\de2lcd_map|Selector6~0_combout\) # ((\de2lcd_map|Selector6~1_combout\) # (!\de2lcd_map|WideOr2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|Selector6~0_combout\,
	datac => \de2lcd_map|Selector6~1_combout\,
	datad => \de2lcd_map|WideOr2~2_combout\,
	combout => \de2lcd_map|Selector6~2_combout\);

-- Location: FF_X6_Y48_N13
\de2lcd_map|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X6_Y48_N24
\de2lcd_map|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|WideOr2~0_combout\ = (!\de2lcd_map|state.HOLD~q\ & (!\de2lcd_map|state.MODE_SET~q\ & (!\de2lcd_map|state.DISPLAY_ON~q\ & !\de2lcd_map|state.TOGGLE_E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.MODE_SET~q\,
	datac => \de2lcd_map|state.DISPLAY_ON~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|WideOr2~0_combout\);

-- Location: LCCOMB_X7_Y48_N26
\de2lcd_map|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector5~1_combout\ = (!\de2lcd_map|state.WRITE_CHAR15~q\ & (!\de2lcd_map|state.DISPLAY_OFF~q\ & (!\de2lcd_map|state.DISPLAY_CLEAR~q\ & !\de2lcd_map|state.WRITE_CHAR16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR15~q\,
	datab => \de2lcd_map|state.DISPLAY_OFF~q\,
	datac => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datad => \de2lcd_map|state.WRITE_CHAR16~q\,
	combout => \de2lcd_map|Selector5~1_combout\);

-- Location: LCCOMB_X8_Y48_N4
\de2lcd_map|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector5~0_combout\ = (!\de2lcd_map|state.WRITE_CHAR14~q\ & (!\de2lcd_map|state.WRITE_CHAR13~q\ & (!\de2lcd_map|state.WRITE_CHAR12~q\ & !\de2lcd_map|state.WRITE_CHAR3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR14~q\,
	datab => \de2lcd_map|state.WRITE_CHAR13~q\,
	datac => \de2lcd_map|state.WRITE_CHAR12~q\,
	datad => \de2lcd_map|state.WRITE_CHAR3~q\,
	combout => \de2lcd_map|Selector5~0_combout\);

-- Location: LCCOMB_X7_Y48_N20
\de2lcd_map|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector5~2_combout\ = (!\de2lcd_map|state.RETURN_HOME~q\ & (\de2lcd_map|Selector5~1_combout\ & \de2lcd_map|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.RETURN_HOME~q\,
	datac => \de2lcd_map|Selector5~1_combout\,
	datad => \de2lcd_map|Selector5~0_combout\,
	combout => \de2lcd_map|Selector5~2_combout\);

-- Location: LCCOMB_X7_Y48_N6
\de2lcd_map|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector5~3_combout\ = (\de2lcd_map|LCD_RS~0_combout\ & (\de2lcd_map|WideOr2~0_combout\ & ((\de2lcd_map|Selector5~2_combout\)))) # (!\de2lcd_map|LCD_RS~0_combout\ & ((\de2lcd_map|DATA_BUS_VALUE\(4)) # ((\de2lcd_map|WideOr2~0_combout\ & 
-- \de2lcd_map|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|LCD_RS~0_combout\,
	datab => \de2lcd_map|WideOr2~0_combout\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(4),
	datad => \de2lcd_map|Selector5~2_combout\,
	combout => \de2lcd_map|Selector5~3_combout\);

-- Location: FF_X7_Y48_N7
\de2lcd_map|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X7_Y48_N22
\de2lcd_map|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector4~0_combout\ = (!\de2lcd_map|state.DISPLAY_CLEAR~q\ & (!\de2lcd_map|state.DISPLAY_OFF~q\ & !\de2lcd_map|state.RETURN_HOME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datac => \de2lcd_map|state.DISPLAY_OFF~q\,
	datad => \de2lcd_map|state.RETURN_HOME~q\,
	combout => \de2lcd_map|Selector4~0_combout\);

-- Location: LCCOMB_X6_Y48_N10
\de2lcd_map|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector4~1_combout\ = (\de2lcd_map|LCD_RS~0_combout\ & (\de2lcd_map|WideOr2~0_combout\ & ((\de2lcd_map|Selector4~0_combout\)))) # (!\de2lcd_map|LCD_RS~0_combout\ & ((\de2lcd_map|DATA_BUS_VALUE\(5)) # ((\de2lcd_map|WideOr2~0_combout\ & 
-- \de2lcd_map|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|LCD_RS~0_combout\,
	datab => \de2lcd_map|WideOr2~0_combout\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(5),
	datad => \de2lcd_map|Selector4~0_combout\,
	combout => \de2lcd_map|Selector4~1_combout\);

-- Location: FF_X6_Y48_N11
\de2lcd_map|DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X7_Y48_N16
\de2lcd_map|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector2~0_combout\ = (\de2lcd_map|state.RETURN_HOME~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(7) & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(7),
	datad => \de2lcd_map|state.RETURN_HOME~q\,
	combout => \de2lcd_map|Selector2~0_combout\);

-- Location: FF_X7_Y48_N17
\de2lcd_map|DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X114_Y41_N16
\clock_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~0_combout\ = \clock_map|counter\(0) $ (VCC)
-- \clock_map|Add0~1\ = CARRY(\clock_map|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(0),
	datad => VCC,
	combout => \clock_map|Add0~0_combout\,
	cout => \clock_map|Add0~1\);

-- Location: FF_X114_Y41_N17
\clock_map|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(0));

-- Location: LCCOMB_X114_Y41_N18
\clock_map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~2_combout\ = (\clock_map|counter\(1) & (!\clock_map|Add0~1\)) # (!\clock_map|counter\(1) & ((\clock_map|Add0~1\) # (GND)))
-- \clock_map|Add0~3\ = CARRY((!\clock_map|Add0~1\) # (!\clock_map|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(1),
	datad => VCC,
	cin => \clock_map|Add0~1\,
	combout => \clock_map|Add0~2_combout\,
	cout => \clock_map|Add0~3\);

-- Location: FF_X114_Y41_N19
\clock_map|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(1));

-- Location: LCCOMB_X114_Y41_N20
\clock_map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~4_combout\ = (\clock_map|counter\(2) & (\clock_map|Add0~3\ $ (GND))) # (!\clock_map|counter\(2) & (!\clock_map|Add0~3\ & VCC))
-- \clock_map|Add0~5\ = CARRY((\clock_map|counter\(2) & !\clock_map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(2),
	datad => VCC,
	cin => \clock_map|Add0~3\,
	combout => \clock_map|Add0~4_combout\,
	cout => \clock_map|Add0~5\);

-- Location: FF_X114_Y41_N21
\clock_map|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(2));

-- Location: LCCOMB_X114_Y41_N22
\clock_map|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~6_combout\ = (\clock_map|counter\(3) & (!\clock_map|Add0~5\)) # (!\clock_map|counter\(3) & ((\clock_map|Add0~5\) # (GND)))
-- \clock_map|Add0~7\ = CARRY((!\clock_map|Add0~5\) # (!\clock_map|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(3),
	datad => VCC,
	cin => \clock_map|Add0~5\,
	combout => \clock_map|Add0~6_combout\,
	cout => \clock_map|Add0~7\);

-- Location: LCCOMB_X114_Y41_N6
\clock_map|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|counter~6_combout\ = (\clock_map|Add0~6_combout\ & ((!\clock_map|Equal0~4_combout\) # (!\clock_map|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(1),
	datac => \clock_map|Add0~6_combout\,
	datad => \clock_map|Equal0~4_combout\,
	combout => \clock_map|counter~6_combout\);

-- Location: FF_X114_Y41_N7
\clock_map|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|counter~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(3));

-- Location: LCCOMB_X114_Y41_N24
\clock_map|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~8_combout\ = (\clock_map|counter\(4) & (\clock_map|Add0~7\ $ (GND))) # (!\clock_map|counter\(4) & (!\clock_map|Add0~7\ & VCC))
-- \clock_map|Add0~9\ = CARRY((\clock_map|counter\(4) & !\clock_map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(4),
	datad => VCC,
	cin => \clock_map|Add0~7\,
	combout => \clock_map|Add0~8_combout\,
	cout => \clock_map|Add0~9\);

-- Location: FF_X114_Y41_N25
\clock_map|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(4));

-- Location: LCCOMB_X114_Y41_N26
\clock_map|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~10_combout\ = (\clock_map|counter\(5) & (!\clock_map|Add0~9\)) # (!\clock_map|counter\(5) & ((\clock_map|Add0~9\) # (GND)))
-- \clock_map|Add0~11\ = CARRY((!\clock_map|Add0~9\) # (!\clock_map|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(5),
	datad => VCC,
	cin => \clock_map|Add0~9\,
	combout => \clock_map|Add0~10_combout\,
	cout => \clock_map|Add0~11\);

-- Location: FF_X114_Y41_N27
\clock_map|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(5));

-- Location: LCCOMB_X114_Y41_N10
\clock_map|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Equal0~3_combout\ = (\clock_map|counter\(2) & (!\clock_map|counter\(4) & (!\clock_map|counter\(5) & !\clock_map|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(2),
	datab => \clock_map|counter\(4),
	datac => \clock_map|counter\(5),
	datad => \clock_map|counter\(3),
	combout => \clock_map|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y41_N28
\clock_map|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~12_combout\ = (\clock_map|counter\(6) & (\clock_map|Add0~11\ $ (GND))) # (!\clock_map|counter\(6) & (!\clock_map|Add0~11\ & VCC))
-- \clock_map|Add0~13\ = CARRY((\clock_map|counter\(6) & !\clock_map|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(6),
	datad => VCC,
	cin => \clock_map|Add0~11\,
	combout => \clock_map|Add0~12_combout\,
	cout => \clock_map|Add0~13\);

-- Location: LCCOMB_X114_Y41_N4
\clock_map|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|counter~5_combout\ = (\clock_map|Add0~12_combout\ & ((!\clock_map|counter\(1)) # (!\clock_map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|Equal0~4_combout\,
	datac => \clock_map|counter\(1),
	datad => \clock_map|Add0~12_combout\,
	combout => \clock_map|counter~5_combout\);

-- Location: FF_X114_Y41_N5
\clock_map|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|counter~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(6));

-- Location: LCCOMB_X114_Y41_N30
\clock_map|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~14_combout\ = (\clock_map|counter\(7) & (!\clock_map|Add0~13\)) # (!\clock_map|counter\(7) & ((\clock_map|Add0~13\) # (GND)))
-- \clock_map|Add0~15\ = CARRY((!\clock_map|Add0~13\) # (!\clock_map|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(7),
	datad => VCC,
	cin => \clock_map|Add0~13\,
	combout => \clock_map|Add0~14_combout\,
	cout => \clock_map|Add0~15\);

-- Location: FF_X114_Y41_N31
\clock_map|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(7));

-- Location: LCCOMB_X114_Y40_N0
\clock_map|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~16_combout\ = (\clock_map|counter\(8) & (\clock_map|Add0~15\ $ (GND))) # (!\clock_map|counter\(8) & (!\clock_map|Add0~15\ & VCC))
-- \clock_map|Add0~17\ = CARRY((\clock_map|counter\(8) & !\clock_map|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(8),
	datad => VCC,
	cin => \clock_map|Add0~15\,
	combout => \clock_map|Add0~16_combout\,
	cout => \clock_map|Add0~17\);

-- Location: FF_X114_Y40_N1
\clock_map|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(8));

-- Location: LCCOMB_X114_Y40_N2
\clock_map|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~18_combout\ = (\clock_map|counter\(9) & (!\clock_map|Add0~17\)) # (!\clock_map|counter\(9) & ((\clock_map|Add0~17\) # (GND)))
-- \clock_map|Add0~19\ = CARRY((!\clock_map|Add0~17\) # (!\clock_map|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(9),
	datad => VCC,
	cin => \clock_map|Add0~17\,
	combout => \clock_map|Add0~18_combout\,
	cout => \clock_map|Add0~19\);

-- Location: FF_X114_Y40_N3
\clock_map|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(9));

-- Location: LCCOMB_X114_Y40_N4
\clock_map|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~20_combout\ = (\clock_map|counter\(10) & (\clock_map|Add0~19\ $ (GND))) # (!\clock_map|counter\(10) & (!\clock_map|Add0~19\ & VCC))
-- \clock_map|Add0~21\ = CARRY((\clock_map|counter\(10) & !\clock_map|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(10),
	datad => VCC,
	cin => \clock_map|Add0~19\,
	combout => \clock_map|Add0~20_combout\,
	cout => \clock_map|Add0~21\);

-- Location: FF_X114_Y40_N5
\clock_map|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(10));

-- Location: LCCOMB_X114_Y40_N6
\clock_map|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~22_combout\ = (\clock_map|counter\(11) & (!\clock_map|Add0~21\)) # (!\clock_map|counter\(11) & ((\clock_map|Add0~21\) # (GND)))
-- \clock_map|Add0~23\ = CARRY((!\clock_map|Add0~21\) # (!\clock_map|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(11),
	datad => VCC,
	cin => \clock_map|Add0~21\,
	combout => \clock_map|Add0~22_combout\,
	cout => \clock_map|Add0~23\);

-- Location: LCCOMB_X114_Y40_N26
\clock_map|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|counter~4_combout\ = (\clock_map|Add0~22_combout\ & ((!\clock_map|Equal0~4_combout\) # (!\clock_map|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(1),
	datac => \clock_map|Equal0~4_combout\,
	datad => \clock_map|Add0~22_combout\,
	combout => \clock_map|counter~4_combout\);

-- Location: FF_X114_Y40_N27
\clock_map|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|counter~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(11));

-- Location: LCCOMB_X114_Y40_N8
\clock_map|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~24_combout\ = (\clock_map|counter\(12) & (\clock_map|Add0~23\ $ (GND))) # (!\clock_map|counter\(12) & (!\clock_map|Add0~23\ & VCC))
-- \clock_map|Add0~25\ = CARRY((\clock_map|counter\(12) & !\clock_map|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(12),
	datad => VCC,
	cin => \clock_map|Add0~23\,
	combout => \clock_map|Add0~24_combout\,
	cout => \clock_map|Add0~25\);

-- Location: FF_X114_Y40_N9
\clock_map|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|Add0~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(12));

-- Location: LCCOMB_X114_Y40_N10
\clock_map|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~26_combout\ = (\clock_map|counter\(13) & (!\clock_map|Add0~25\)) # (!\clock_map|counter\(13) & ((\clock_map|Add0~25\) # (GND)))
-- \clock_map|Add0~27\ = CARRY((!\clock_map|Add0~25\) # (!\clock_map|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(13),
	datad => VCC,
	cin => \clock_map|Add0~25\,
	combout => \clock_map|Add0~26_combout\,
	cout => \clock_map|Add0~27\);

-- Location: LCCOMB_X114_Y40_N20
\clock_map|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|counter~3_combout\ = (\clock_map|Add0~26_combout\ & ((!\clock_map|Equal0~4_combout\) # (!\clock_map|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(1),
	datac => \clock_map|Equal0~4_combout\,
	datad => \clock_map|Add0~26_combout\,
	combout => \clock_map|counter~3_combout\);

-- Location: FF_X114_Y40_N21
\clock_map|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(13));

-- Location: LCCOMB_X114_Y40_N12
\clock_map|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~28_combout\ = (\clock_map|counter\(14) & (\clock_map|Add0~27\ $ (GND))) # (!\clock_map|counter\(14) & (!\clock_map|Add0~27\ & VCC))
-- \clock_map|Add0~29\ = CARRY((\clock_map|counter\(14) & !\clock_map|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(14),
	datad => VCC,
	cin => \clock_map|Add0~27\,
	combout => \clock_map|Add0~28_combout\,
	cout => \clock_map|Add0~29\);

-- Location: LCCOMB_X114_Y40_N22
\clock_map|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|counter~2_combout\ = (\clock_map|Add0~28_combout\ & ((!\clock_map|Equal0~4_combout\) # (!\clock_map|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(1),
	datac => \clock_map|Equal0~4_combout\,
	datad => \clock_map|Add0~28_combout\,
	combout => \clock_map|counter~2_combout\);

-- Location: FF_X114_Y40_N23
\clock_map|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(14));

-- Location: LCCOMB_X114_Y40_N14
\clock_map|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~30_combout\ = (\clock_map|counter\(15) & (!\clock_map|Add0~29\)) # (!\clock_map|counter\(15) & ((\clock_map|Add0~29\) # (GND)))
-- \clock_map|Add0~31\ = CARRY((!\clock_map|Add0~29\) # (!\clock_map|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(15),
	datad => VCC,
	cin => \clock_map|Add0~29\,
	combout => \clock_map|Add0~30_combout\,
	cout => \clock_map|Add0~31\);

-- Location: LCCOMB_X114_Y40_N28
\clock_map|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|counter~1_combout\ = (\clock_map|Add0~30_combout\ & ((!\clock_map|counter\(1)) # (!\clock_map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|Equal0~4_combout\,
	datac => \clock_map|Add0~30_combout\,
	datad => \clock_map|counter\(1),
	combout => \clock_map|counter~1_combout\);

-- Location: FF_X114_Y40_N29
\clock_map|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(15));

-- Location: LCCOMB_X114_Y40_N16
\clock_map|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Add0~32_combout\ = \clock_map|counter\(16) $ (!\clock_map|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(16),
	cin => \clock_map|Add0~31\,
	combout => \clock_map|Add0~32_combout\);

-- Location: LCCOMB_X114_Y40_N18
\clock_map|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|counter~0_combout\ = (\clock_map|Add0~32_combout\ & ((!\clock_map|Equal0~4_combout\) # (!\clock_map|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|counter\(1),
	datac => \clock_map|Equal0~4_combout\,
	datad => \clock_map|Add0~32_combout\,
	combout => \clock_map|counter~0_combout\);

-- Location: FF_X114_Y40_N19
\clock_map|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|counter\(16));

-- Location: LCCOMB_X114_Y41_N14
\clock_map|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Equal0~0_combout\ = (\clock_map|counter\(16) & (\clock_map|counter\(0) & (\clock_map|counter\(15) & \clock_map|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(16),
	datab => \clock_map|counter\(0),
	datac => \clock_map|counter\(15),
	datad => \clock_map|counter\(14),
	combout => \clock_map|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y40_N24
\clock_map|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Equal0~1_combout\ = (\clock_map|counter\(11) & (!\clock_map|counter\(10) & (!\clock_map|counter\(12) & \clock_map|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(11),
	datab => \clock_map|counter\(10),
	datac => \clock_map|counter\(12),
	datad => \clock_map|counter\(13),
	combout => \clock_map|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y41_N2
\clock_map|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Equal0~2_combout\ = (!\clock_map|counter\(7) & (\clock_map|counter\(6) & (!\clock_map|counter\(8) & !\clock_map|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(7),
	datab => \clock_map|counter\(6),
	datac => \clock_map|counter\(8),
	datad => \clock_map|counter\(9),
	combout => \clock_map|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y41_N0
\clock_map|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|Equal0~4_combout\ = (\clock_map|Equal0~3_combout\ & (\clock_map|Equal0~0_combout\ & (\clock_map|Equal0~1_combout\ & \clock_map|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|Equal0~3_combout\,
	datab => \clock_map|Equal0~0_combout\,
	datac => \clock_map|Equal0~1_combout\,
	datad => \clock_map|Equal0~2_combout\,
	combout => \clock_map|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y41_N8
\clock_map|temporal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|temporal~0_combout\ = \clock_map|temporal~q\ $ (((\clock_map|counter\(1) & \clock_map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_map|counter\(1),
	datab => \clock_map|temporal~q\,
	datad => \clock_map|Equal0~4_combout\,
	combout => \clock_map|temporal~0_combout\);

-- Location: LCCOMB_X114_Y41_N12
\clock_map|temporal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_map|temporal~feeder_combout\ = \clock_map|temporal~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_map|temporal~0_combout\,
	combout => \clock_map|temporal~feeder_combout\);

-- Location: FF_X114_Y41_N13
\clock_map|temporal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clock_map|temporal~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_map|temporal~q\);

-- Location: CLKCTRL_G8
\clock_map|temporal~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_map|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_map|temporal~clkctrl_outclk\);

-- Location: LCCOMB_X107_Y42_N6
\mpu_map|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~0_combout\ = \mpu_map|cnt_sum\(0) $ (VCC)
-- \mpu_map|Add1~1\ = CARRY(\mpu_map|cnt_sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(0),
	datad => VCC,
	combout => \mpu_map|Add1~0_combout\,
	cout => \mpu_map|Add1~1\);

-- Location: FF_X107_Y42_N7
\mpu_map|cnt_sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Add1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(0));

-- Location: LCCOMB_X107_Y42_N8
\mpu_map|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~2_combout\ = (\mpu_map|cnt_sum\(1) & (!\mpu_map|Add1~1\)) # (!\mpu_map|cnt_sum\(1) & ((\mpu_map|Add1~1\) # (GND)))
-- \mpu_map|Add1~3\ = CARRY((!\mpu_map|Add1~1\) # (!\mpu_map|cnt_sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_sum\(1),
	datad => VCC,
	cin => \mpu_map|Add1~1\,
	combout => \mpu_map|Add1~2_combout\,
	cout => \mpu_map|Add1~3\);

-- Location: FF_X107_Y42_N9
\mpu_map|cnt_sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Add1~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(1));

-- Location: LCCOMB_X107_Y42_N10
\mpu_map|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~4_combout\ = (\mpu_map|cnt_sum\(2) & (\mpu_map|Add1~3\ $ (GND))) # (!\mpu_map|cnt_sum\(2) & (!\mpu_map|Add1~3\ & VCC))
-- \mpu_map|Add1~5\ = CARRY((\mpu_map|cnt_sum\(2) & !\mpu_map|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(2),
	datad => VCC,
	cin => \mpu_map|Add1~3\,
	combout => \mpu_map|Add1~4_combout\,
	cout => \mpu_map|Add1~5\);

-- Location: LCCOMB_X107_Y42_N12
\mpu_map|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~6_combout\ = (\mpu_map|cnt_sum\(3) & (!\mpu_map|Add1~5\)) # (!\mpu_map|cnt_sum\(3) & ((\mpu_map|Add1~5\) # (GND)))
-- \mpu_map|Add1~7\ = CARRY((!\mpu_map|Add1~5\) # (!\mpu_map|cnt_sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(3),
	datad => VCC,
	cin => \mpu_map|Add1~5\,
	combout => \mpu_map|Add1~6_combout\,
	cout => \mpu_map|Add1~7\);

-- Location: FF_X107_Y42_N13
\mpu_map|cnt_sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Add1~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(3));

-- Location: LCCOMB_X107_Y42_N14
\mpu_map|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~8_combout\ = (\mpu_map|cnt_sum\(4) & (\mpu_map|Add1~7\ $ (GND))) # (!\mpu_map|cnt_sum\(4) & (!\mpu_map|Add1~7\ & VCC))
-- \mpu_map|Add1~9\ = CARRY((\mpu_map|cnt_sum\(4) & !\mpu_map|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_sum\(4),
	datad => VCC,
	cin => \mpu_map|Add1~7\,
	combout => \mpu_map|Add1~8_combout\,
	cout => \mpu_map|Add1~9\);

-- Location: LCCOMB_X107_Y42_N2
\mpu_map|cnt_sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_sum~3_combout\ = (\mpu_map|Add1~8_combout\ & !\mpu_map|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|Add1~8_combout\,
	datad => \mpu_map|Decoder0~2_combout\,
	combout => \mpu_map|cnt_sum~3_combout\);

-- Location: FF_X107_Y42_N3
\mpu_map|cnt_sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_sum~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(4));

-- Location: LCCOMB_X107_Y42_N16
\mpu_map|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~10_combout\ = (\mpu_map|cnt_sum\(5) & (!\mpu_map|Add1~9\)) # (!\mpu_map|cnt_sum\(5) & ((\mpu_map|Add1~9\) # (GND)))
-- \mpu_map|Add1~11\ = CARRY((!\mpu_map|Add1~9\) # (!\mpu_map|cnt_sum\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_sum\(5),
	datad => VCC,
	cin => \mpu_map|Add1~9\,
	combout => \mpu_map|Add1~10_combout\,
	cout => \mpu_map|Add1~11\);

-- Location: LCCOMB_X107_Y42_N4
\mpu_map|cnt_sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_sum~2_combout\ = (\mpu_map|Add1~10_combout\ & !\mpu_map|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|Add1~10_combout\,
	datad => \mpu_map|Decoder0~2_combout\,
	combout => \mpu_map|cnt_sum~2_combout\);

-- Location: FF_X107_Y42_N5
\mpu_map|cnt_sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_sum~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(5));

-- Location: LCCOMB_X107_Y42_N18
\mpu_map|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~12_combout\ = (\mpu_map|cnt_sum\(6) & (\mpu_map|Add1~11\ $ (GND))) # (!\mpu_map|cnt_sum\(6) & (!\mpu_map|Add1~11\ & VCC))
-- \mpu_map|Add1~13\ = CARRY((\mpu_map|cnt_sum\(6) & !\mpu_map|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_sum\(6),
	datad => VCC,
	cin => \mpu_map|Add1~11\,
	combout => \mpu_map|Add1~12_combout\,
	cout => \mpu_map|Add1~13\);

-- Location: LCCOMB_X107_Y42_N28
\mpu_map|cnt_sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_sum~1_combout\ = (\mpu_map|Add1~12_combout\ & !\mpu_map|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|Add1~12_combout\,
	datad => \mpu_map|Decoder0~2_combout\,
	combout => \mpu_map|cnt_sum~1_combout\);

-- Location: FF_X107_Y42_N29
\mpu_map|cnt_sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_sum~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(6));

-- Location: LCCOMB_X107_Y42_N20
\mpu_map|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~14_combout\ = (\mpu_map|cnt_sum\(7) & (!\mpu_map|Add1~13\)) # (!\mpu_map|cnt_sum\(7) & ((\mpu_map|Add1~13\) # (GND)))
-- \mpu_map|Add1~15\ = CARRY((!\mpu_map|Add1~13\) # (!\mpu_map|cnt_sum\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(7),
	datad => VCC,
	cin => \mpu_map|Add1~13\,
	combout => \mpu_map|Add1~14_combout\,
	cout => \mpu_map|Add1~15\);

-- Location: LCCOMB_X106_Y42_N16
\mpu_map|cnt_sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_sum~4_combout\ = (\mpu_map|Add1~14_combout\ & !\mpu_map|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|Add1~14_combout\,
	datad => \mpu_map|Decoder0~2_combout\,
	combout => \mpu_map|cnt_sum~4_combout\);

-- Location: FF_X106_Y42_N17
\mpu_map|cnt_sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_sum~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(7));

-- Location: LCCOMB_X107_Y42_N22
\mpu_map|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add1~16_combout\ = \mpu_map|cnt_sum\(8) $ (!\mpu_map|Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(8),
	cin => \mpu_map|Add1~15\,
	combout => \mpu_map|Add1~16_combout\);

-- Location: LCCOMB_X107_Y42_N30
\mpu_map|cnt_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_sum~0_combout\ = (\mpu_map|Add1~16_combout\ & !\mpu_map|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|Add1~16_combout\,
	datad => \mpu_map|Decoder0~2_combout\,
	combout => \mpu_map|cnt_sum~0_combout\);

-- Location: FF_X107_Y42_N31
\mpu_map|cnt_sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_sum~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(8));

-- Location: LCCOMB_X107_Y42_N0
\mpu_map|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Decoder0~0_combout\ = (\mpu_map|cnt_sum\(6) & (\mpu_map|cnt_sum\(5) & \mpu_map|cnt_sum\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_sum\(6),
	datac => \mpu_map|cnt_sum\(5),
	datad => \mpu_map|cnt_sum\(4),
	combout => \mpu_map|Decoder0~0_combout\);

-- Location: LCCOMB_X108_Y42_N4
\mpu_map|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Decoder0~1_combout\ = (!\mpu_map|cnt_sum\(3) & (\mpu_map|cnt_sum\(8) & (\mpu_map|Decoder0~0_combout\ & \mpu_map|cnt_sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(3),
	datab => \mpu_map|cnt_sum\(8),
	datac => \mpu_map|Decoder0~0_combout\,
	datad => \mpu_map|cnt_sum\(1),
	combout => \mpu_map|Decoder0~1_combout\);

-- Location: LCCOMB_X107_Y42_N24
\mpu_map|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Decoder0~2_combout\ = (!\mpu_map|cnt_sum\(2) & (\mpu_map|cnt_sum\(0) & (\mpu_map|cnt_sum\(7) & \mpu_map|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(2),
	datab => \mpu_map|cnt_sum\(0),
	datac => \mpu_map|cnt_sum\(7),
	datad => \mpu_map|Decoder0~1_combout\,
	combout => \mpu_map|Decoder0~2_combout\);

-- Location: LCCOMB_X107_Y42_N26
\mpu_map|cnt_sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_sum~5_combout\ = (\mpu_map|Add1~4_combout\ & !\mpu_map|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Add1~4_combout\,
	datad => \mpu_map|Decoder0~2_combout\,
	combout => \mpu_map|cnt_sum~5_combout\);

-- Location: FF_X107_Y42_N27
\mpu_map|cnt_sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_sum~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_sum\(2));

-- Location: LCCOMB_X108_Y42_N2
\mpu_map|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Decoder0~3_combout\ = (\mpu_map|cnt_sum\(3) & (!\mpu_map|cnt_sum\(8) & (\mpu_map|Decoder0~0_combout\ & !\mpu_map|cnt_sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(3),
	datab => \mpu_map|cnt_sum\(8),
	datac => \mpu_map|Decoder0~0_combout\,
	datad => \mpu_map|cnt_sum\(1),
	combout => \mpu_map|Decoder0~3_combout\);

-- Location: LCCOMB_X108_Y42_N8
\mpu_map|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Decoder0~4_combout\ = (!\mpu_map|cnt_sum\(2) & (\mpu_map|cnt_sum\(7) & (\mpu_map|cnt_sum\(0) & \mpu_map|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(2),
	datab => \mpu_map|cnt_sum\(7),
	datac => \mpu_map|cnt_sum\(0),
	datad => \mpu_map|Decoder0~3_combout\,
	combout => \mpu_map|Decoder0~4_combout\);

-- Location: FF_X108_Y42_N9
\mpu_map|cnt.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Decoder0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt.010~q\);

-- Location: FF_X107_Y42_N25
\mpu_map|cnt.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Decoder0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt.000~q\);

-- Location: LCCOMB_X106_Y42_N4
\mpu_map|scl_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|scl_r~2_combout\ = (\mpu_map|cnt.000~q\) # ((!\mpu_map|cnt.010~q\ & \mpu_map|scl_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt.010~q\,
	datac => \mpu_map|scl_r~q\,
	datad => \mpu_map|cnt.000~q\,
	combout => \mpu_map|scl_r~2_combout\);

-- Location: FF_X106_Y42_N5
\mpu_map|scl_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|scl_r~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|scl_r~q\);

-- Location: LCCOMB_X108_Y42_N14
\mpu_map|cnt_10ms[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[2]~19_cout\ = CARRY((\mpu_map|cnt_sum\(1) & \mpu_map|cnt_sum\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(1),
	datab => \mpu_map|cnt_sum\(0),
	datad => VCC,
	cout => \mpu_map|cnt_10ms[2]~19_cout\);

-- Location: LCCOMB_X108_Y42_N16
\mpu_map|cnt_10ms[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[2]~20_combout\ = (\mpu_map|cnt_10ms\(2) & (!\mpu_map|cnt_10ms[2]~19_cout\)) # (!\mpu_map|cnt_10ms\(2) & ((\mpu_map|cnt_10ms[2]~19_cout\) # (GND)))
-- \mpu_map|cnt_10ms[2]~21\ = CARRY((!\mpu_map|cnt_10ms[2]~19_cout\) # (!\mpu_map|cnt_10ms\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(2),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[2]~19_cout\,
	combout => \mpu_map|cnt_10ms[2]~20_combout\,
	cout => \mpu_map|cnt_10ms[2]~21\);

-- Location: FF_X108_Y42_N17
\mpu_map|cnt_10ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[2]~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(2));

-- Location: LCCOMB_X108_Y42_N18
\mpu_map|cnt_10ms[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[3]~22_combout\ = (\mpu_map|cnt_10ms\(3) & (\mpu_map|cnt_10ms[2]~21\ $ (GND))) # (!\mpu_map|cnt_10ms\(3) & (!\mpu_map|cnt_10ms[2]~21\ & VCC))
-- \mpu_map|cnt_10ms[3]~23\ = CARRY((\mpu_map|cnt_10ms\(3) & !\mpu_map|cnt_10ms[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(3),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[2]~21\,
	combout => \mpu_map|cnt_10ms[3]~22_combout\,
	cout => \mpu_map|cnt_10ms[3]~23\);

-- Location: FF_X108_Y42_N19
\mpu_map|cnt_10ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[3]~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(3));

-- Location: LCCOMB_X108_Y42_N20
\mpu_map|cnt_10ms[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[4]~24_combout\ = (\mpu_map|cnt_10ms\(4) & (!\mpu_map|cnt_10ms[3]~23\)) # (!\mpu_map|cnt_10ms\(4) & ((\mpu_map|cnt_10ms[3]~23\) # (GND)))
-- \mpu_map|cnt_10ms[4]~25\ = CARRY((!\mpu_map|cnt_10ms[3]~23\) # (!\mpu_map|cnt_10ms\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(4),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[3]~23\,
	combout => \mpu_map|cnt_10ms[4]~24_combout\,
	cout => \mpu_map|cnt_10ms[4]~25\);

-- Location: FF_X108_Y42_N21
\mpu_map|cnt_10ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[4]~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(4));

-- Location: LCCOMB_X108_Y42_N22
\mpu_map|cnt_10ms[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[5]~26_combout\ = (\mpu_map|cnt_10ms\(5) & (\mpu_map|cnt_10ms[4]~25\ $ (GND))) # (!\mpu_map|cnt_10ms\(5) & (!\mpu_map|cnt_10ms[4]~25\ & VCC))
-- \mpu_map|cnt_10ms[5]~27\ = CARRY((\mpu_map|cnt_10ms\(5) & !\mpu_map|cnt_10ms[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(5),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[4]~25\,
	combout => \mpu_map|cnt_10ms[5]~26_combout\,
	cout => \mpu_map|cnt_10ms[5]~27\);

-- Location: FF_X108_Y42_N23
\mpu_map|cnt_10ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[5]~26_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(5));

-- Location: LCCOMB_X108_Y42_N24
\mpu_map|cnt_10ms[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[6]~28_combout\ = (\mpu_map|cnt_10ms\(6) & (!\mpu_map|cnt_10ms[5]~27\)) # (!\mpu_map|cnt_10ms\(6) & ((\mpu_map|cnt_10ms[5]~27\) # (GND)))
-- \mpu_map|cnt_10ms[6]~29\ = CARRY((!\mpu_map|cnt_10ms[5]~27\) # (!\mpu_map|cnt_10ms\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(6),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[5]~27\,
	combout => \mpu_map|cnt_10ms[6]~28_combout\,
	cout => \mpu_map|cnt_10ms[6]~29\);

-- Location: FF_X108_Y42_N25
\mpu_map|cnt_10ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[6]~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(6));

-- Location: LCCOMB_X108_Y42_N26
\mpu_map|cnt_10ms[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[7]~30_combout\ = (\mpu_map|cnt_10ms\(7) & (\mpu_map|cnt_10ms[6]~29\ $ (GND))) # (!\mpu_map|cnt_10ms\(7) & (!\mpu_map|cnt_10ms[6]~29\ & VCC))
-- \mpu_map|cnt_10ms[7]~31\ = CARRY((\mpu_map|cnt_10ms\(7) & !\mpu_map|cnt_10ms[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(7),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[6]~29\,
	combout => \mpu_map|cnt_10ms[7]~30_combout\,
	cout => \mpu_map|cnt_10ms[7]~31\);

-- Location: FF_X108_Y42_N27
\mpu_map|cnt_10ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[7]~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(7));

-- Location: LCCOMB_X108_Y42_N28
\mpu_map|cnt_10ms[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[8]~32_combout\ = (\mpu_map|cnt_10ms\(8) & (!\mpu_map|cnt_10ms[7]~31\)) # (!\mpu_map|cnt_10ms\(8) & ((\mpu_map|cnt_10ms[7]~31\) # (GND)))
-- \mpu_map|cnt_10ms[8]~33\ = CARRY((!\mpu_map|cnt_10ms[7]~31\) # (!\mpu_map|cnt_10ms\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(8),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[7]~31\,
	combout => \mpu_map|cnt_10ms[8]~32_combout\,
	cout => \mpu_map|cnt_10ms[8]~33\);

-- Location: FF_X108_Y42_N29
\mpu_map|cnt_10ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[8]~32_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(8));

-- Location: LCCOMB_X108_Y42_N30
\mpu_map|cnt_10ms[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[9]~34_combout\ = (\mpu_map|cnt_10ms\(9) & (\mpu_map|cnt_10ms[8]~33\ $ (GND))) # (!\mpu_map|cnt_10ms\(9) & (!\mpu_map|cnt_10ms[8]~33\ & VCC))
-- \mpu_map|cnt_10ms[9]~35\ = CARRY((\mpu_map|cnt_10ms\(9) & !\mpu_map|cnt_10ms[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(9),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[8]~33\,
	combout => \mpu_map|cnt_10ms[9]~34_combout\,
	cout => \mpu_map|cnt_10ms[9]~35\);

-- Location: FF_X108_Y42_N31
\mpu_map|cnt_10ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[9]~34_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(9));

-- Location: LCCOMB_X108_Y41_N0
\mpu_map|cnt_10ms[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[10]~36_combout\ = (\mpu_map|cnt_10ms\(10) & (!\mpu_map|cnt_10ms[9]~35\)) # (!\mpu_map|cnt_10ms\(10) & ((\mpu_map|cnt_10ms[9]~35\) # (GND)))
-- \mpu_map|cnt_10ms[10]~37\ = CARRY((!\mpu_map|cnt_10ms[9]~35\) # (!\mpu_map|cnt_10ms\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(10),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[9]~35\,
	combout => \mpu_map|cnt_10ms[10]~36_combout\,
	cout => \mpu_map|cnt_10ms[10]~37\);

-- Location: FF_X108_Y41_N1
\mpu_map|cnt_10ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[10]~36_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(10));

-- Location: LCCOMB_X108_Y41_N2
\mpu_map|cnt_10ms[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[11]~38_combout\ = (\mpu_map|cnt_10ms\(11) & (\mpu_map|cnt_10ms[10]~37\ $ (GND))) # (!\mpu_map|cnt_10ms\(11) & (!\mpu_map|cnt_10ms[10]~37\ & VCC))
-- \mpu_map|cnt_10ms[11]~39\ = CARRY((\mpu_map|cnt_10ms\(11) & !\mpu_map|cnt_10ms[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(11),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[10]~37\,
	combout => \mpu_map|cnt_10ms[11]~38_combout\,
	cout => \mpu_map|cnt_10ms[11]~39\);

-- Location: FF_X108_Y41_N3
\mpu_map|cnt_10ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[11]~38_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(11));

-- Location: LCCOMB_X108_Y41_N4
\mpu_map|cnt_10ms[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[12]~40_combout\ = (\mpu_map|cnt_10ms\(12) & (!\mpu_map|cnt_10ms[11]~39\)) # (!\mpu_map|cnt_10ms\(12) & ((\mpu_map|cnt_10ms[11]~39\) # (GND)))
-- \mpu_map|cnt_10ms[12]~41\ = CARRY((!\mpu_map|cnt_10ms[11]~39\) # (!\mpu_map|cnt_10ms\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(12),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[11]~39\,
	combout => \mpu_map|cnt_10ms[12]~40_combout\,
	cout => \mpu_map|cnt_10ms[12]~41\);

-- Location: FF_X108_Y41_N5
\mpu_map|cnt_10ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[12]~40_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(12));

-- Location: LCCOMB_X108_Y41_N6
\mpu_map|cnt_10ms[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[13]~42_combout\ = (\mpu_map|cnt_10ms\(13) & (\mpu_map|cnt_10ms[12]~41\ $ (GND))) # (!\mpu_map|cnt_10ms\(13) & (!\mpu_map|cnt_10ms[12]~41\ & VCC))
-- \mpu_map|cnt_10ms[13]~43\ = CARRY((\mpu_map|cnt_10ms\(13) & !\mpu_map|cnt_10ms[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(13),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[12]~41\,
	combout => \mpu_map|cnt_10ms[13]~42_combout\,
	cout => \mpu_map|cnt_10ms[13]~43\);

-- Location: FF_X108_Y41_N7
\mpu_map|cnt_10ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[13]~42_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(13));

-- Location: LCCOMB_X108_Y41_N8
\mpu_map|cnt_10ms[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[14]~44_combout\ = (\mpu_map|cnt_10ms\(14) & (!\mpu_map|cnt_10ms[13]~43\)) # (!\mpu_map|cnt_10ms\(14) & ((\mpu_map|cnt_10ms[13]~43\) # (GND)))
-- \mpu_map|cnt_10ms[14]~45\ = CARRY((!\mpu_map|cnt_10ms[13]~43\) # (!\mpu_map|cnt_10ms\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(14),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[13]~43\,
	combout => \mpu_map|cnt_10ms[14]~44_combout\,
	cout => \mpu_map|cnt_10ms[14]~45\);

-- Location: FF_X108_Y41_N9
\mpu_map|cnt_10ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[14]~44_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(14));

-- Location: LCCOMB_X108_Y41_N10
\mpu_map|cnt_10ms[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[15]~46_combout\ = (\mpu_map|cnt_10ms\(15) & (\mpu_map|cnt_10ms[14]~45\ $ (GND))) # (!\mpu_map|cnt_10ms\(15) & (!\mpu_map|cnt_10ms[14]~45\ & VCC))
-- \mpu_map|cnt_10ms[15]~47\ = CARRY((\mpu_map|cnt_10ms\(15) & !\mpu_map|cnt_10ms[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(15),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[14]~45\,
	combout => \mpu_map|cnt_10ms[15]~46_combout\,
	cout => \mpu_map|cnt_10ms[15]~47\);

-- Location: FF_X108_Y41_N11
\mpu_map|cnt_10ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[15]~46_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(15));

-- Location: LCCOMB_X108_Y41_N12
\mpu_map|cnt_10ms[16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[16]~48_combout\ = (\mpu_map|cnt_10ms\(16) & (!\mpu_map|cnt_10ms[15]~47\)) # (!\mpu_map|cnt_10ms\(16) & ((\mpu_map|cnt_10ms[15]~47\) # (GND)))
-- \mpu_map|cnt_10ms[16]~49\ = CARRY((!\mpu_map|cnt_10ms[15]~47\) # (!\mpu_map|cnt_10ms\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(16),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[15]~47\,
	combout => \mpu_map|cnt_10ms[16]~48_combout\,
	cout => \mpu_map|cnt_10ms[16]~49\);

-- Location: FF_X108_Y41_N13
\mpu_map|cnt_10ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[16]~48_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(16));

-- Location: LCCOMB_X108_Y41_N14
\mpu_map|cnt_10ms[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[17]~50_combout\ = (\mpu_map|cnt_10ms\(17) & (\mpu_map|cnt_10ms[16]~49\ $ (GND))) # (!\mpu_map|cnt_10ms\(17) & (!\mpu_map|cnt_10ms[16]~49\ & VCC))
-- \mpu_map|cnt_10ms[17]~51\ = CARRY((\mpu_map|cnt_10ms\(17) & !\mpu_map|cnt_10ms[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(17),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[16]~49\,
	combout => \mpu_map|cnt_10ms[17]~50_combout\,
	cout => \mpu_map|cnt_10ms[17]~51\);

-- Location: FF_X108_Y41_N15
\mpu_map|cnt_10ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[17]~50_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(17));

-- Location: LCCOMB_X108_Y41_N16
\mpu_map|cnt_10ms[18]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[18]~52_combout\ = (\mpu_map|cnt_10ms\(18) & (!\mpu_map|cnt_10ms[17]~51\)) # (!\mpu_map|cnt_10ms\(18) & ((\mpu_map|cnt_10ms[17]~51\) # (GND)))
-- \mpu_map|cnt_10ms[18]~53\ = CARRY((!\mpu_map|cnt_10ms[17]~51\) # (!\mpu_map|cnt_10ms\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|cnt_10ms\(18),
	datad => VCC,
	cin => \mpu_map|cnt_10ms[17]~51\,
	combout => \mpu_map|cnt_10ms[18]~52_combout\,
	cout => \mpu_map|cnt_10ms[18]~53\);

-- Location: FF_X108_Y41_N17
\mpu_map|cnt_10ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[18]~52_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(18));

-- Location: LCCOMB_X108_Y41_N18
\mpu_map|cnt_10ms[19]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|cnt_10ms[19]~54_combout\ = \mpu_map|cnt_10ms\(19) $ (!\mpu_map|cnt_10ms[18]~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(19),
	cin => \mpu_map|cnt_10ms[18]~53\,
	combout => \mpu_map|cnt_10ms[19]~54_combout\);

-- Location: FF_X108_Y41_N19
\mpu_map|cnt_10ms[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|cnt_10ms[19]~54_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt_10ms\(19));

-- Location: LCCOMB_X106_Y42_N26
\mpu_map|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Decoder0~6_combout\ = (!\mpu_map|cnt_sum\(0) & (!\mpu_map|cnt_sum\(7) & (\mpu_map|cnt_sum\(2) & \mpu_map|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(0),
	datab => \mpu_map|cnt_sum\(7),
	datac => \mpu_map|cnt_sum\(2),
	datad => \mpu_map|Decoder0~3_combout\,
	combout => \mpu_map|Decoder0~6_combout\);

-- Location: FF_X106_Y42_N27
\mpu_map|cnt.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Decoder0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt.001~q\);

-- Location: LCCOMB_X108_Y42_N6
\mpu_map|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Decoder0~5_combout\ = (\mpu_map|cnt_sum\(2) & (!\mpu_map|cnt_sum\(7) & (!\mpu_map|cnt_sum\(0) & \mpu_map|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_sum\(2),
	datab => \mpu_map|cnt_sum\(7),
	datac => \mpu_map|cnt_sum\(0),
	datad => \mpu_map|Decoder0~1_combout\,
	combout => \mpu_map|Decoder0~5_combout\);

-- Location: FF_X108_Y42_N7
\mpu_map|cnt.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Decoder0~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|cnt.011~q\);

-- Location: LCCOMB_X111_Y40_N22
\mpu_map|times[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[0]~5_combout\ = \mpu_map|times\(0) $ (VCC)
-- \mpu_map|times[0]~6\ = CARRY(\mpu_map|times\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(0),
	datad => VCC,
	combout => \mpu_map|times[0]~5_combout\,
	cout => \mpu_map|times[0]~6\);

-- Location: LCCOMB_X106_Y40_N16
\mpu_map|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector24~0_combout\ = (\mpu_map|state.DATA~q\ & ((\mpu_map|always4~0_combout\) # ((!\mpu_map|cnt.010~q\ & \mpu_map|state.ACK4~q\)))) # (!\mpu_map|state.DATA~q\ & (!\mpu_map|cnt.010~q\ & (\mpu_map|state.ACK4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.DATA~q\,
	datab => \mpu_map|cnt.010~q\,
	datac => \mpu_map|state.ACK4~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector24~0_combout\);

-- Location: FF_X106_Y40_N17
\mpu_map|state.ACK4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector24~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ACK4~q\);

-- Location: LCCOMB_X111_Y40_N8
\mpu_map|state.ACK4~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state.ACK4~_wirecell_combout\ = !\mpu_map|state.ACK4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mpu_map|state.ACK4~q\,
	combout => \mpu_map|state.ACK4~_wirecell_combout\);

-- Location: LCCOMB_X107_Y40_N30
\mpu_map|num[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|num[1]~1_combout\ = (!\mpu_map|cnt.001~q\) # (!\mpu_map|state.START1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|state.START1~q\,
	datad => \mpu_map|cnt.001~q\,
	combout => \mpu_map|num[1]~1_combout\);

-- Location: LCCOMB_X107_Y40_N28
\mpu_map|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector16~0_combout\ = ((\mpu_map|state.ADD1~q\ & ((\mpu_map|Equal1~0_combout\) # (!\mpu_map|cnt.011~q\)))) # (!\mpu_map|num[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Equal1~0_combout\,
	datab => \mpu_map|cnt.011~q\,
	datac => \mpu_map|state.ADD1~q\,
	datad => \mpu_map|num[1]~1_combout\,
	combout => \mpu_map|Selector16~0_combout\);

-- Location: FF_X107_Y40_N29
\mpu_map|state.ADD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector16~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ADD1~q\);

-- Location: LCCOMB_X109_Y40_N26
\mpu_map|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector17~0_combout\ = (\mpu_map|cnt.010~q\ & (\mpu_map|state.ADD1~q\ & ((\mpu_map|always4~0_combout\)))) # (!\mpu_map|cnt.010~q\ & ((\mpu_map|state.ACK1~q\) # ((\mpu_map|state.ADD1~q\ & \mpu_map|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.010~q\,
	datab => \mpu_map|state.ADD1~q\,
	datac => \mpu_map|state.ACK1~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector17~0_combout\);

-- Location: FF_X109_Y40_N27
\mpu_map|state.ACK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector17~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ACK1~q\);

-- Location: LCCOMB_X111_Y40_N12
\mpu_map|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr11~0_combout\ = (\mpu_map|state.ACK1~q\) # (\mpu_map|state.ACK4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|state.ACK1~q\,
	datad => \mpu_map|state.ACK4~q\,
	combout => \mpu_map|WideOr11~0_combout\);

-- Location: LCCOMB_X111_Y40_N24
\mpu_map|times[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[1]~7_combout\ = (\mpu_map|times\(1) & (!\mpu_map|times[0]~6\)) # (!\mpu_map|times\(1) & ((\mpu_map|times[0]~6\) # (GND)))
-- \mpu_map|times[1]~8\ = CARRY((!\mpu_map|times[0]~6\) # (!\mpu_map|times\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|times\(1),
	datad => VCC,
	cin => \mpu_map|times[0]~6\,
	combout => \mpu_map|times[1]~7_combout\,
	cout => \mpu_map|times[1]~8\);

-- Location: LCCOMB_X111_Y40_N26
\mpu_map|times[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[2]~13_combout\ = (\mpu_map|times\(2) & (\mpu_map|times[1]~8\ $ (GND))) # (!\mpu_map|times\(2) & (!\mpu_map|times[1]~8\ & VCC))
-- \mpu_map|times[2]~14\ = CARRY((\mpu_map|times\(2) & !\mpu_map|times[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datad => VCC,
	cin => \mpu_map|times[1]~8\,
	combout => \mpu_map|times[2]~13_combout\,
	cout => \mpu_map|times[2]~14\);

-- Location: LCCOMB_X111_Y40_N6
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X111_Y40_N27
\mpu_map|times[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|times[2]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \mpu_map|WideOr11~0_combout\,
	ena => \mpu_map|times[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|times\(2));

-- Location: LCCOMB_X111_Y40_N28
\mpu_map|times[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[3]~15_combout\ = (\mpu_map|times\(3) & (!\mpu_map|times[2]~14\)) # (!\mpu_map|times\(3) & ((\mpu_map|times[2]~14\) # (GND)))
-- \mpu_map|times[3]~16\ = CARRY((!\mpu_map|times[2]~14\) # (!\mpu_map|times\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|times\(3),
	datad => VCC,
	cin => \mpu_map|times[2]~14\,
	combout => \mpu_map|times[3]~15_combout\,
	cout => \mpu_map|times[3]~16\);

-- Location: FF_X111_Y40_N29
\mpu_map|times[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|times[3]~15_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \mpu_map|WideOr11~0_combout\,
	ena => \mpu_map|times[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|times\(3));

-- Location: LCCOMB_X111_Y40_N30
\mpu_map|times[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[4]~17_combout\ = \mpu_map|times\(4) $ (!\mpu_map|times[3]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(4),
	cin => \mpu_map|times[3]~16\,
	combout => \mpu_map|times[4]~17_combout\);

-- Location: FF_X111_Y40_N31
\mpu_map|times[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|times[4]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \mpu_map|WideOr11~0_combout\,
	ena => \mpu_map|times[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|times\(4));

-- Location: LCCOMB_X111_Y40_N16
\mpu_map|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr5~0_combout\ = (\mpu_map|times\(4) & (!\mpu_map|times\(3) & (!\mpu_map|times\(2) & !\mpu_map|times\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(4),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(2),
	datad => \mpu_map|times\(1),
	combout => \mpu_map|WideOr5~0_combout\);

-- Location: LCCOMB_X111_Y40_N0
\mpu_map|times[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[3]~10_combout\ = (\mpu_map|times\(2)) # ((\mpu_map|times\(1)) # ((\mpu_map|times\(0)) # (\mpu_map|times\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(1),
	datac => \mpu_map|times\(0),
	datad => \mpu_map|times\(3),
	combout => \mpu_map|times[3]~10_combout\);

-- Location: LCCOMB_X111_Y40_N14
\mpu_map|times[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[3]~11_combout\ = (\mpu_map|WideOr5~0_combout\) # (((!\mpu_map|times\(4) & \mpu_map|times[3]~10_combout\)) # (!\mpu_map|cnt.010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(4),
	datab => \mpu_map|WideOr5~0_combout\,
	datac => \mpu_map|cnt.010~q\,
	datad => \mpu_map|times[3]~10_combout\,
	combout => \mpu_map|times[3]~11_combout\);

-- Location: LCCOMB_X111_Y40_N10
\mpu_map|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr5~2_combout\ = (\mpu_map|times\(0) & \mpu_map|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|times\(0),
	datad => \mpu_map|WideOr5~0_combout\,
	combout => \mpu_map|WideOr5~2_combout\);

-- Location: LCCOMB_X111_Y40_N18
\mpu_map|times[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[3]~9_combout\ = (\mpu_map|state.ACK4~q\ & (((!\mpu_map|WideOr5~2_combout\)))) # (!\mpu_map|state.ACK4~q\ & (\mpu_map|state.IDLE~q\ & (!\mpu_map|state.ACK1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.IDLE~q\,
	datab => \mpu_map|state.ACK4~q\,
	datac => \mpu_map|state.ACK1~q\,
	datad => \mpu_map|WideOr5~2_combout\,
	combout => \mpu_map|times[3]~9_combout\);

-- Location: LCCOMB_X111_Y40_N20
\mpu_map|times[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|times[3]~12_combout\ = (!\mpu_map|times[3]~9_combout\ & ((!\mpu_map|times[3]~11_combout\) # (!\mpu_map|state.ACK1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datac => \mpu_map|times[3]~11_combout\,
	datad => \mpu_map|times[3]~9_combout\,
	combout => \mpu_map|times[3]~12_combout\);

-- Location: FF_X111_Y40_N23
\mpu_map|times[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|times[0]~5_combout\,
	asdata => \mpu_map|state.ACK4~_wirecell_combout\,
	clrn => \reset~input_o\,
	sload => \mpu_map|WideOr11~0_combout\,
	ena => \mpu_map|times[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|times\(0));

-- Location: FF_X111_Y40_N25
\mpu_map|times[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|times[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \mpu_map|WideOr11~0_combout\,
	ena => \mpu_map|times[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|times\(1));

-- Location: LCCOMB_X110_Y40_N0
\mpu_map|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector11~0_combout\ = (\mpu_map|times\(2) & (!\mpu_map|times\(3) & (!\mpu_map|times\(4) & !\mpu_map|times\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(4),
	datad => \mpu_map|times\(0),
	combout => \mpu_map|Selector11~0_combout\);

-- Location: LCCOMB_X107_Y41_N8
\mpu_map|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Equal2~0_combout\ = (!\mpu_map|Selector11~0_combout\) # (!\mpu_map|times\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|times\(1),
	datad => \mpu_map|Selector11~0_combout\,
	combout => \mpu_map|Equal2~0_combout\);

-- Location: LCCOMB_X107_Y41_N20
\mpu_map|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector20~1_combout\ = (\mpu_map|Selector20~0_combout\ & (((\mpu_map|state.START2~q\ & !\mpu_map|cnt.001~q\)) # (!\mpu_map|Equal2~0_combout\))) # (!\mpu_map|Selector20~0_combout\ & (((\mpu_map|state.START2~q\ & !\mpu_map|cnt.001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Selector20~0_combout\,
	datab => \mpu_map|Equal2~0_combout\,
	datac => \mpu_map|state.START2~q\,
	datad => \mpu_map|cnt.001~q\,
	combout => \mpu_map|Selector20~1_combout\);

-- Location: FF_X107_Y41_N21
\mpu_map|state.START2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector20~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.START2~q\);

-- Location: LCCOMB_X108_Y40_N18
\mpu_map|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector21~0_combout\ = (\mpu_map|state.START2~q\ & ((\mpu_map|cnt.001~q\) # ((\mpu_map|state.ADD3~q\ & !\mpu_map|always4~0_combout\)))) # (!\mpu_map|state.START2~q\ & (((\mpu_map|state.ADD3~q\ & !\mpu_map|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.START2~q\,
	datab => \mpu_map|cnt.001~q\,
	datac => \mpu_map|state.ADD3~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector21~0_combout\);

-- Location: FF_X108_Y40_N19
\mpu_map|state.ADD3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector21~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ADD3~q\);

-- Location: LCCOMB_X106_Y40_N4
\mpu_map|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector22~0_combout\ = (\mpu_map|state.ADD3~q\ & ((\mpu_map|always4~0_combout\) # ((!\mpu_map|cnt.010~q\ & \mpu_map|state.ACK3~q\)))) # (!\mpu_map|state.ADD3~q\ & (!\mpu_map|cnt.010~q\ & (\mpu_map|state.ACK3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD3~q\,
	datab => \mpu_map|cnt.010~q\,
	datac => \mpu_map|state.ACK3~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector22~0_combout\);

-- Location: FF_X106_Y40_N5
\mpu_map|state.ACK3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector22~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ACK3~q\);

-- Location: LCCOMB_X107_Y40_N16
\mpu_map|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector23~0_combout\ = (\mpu_map|cnt.010~q\ & ((\mpu_map|state.ACK3~q\) # ((\mpu_map|state.DATA~q\ & !\mpu_map|always4~0_combout\)))) # (!\mpu_map|cnt.010~q\ & (((\mpu_map|state.DATA~q\ & !\mpu_map|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.010~q\,
	datab => \mpu_map|state.ACK3~q\,
	datac => \mpu_map|state.DATA~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector23~0_combout\);

-- Location: FF_X107_Y40_N17
\mpu_map|state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector23~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.DATA~q\);

-- Location: LCCOMB_X108_Y40_N10
\mpu_map|num[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|num[1]~2_combout\ = (\mpu_map|state.START1~q\) # ((\mpu_map|state.DATA~q\ & \mpu_map|num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.DATA~q\,
	datac => \mpu_map|state.START1~q\,
	datad => \mpu_map|num\(3),
	combout => \mpu_map|num[1]~2_combout\);

-- Location: LCCOMB_X107_Y40_N6
\mpu_map|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~0_combout\ = (!\mpu_map|state.ADD_EXT~q\ & (!\mpu_map|state.ADD1~q\ & (!\mpu_map|state.ADD2~q\ & !\mpu_map|state.ADD3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD_EXT~q\,
	datab => \mpu_map|state.ADD1~q\,
	datac => \mpu_map|state.ADD2~q\,
	datad => \mpu_map|state.ADD3~q\,
	combout => \mpu_map|Selector6~0_combout\);

-- Location: LCCOMB_X107_Y40_N24
\mpu_map|num[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|num[1]~3_combout\ = (\mpu_map|num[1]~2_combout\) # ((!\mpu_map|Equal1~0_combout\ & (!\mpu_map|state.DATA~q\ & !\mpu_map|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Equal1~0_combout\,
	datab => \mpu_map|state.DATA~q\,
	datac => \mpu_map|num[1]~2_combout\,
	datad => \mpu_map|Selector6~0_combout\,
	combout => \mpu_map|num[1]~3_combout\);

-- Location: LCCOMB_X107_Y40_N4
\mpu_map|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector32~0_combout\ = (!\mpu_map|num\(0) & !\mpu_map|num[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|num\(0),
	datad => \mpu_map|num[1]~3_combout\,
	combout => \mpu_map|Selector32~0_combout\);

-- Location: LCCOMB_X107_Y40_N18
\mpu_map|num[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|num[1]~4_combout\ = ((!\mpu_map|num\(3) & !\mpu_map|cnt.001~q\)) # (!\mpu_map|state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(3),
	datab => \mpu_map|state.DATA~q\,
	datad => \mpu_map|cnt.001~q\,
	combout => \mpu_map|num[1]~4_combout\);

-- Location: LCCOMB_X107_Y40_N20
\mpu_map|num[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|num[1]~5_combout\ = (\mpu_map|num[1]~4_combout\) # ((\mpu_map|num\(3) & ((\mpu_map|Equal1~0_combout\) # (!\mpu_map|cnt.011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(3),
	datab => \mpu_map|cnt.011~q\,
	datac => \mpu_map|Equal1~0_combout\,
	datad => \mpu_map|num[1]~4_combout\,
	combout => \mpu_map|num[1]~5_combout\);

-- Location: LCCOMB_X107_Y40_N2
\mpu_map|num[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|num[1]~6_combout\ = (((!\mpu_map|Selector6~0_combout\ & \mpu_map|cnt.011~q\)) # (!\mpu_map|num[1]~5_combout\)) # (!\mpu_map|num[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Selector6~0_combout\,
	datab => \mpu_map|cnt.011~q\,
	datac => \mpu_map|num[1]~1_combout\,
	datad => \mpu_map|num[1]~5_combout\,
	combout => \mpu_map|num[1]~6_combout\);

-- Location: FF_X107_Y40_N5
\mpu_map|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector32~0_combout\,
	clrn => \reset~input_o\,
	ena => \mpu_map|num[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|num\(0));

-- Location: LCCOMB_X107_Y40_N0
\mpu_map|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector31~0_combout\ = (!\mpu_map|num[1]~3_combout\ & (\mpu_map|num\(0) $ (\mpu_map|num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|num\(0),
	datac => \mpu_map|num\(1),
	datad => \mpu_map|num[1]~3_combout\,
	combout => \mpu_map|Selector31~0_combout\);

-- Location: FF_X107_Y40_N1
\mpu_map|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector31~0_combout\,
	clrn => \reset~input_o\,
	ena => \mpu_map|num[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|num\(1));

-- Location: LCCOMB_X107_Y40_N14
\mpu_map|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector30~0_combout\ = (!\mpu_map|num[1]~3_combout\ & (\mpu_map|num\(2) $ (((\mpu_map|num\(1) & \mpu_map|num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(1),
	datab => \mpu_map|num\(0),
	datac => \mpu_map|num\(2),
	datad => \mpu_map|num[1]~3_combout\,
	combout => \mpu_map|Selector30~0_combout\);

-- Location: FF_X107_Y40_N15
\mpu_map|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector30~0_combout\,
	clrn => \reset~input_o\,
	ena => \mpu_map|num[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|num\(2));

-- Location: LCCOMB_X107_Y41_N24
\mpu_map|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Add3~0_combout\ = \mpu_map|num\(3) $ (((\mpu_map|num\(0) & (\mpu_map|num\(2) & \mpu_map|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(3),
	datab => \mpu_map|num\(0),
	datac => \mpu_map|num\(2),
	datad => \mpu_map|num\(1),
	combout => \mpu_map|Add3~0_combout\);

-- Location: LCCOMB_X107_Y40_N10
\mpu_map|num[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|num[3]~7_combout\ = (\mpu_map|num[1]~6_combout\ & (\mpu_map|Add3~0_combout\ & (!\mpu_map|num[1]~3_combout\))) # (!\mpu_map|num[1]~6_combout\ & (((\mpu_map|num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Add3~0_combout\,
	datab => \mpu_map|num[1]~3_combout\,
	datac => \mpu_map|num\(3),
	datad => \mpu_map|num[1]~6_combout\,
	combout => \mpu_map|num[3]~7_combout\);

-- Location: FF_X107_Y40_N11
\mpu_map|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|num[3]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|num\(3));

-- Location: LCCOMB_X107_Y40_N26
\mpu_map|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Equal1~0_combout\ = ((\mpu_map|num\(0)) # ((\mpu_map|num\(2)) # (\mpu_map|num\(1)))) # (!\mpu_map|num\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(3),
	datab => \mpu_map|num\(0),
	datac => \mpu_map|num\(2),
	datad => \mpu_map|num\(1),
	combout => \mpu_map|Equal1~0_combout\);

-- Location: LCCOMB_X106_Y40_N10
\mpu_map|always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|always4~0_combout\ = (\mpu_map|cnt.011~q\ & !\mpu_map|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|cnt.011~q\,
	datad => \mpu_map|Equal1~0_combout\,
	combout => \mpu_map|always4~0_combout\);

-- Location: LCCOMB_X106_Y40_N6
\mpu_map|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector18~0_combout\ = (\mpu_map|always4~0_combout\ & (\mpu_map|state.ACK1~q\ & ((\mpu_map|cnt.010~q\)))) # (!\mpu_map|always4~0_combout\ & ((\mpu_map|state.ADD2~q\) # ((\mpu_map|state.ACK1~q\ & \mpu_map|cnt.010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|always4~0_combout\,
	datab => \mpu_map|state.ACK1~q\,
	datac => \mpu_map|state.ADD2~q\,
	datad => \mpu_map|cnt.010~q\,
	combout => \mpu_map|Selector18~0_combout\);

-- Location: FF_X106_Y40_N7
\mpu_map|state.ADD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector18~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ADD2~q\);

-- Location: LCCOMB_X106_Y40_N22
\mpu_map|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector19~0_combout\ = (\mpu_map|state.ADD2~q\ & ((\mpu_map|always4~0_combout\) # ((!\mpu_map|cnt.010~q\ & \mpu_map|state.ACK2~q\)))) # (!\mpu_map|state.ADD2~q\ & (!\mpu_map|cnt.010~q\ & (\mpu_map|state.ACK2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD2~q\,
	datab => \mpu_map|cnt.010~q\,
	datac => \mpu_map|state.ACK2~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector19~0_combout\);

-- Location: FF_X106_Y40_N23
\mpu_map|state.ACK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector19~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ACK2~q\);

-- Location: LCCOMB_X107_Y41_N22
\mpu_map|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector20~0_combout\ = (\mpu_map|state.ACK2~q\ & \mpu_map|cnt.010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|state.ACK2~q\,
	datad => \mpu_map|cnt.010~q\,
	combout => \mpu_map|Selector20~0_combout\);

-- Location: LCCOMB_X107_Y41_N4
\mpu_map|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector27~0_combout\ = (\mpu_map|Selector20~0_combout\ & ((\mpu_map|Equal2~0_combout\) # ((\mpu_map|state.ADD_EXT~q\ & !\mpu_map|always4~0_combout\)))) # (!\mpu_map|Selector20~0_combout\ & (((\mpu_map|state.ADD_EXT~q\ & 
-- !\mpu_map|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Selector20~0_combout\,
	datab => \mpu_map|Equal2~0_combout\,
	datac => \mpu_map|state.ADD_EXT~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector27~0_combout\);

-- Location: FF_X107_Y41_N5
\mpu_map|state.ADD_EXT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector27~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ADD_EXT~q\);

-- Location: LCCOMB_X106_Y40_N30
\mpu_map|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector28~0_combout\ = (\mpu_map|state.ADD_EXT~q\ & ((\mpu_map|always4~0_combout\) # ((!\mpu_map|cnt.010~q\ & \mpu_map|state.ACK_EXT~q\)))) # (!\mpu_map|state.ADD_EXT~q\ & (!\mpu_map|cnt.010~q\ & (\mpu_map|state.ACK_EXT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD_EXT~q\,
	datab => \mpu_map|cnt.010~q\,
	datac => \mpu_map|state.ACK_EXT~q\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector28~0_combout\);

-- Location: FF_X106_Y40_N31
\mpu_map|state.ACK_EXT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector28~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.ACK_EXT~q\);

-- Location: LCCOMB_X106_Y40_N28
\mpu_map|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~2_combout\ = (!\mpu_map|state.ACK_EXT~q\ & !\mpu_map|state.ACK4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mpu_map|state.ACK_EXT~q\,
	datad => \mpu_map|state.ACK4~q\,
	combout => \mpu_map|Selector5~2_combout\);

-- Location: LCCOMB_X107_Y41_N14
\mpu_map|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector25~0_combout\ = (\mpu_map|cnt.001~q\ & (\mpu_map|cnt.010~q\ & ((!\mpu_map|Selector5~2_combout\)))) # (!\mpu_map|cnt.001~q\ & ((\mpu_map|state.STOP1~q\) # ((\mpu_map|cnt.010~q\ & !\mpu_map|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.001~q\,
	datab => \mpu_map|cnt.010~q\,
	datac => \mpu_map|state.STOP1~q\,
	datad => \mpu_map|Selector5~2_combout\,
	combout => \mpu_map|Selector25~0_combout\);

-- Location: FF_X107_Y41_N15
\mpu_map|state.STOP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector25~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.STOP1~q\);

-- Location: LCCOMB_X108_Y41_N24
\mpu_map|state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~43_combout\ = (\mpu_map|cnt_10ms\(16) & (\mpu_map|cnt_10ms\(18) & (\mpu_map|cnt_10ms\(17) & \mpu_map|cnt_10ms\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(16),
	datab => \mpu_map|cnt_10ms\(18),
	datac => \mpu_map|cnt_10ms\(17),
	datad => \mpu_map|cnt_10ms\(15),
	combout => \mpu_map|state~43_combout\);

-- Location: LCCOMB_X108_Y42_N10
\mpu_map|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~39_combout\ = (\mpu_map|cnt_10ms\(5) & (\mpu_map|cnt_10ms\(6) & (\mpu_map|cnt_10ms\(4) & !\mpu_map|cnt_10ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(5),
	datab => \mpu_map|cnt_10ms\(6),
	datac => \mpu_map|cnt_10ms\(4),
	datad => \mpu_map|cnt_10ms\(3),
	combout => \mpu_map|state~39_combout\);

-- Location: LCCOMB_X108_Y41_N20
\mpu_map|state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~41_combout\ = (\mpu_map|cnt_10ms\(14) & (\mpu_map|cnt_10ms\(12) & (\mpu_map|cnt_10ms\(13) & \mpu_map|cnt_10ms\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(14),
	datab => \mpu_map|cnt_10ms\(12),
	datac => \mpu_map|cnt_10ms\(13),
	datad => \mpu_map|cnt_10ms\(11),
	combout => \mpu_map|state~41_combout\);

-- Location: LCCOMB_X108_Y42_N0
\mpu_map|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~38_combout\ = (!\mpu_map|cnt.011~q\ & (!\mpu_map|cnt_10ms\(2) & (!\mpu_map|cnt_sum\(0) & !\mpu_map|cnt_sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.011~q\,
	datab => \mpu_map|cnt_10ms\(2),
	datac => \mpu_map|cnt_sum\(0),
	datad => \mpu_map|cnt_sum\(1),
	combout => \mpu_map|state~38_combout\);

-- Location: LCCOMB_X108_Y42_N12
\mpu_map|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~40_combout\ = (\mpu_map|cnt_10ms\(9) & (\mpu_map|cnt_10ms\(8) & (\mpu_map|cnt_10ms\(7) & \mpu_map|cnt_10ms\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(9),
	datab => \mpu_map|cnt_10ms\(8),
	datac => \mpu_map|cnt_10ms\(7),
	datad => \mpu_map|cnt_10ms\(10),
	combout => \mpu_map|state~40_combout\);

-- Location: LCCOMB_X108_Y41_N22
\mpu_map|state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~42_combout\ = (\mpu_map|state~39_combout\ & (\mpu_map|state~41_combout\ & (\mpu_map|state~38_combout\ & \mpu_map|state~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state~39_combout\,
	datab => \mpu_map|state~41_combout\,
	datac => \mpu_map|state~38_combout\,
	datad => \mpu_map|state~40_combout\,
	combout => \mpu_map|state~42_combout\);

-- Location: LCCOMB_X108_Y41_N26
\mpu_map|state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~44_combout\ = (\mpu_map|cnt_10ms\(19) & (\mpu_map|state~43_combout\ & \mpu_map|state~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(19),
	datab => \mpu_map|state~43_combout\,
	datac => \mpu_map|state~42_combout\,
	combout => \mpu_map|state~44_combout\);

-- Location: LCCOMB_X108_Y41_N28
\mpu_map|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector26~0_combout\ = (\mpu_map|state.STOP1~q\ & ((\mpu_map|cnt.001~q\) # ((\mpu_map|state.STOP2~q\ & !\mpu_map|state~44_combout\)))) # (!\mpu_map|state.STOP1~q\ & (((\mpu_map|state.STOP2~q\ & !\mpu_map|state~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.STOP1~q\,
	datab => \mpu_map|cnt.001~q\,
	datac => \mpu_map|state.STOP2~q\,
	datad => \mpu_map|state~44_combout\,
	combout => \mpu_map|Selector26~0_combout\);

-- Location: FF_X108_Y41_N29
\mpu_map|state.STOP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector26~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.STOP2~q\);

-- Location: LCCOMB_X108_Y41_N30
\mpu_map|state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|state~45_combout\ = (((!\mpu_map|state~43_combout\) # (!\mpu_map|state~42_combout\)) # (!\mpu_map|state.STOP2~q\)) # (!\mpu_map|cnt_10ms\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt_10ms\(19),
	datab => \mpu_map|state.STOP2~q\,
	datac => \mpu_map|state~42_combout\,
	datad => \mpu_map|state~43_combout\,
	combout => \mpu_map|state~45_combout\);

-- Location: FF_X108_Y41_N31
\mpu_map|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|state~45_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.IDLE~q\);

-- Location: LCCOMB_X108_Y40_N26
\mpu_map|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector15~0_combout\ = ((\mpu_map|state.START1~q\ & !\mpu_map|cnt.001~q\)) # (!\mpu_map|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.IDLE~q\,
	datac => \mpu_map|state.START1~q\,
	datad => \mpu_map|cnt.001~q\,
	combout => \mpu_map|Selector15~0_combout\);

-- Location: FF_X108_Y40_N27
\mpu_map|state.START1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector15~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|state.START1~q\);

-- Location: LCCOMB_X107_Y40_N22
\mpu_map|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~2_combout\ = (!\mpu_map|state.ACK1~q\ & (!\mpu_map|state.DATA~q\ & (!\mpu_map|state.ACK3~q\ & !\mpu_map|state.ACK2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|state.DATA~q\,
	datac => \mpu_map|state.ACK3~q\,
	datad => \mpu_map|state.ACK2~q\,
	combout => \mpu_map|Selector6~2_combout\);

-- Location: LCCOMB_X107_Y40_N12
\mpu_map|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~3_combout\ = (!\mpu_map|state.START1~q\ & (\mpu_map|Selector6~2_combout\ & ((\mpu_map|cnt.010~q\) # (\mpu_map|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.010~q\,
	datab => \mpu_map|state.START1~q\,
	datac => \mpu_map|Selector6~2_combout\,
	datad => \mpu_map|Selector5~2_combout\,
	combout => \mpu_map|Selector6~3_combout\);

-- Location: LCCOMB_X108_Y40_N30
\mpu_map|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~5_combout\ = (!\mpu_map|state.STOP1~q\ & (((!\mpu_map|state.START1~q\ & \mpu_map|cnt.011~q\)) # (!\mpu_map|cnt.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.STOP1~q\,
	datab => \mpu_map|state.START1~q\,
	datac => \mpu_map|cnt.011~q\,
	datad => \mpu_map|cnt.001~q\,
	combout => \mpu_map|Selector6~5_combout\);

-- Location: LCCOMB_X108_Y40_N8
\mpu_map|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~4_combout\ = (!\mpu_map|cnt.011~q\ & (((!\mpu_map|state.START2~q\ & !\mpu_map|state.START1~q\)) # (!\mpu_map|cnt.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.011~q\,
	datab => \mpu_map|state.START2~q\,
	datac => \mpu_map|state.START1~q\,
	datad => \mpu_map|cnt.001~q\,
	combout => \mpu_map|Selector6~4_combout\);

-- Location: LCCOMB_X109_Y40_N16
\mpu_map|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector12~0_combout\ = (\mpu_map|times\(1) & (!\mpu_map|times\(3) & (!\mpu_map|times\(2) & \mpu_map|state.ACK2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(1),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(2),
	datad => \mpu_map|state.ACK2~q\,
	combout => \mpu_map|Selector12~0_combout\);

-- Location: LCCOMB_X110_Y40_N28
\mpu_map|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr5~1_combout\ = (\mpu_map|times\(3) & (\mpu_map|times\(2) $ (\mpu_map|times\(1) $ (!\mpu_map|times\(0))))) # (!\mpu_map|times\(3) & ((\mpu_map|times\(2) & ((\mpu_map|times\(0)))) # (!\mpu_map|times\(2) & (\mpu_map|times\(1) & 
-- !\mpu_map|times\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(1),
	datad => \mpu_map|times\(0),
	combout => \mpu_map|WideOr5~1_combout\);

-- Location: LCCOMB_X110_Y40_N22
\mpu_map|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector13~4_combout\ = (\mpu_map|state.ACK1~q\ & (!\mpu_map|state.ACK2~q\ & ((\mpu_map|times\(4)) # (!\mpu_map|WideOr5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|state.ACK2~q\,
	datac => \mpu_map|times\(4),
	datad => \mpu_map|WideOr5~1_combout\,
	combout => \mpu_map|Selector13~4_combout\);

-- Location: LCCOMB_X109_Y40_N0
\mpu_map|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector13~5_combout\ = (\mpu_map|Selector12~0_combout\ & (((!\mpu_map|WideOr5~2_combout\ & \mpu_map|Selector13~4_combout\)) # (!\mpu_map|times\(4)))) # (!\mpu_map|Selector12~0_combout\ & (((!\mpu_map|WideOr5~2_combout\ & 
-- \mpu_map|Selector13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Selector12~0_combout\,
	datab => \mpu_map|times\(4),
	datac => \mpu_map|WideOr5~2_combout\,
	datad => \mpu_map|Selector13~4_combout\,
	combout => \mpu_map|Selector13~5_combout\);

-- Location: LCCOMB_X109_Y40_N2
\mpu_map|db_r[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|db_r[0]~0_combout\ = (\mpu_map|state.ACK1~q\ & (((\mpu_map|cnt.010~q\)))) # (!\mpu_map|state.ACK1~q\ & ((\mpu_map|state.ACK2~q\ & ((\mpu_map|cnt.010~q\))) # (!\mpu_map|state.ACK2~q\ & (!\mpu_map|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|state.IDLE~q\,
	datac => \mpu_map|cnt.010~q\,
	datad => \mpu_map|state.ACK2~q\,
	combout => \mpu_map|db_r[0]~0_combout\);

-- Location: LCCOMB_X109_Y40_N12
\mpu_map|db_r[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|db_r[0]~1_combout\ = (\reset~input_o\ & \mpu_map|db_r[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mpu_map|db_r[0]~0_combout\,
	combout => \mpu_map|db_r[0]~1_combout\);

-- Location: FF_X109_Y40_N1
\mpu_map|db_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector13~5_combout\,
	ena => \mpu_map|db_r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(1));

-- Location: LCCOMB_X109_Y40_N4
\mpu_map|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr10~0_combout\ = (!\mpu_map|times\(3) & ((\mpu_map|times\(2) & (!\mpu_map|times\(1) & !\mpu_map|times\(0))) # (!\mpu_map|times\(2) & ((\mpu_map|times\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(1),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(2),
	datad => \mpu_map|times\(0),
	combout => \mpu_map|WideOr10~0_combout\);

-- Location: LCCOMB_X110_Y40_N20
\mpu_map|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr6~0_combout\ = \mpu_map|times\(4) $ (((\mpu_map|times\(2)) # ((\mpu_map|times\(1)) # (\mpu_map|times\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(1),
	datac => \mpu_map|times\(4),
	datad => \mpu_map|times\(3),
	combout => \mpu_map|WideOr6~0_combout\);

-- Location: LCCOMB_X110_Y40_N2
\mpu_map|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector14~0_combout\ = (\mpu_map|state.ACK1~q\ & (!\mpu_map|state.ACK2~q\ & ((!\mpu_map|WideOr6~0_combout\) # (!\mpu_map|times\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|times\(0),
	datac => \mpu_map|state.ACK2~q\,
	datad => \mpu_map|WideOr6~0_combout\,
	combout => \mpu_map|Selector14~0_combout\);

-- Location: LCCOMB_X109_Y40_N18
\mpu_map|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector14~1_combout\ = (\mpu_map|Selector14~0_combout\) # ((\mpu_map|state.ACK2~q\ & ((\mpu_map|times\(4)) # (!\mpu_map|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK2~q\,
	datab => \mpu_map|times\(4),
	datac => \mpu_map|WideOr10~0_combout\,
	datad => \mpu_map|Selector14~0_combout\,
	combout => \mpu_map|Selector14~1_combout\);

-- Location: FF_X109_Y40_N19
\mpu_map|db_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector14~1_combout\,
	ena => \mpu_map|db_r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(0));

-- Location: LCCOMB_X108_Y40_N14
\mpu_map|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Mux0~4_combout\ = (\mpu_map|num\(0) & ((\mpu_map|db_r\(0)))) # (!\mpu_map|num\(0) & (\mpu_map|db_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|num\(0),
	datac => \mpu_map|db_r\(1),
	datad => \mpu_map|db_r\(0),
	combout => \mpu_map|Mux0~4_combout\);

-- Location: LCCOMB_X110_Y40_N24
\mpu_map|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector11~1_combout\ = (!\mpu_map|times\(1) & (\mpu_map|state.ACK2~q\ & \mpu_map|Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|times\(1),
	datac => \mpu_map|state.ACK2~q\,
	datad => \mpu_map|Selector11~0_combout\,
	combout => \mpu_map|Selector11~1_combout\);

-- Location: LCCOMB_X110_Y40_N18
\mpu_map|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr3~0_combout\ = (\mpu_map|times\(3) & ((\mpu_map|times\(2)) # ((\mpu_map|times\(1) & \mpu_map|times\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(1),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(2),
	datad => \mpu_map|times\(0),
	combout => \mpu_map|WideOr3~0_combout\);

-- Location: LCCOMB_X110_Y40_N12
\mpu_map|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector11~2_combout\ = (\mpu_map|state.ACK1~q\ & (!\mpu_map|state.ACK2~q\ & ((\mpu_map|times\(4)) # (!\mpu_map|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|state.ACK2~q\,
	datac => \mpu_map|times\(4),
	datad => \mpu_map|WideOr3~0_combout\,
	combout => \mpu_map|Selector11~2_combout\);

-- Location: LCCOMB_X109_Y40_N30
\mpu_map|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector11~3_combout\ = (\mpu_map|Selector11~1_combout\) # ((\mpu_map|Selector11~2_combout\ & ((\mpu_map|times\(0)) # (!\mpu_map|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(0),
	datab => \mpu_map|Selector11~1_combout\,
	datac => \mpu_map|Selector11~2_combout\,
	datad => \mpu_map|WideOr5~0_combout\,
	combout => \mpu_map|Selector11~3_combout\);

-- Location: FF_X109_Y40_N31
\mpu_map|db_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector11~3_combout\,
	ena => \mpu_map|db_r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(3));

-- Location: LCCOMB_X110_Y40_N10
\mpu_map|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr4~0_combout\ = (\mpu_map|times\(2) & ((\mpu_map|times\(0)) # ((\mpu_map|times\(3) & \mpu_map|times\(1))))) # (!\mpu_map|times\(2) & (\mpu_map|times\(3) & ((!\mpu_map|times\(0)) # (!\mpu_map|times\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(1),
	datad => \mpu_map|times\(0),
	combout => \mpu_map|WideOr4~0_combout\);

-- Location: LCCOMB_X109_Y40_N28
\mpu_map|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector12~2_combout\ = (\mpu_map|times\(0) & (!\mpu_map|times\(4) & (\mpu_map|WideOr4~0_combout\))) # (!\mpu_map|times\(0) & ((\mpu_map|WideOr5~0_combout\) # ((!\mpu_map|times\(4) & \mpu_map|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(0),
	datab => \mpu_map|times\(4),
	datac => \mpu_map|WideOr4~0_combout\,
	datad => \mpu_map|WideOr5~0_combout\,
	combout => \mpu_map|Selector12~2_combout\);

-- Location: LCCOMB_X109_Y40_N10
\mpu_map|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector12~1_combout\ = (!\mpu_map|times\(4) & \mpu_map|Selector12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|times\(4),
	datad => \mpu_map|Selector12~0_combout\,
	combout => \mpu_map|Selector12~1_combout\);

-- Location: LCCOMB_X109_Y40_N24
\mpu_map|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector12~3_combout\ = (\mpu_map|Selector12~1_combout\) # ((\mpu_map|state.ACK1~q\ & (\mpu_map|Selector12~2_combout\ & !\mpu_map|state.ACK2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|Selector12~2_combout\,
	datac => \mpu_map|state.ACK2~q\,
	datad => \mpu_map|Selector12~1_combout\,
	combout => \mpu_map|Selector12~3_combout\);

-- Location: FF_X109_Y40_N25
\mpu_map|db_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector12~3_combout\,
	ena => \mpu_map|db_r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(2));

-- Location: LCCOMB_X108_Y40_N4
\mpu_map|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Mux0~0_combout\ = (\mpu_map|num\(0) & ((\mpu_map|db_r\(2)))) # (!\mpu_map|num\(0) & (\mpu_map|db_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|num\(0),
	datac => \mpu_map|db_r\(3),
	datad => \mpu_map|db_r\(2),
	combout => \mpu_map|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y40_N6
\mpu_map|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr1~0_combout\ = (\mpu_map|times\(2) & (((!\mpu_map|times\(3))))) # (!\mpu_map|times\(2) & ((\mpu_map|times\(1) & ((!\mpu_map|times\(3)) # (!\mpu_map|times\(0)))) # (!\mpu_map|times\(1) & ((\mpu_map|times\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(0),
	datac => \mpu_map|times\(1),
	datad => \mpu_map|times\(3),
	combout => \mpu_map|WideOr1~0_combout\);

-- Location: LCCOMB_X109_Y40_N14
\mpu_map|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector10~0_combout\ = (!\mpu_map|state.ACK2~q\ & (((!\mpu_map|times\(4) & \mpu_map|WideOr1~0_combout\)) # (!\mpu_map|state.ACK1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|times\(4),
	datac => \mpu_map|state.ACK2~q\,
	datad => \mpu_map|WideOr1~0_combout\,
	combout => \mpu_map|Selector10~0_combout\);

-- Location: LCCOMB_X109_Y40_N20
\mpu_map|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr9~0_combout\ = (!\mpu_map|times\(3) & ((\mpu_map|times\(1) & (!\mpu_map|times\(2))) # (!\mpu_map|times\(1) & ((\mpu_map|times\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(1),
	datab => \mpu_map|times\(3),
	datac => \mpu_map|times\(2),
	datad => \mpu_map|times\(0),
	combout => \mpu_map|WideOr9~0_combout\);

-- Location: LCCOMB_X109_Y40_N8
\mpu_map|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector10~1_combout\ = (\mpu_map|Selector10~0_combout\) # ((\mpu_map|state.ACK2~q\ & ((\mpu_map|times\(4)) # (!\mpu_map|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK2~q\,
	datab => \mpu_map|times\(4),
	datac => \mpu_map|Selector10~0_combout\,
	datad => \mpu_map|WideOr9~0_combout\,
	combout => \mpu_map|Selector10~1_combout\);

-- Location: FF_X109_Y40_N9
\mpu_map|db_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector10~1_combout\,
	ena => \mpu_map|db_r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(4));

-- Location: LCCOMB_X107_Y41_N28
\mpu_map|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector9~0_combout\ = (\mpu_map|state.ACK1~q\ & (((!\mpu_map|cnt.010~q\)))) # (!\mpu_map|state.ACK1~q\ & ((\mpu_map|state.ACK2~q\ & ((!\mpu_map|cnt.010~q\))) # (!\mpu_map|state.ACK2~q\ & (\mpu_map|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.IDLE~q\,
	datab => \mpu_map|state.ACK1~q\,
	datac => \mpu_map|state.ACK2~q\,
	datad => \mpu_map|cnt.010~q\,
	combout => \mpu_map|Selector9~0_combout\);

-- Location: LCCOMB_X111_Y40_N2
\mpu_map|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr2~0_combout\ = (\mpu_map|times\(2) & (((\mpu_map|times\(3))) # (!\mpu_map|times\(1)))) # (!\mpu_map|times\(2) & (\mpu_map|times\(1) & ((\mpu_map|times\(0)) # (!\mpu_map|times\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(1),
	datac => \mpu_map|times\(0),
	datad => \mpu_map|times\(3),
	combout => \mpu_map|WideOr2~0_combout\);

-- Location: LCCOMB_X107_Y41_N10
\mpu_map|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector9~1_combout\ = (\mpu_map|cnt.010~q\ & (\mpu_map|state.ACK1~q\ & ((\mpu_map|times\(4)) # (!\mpu_map|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(4),
	datab => \mpu_map|cnt.010~q\,
	datac => \mpu_map|state.ACK1~q\,
	datad => \mpu_map|WideOr2~0_combout\,
	combout => \mpu_map|Selector9~1_combout\);

-- Location: LCCOMB_X107_Y41_N12
\mpu_map|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector9~2_combout\ = (\mpu_map|WideOr5~0_combout\ & (\mpu_map|Selector9~0_combout\ & (\mpu_map|db_r\(5)))) # (!\mpu_map|WideOr5~0_combout\ & ((\mpu_map|Selector9~1_combout\) # ((\mpu_map|Selector9~0_combout\ & \mpu_map|db_r\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|WideOr5~0_combout\,
	datab => \mpu_map|Selector9~0_combout\,
	datac => \mpu_map|db_r\(5),
	datad => \mpu_map|Selector9~1_combout\,
	combout => \mpu_map|Selector9~2_combout\);

-- Location: FF_X107_Y41_N13
\mpu_map|db_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector9~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(5));

-- Location: LCCOMB_X108_Y40_N22
\mpu_map|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Mux0~1_combout\ = (\mpu_map|num\(0) & (\mpu_map|db_r\(4))) # (!\mpu_map|num\(0) & ((\mpu_map|db_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|db_r\(4),
	datac => \mpu_map|num\(0),
	datad => \mpu_map|db_r\(5),
	combout => \mpu_map|Mux0~1_combout\);

-- Location: LCCOMB_X111_Y40_N4
\mpu_map|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|WideOr8~0_combout\ = (!\mpu_map|times\(3) & ((\mpu_map|times\(2) & (!\mpu_map|times\(1))) # (!\mpu_map|times\(2) & ((\mpu_map|times\(1)) # (\mpu_map|times\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(2),
	datab => \mpu_map|times\(1),
	datac => \mpu_map|times\(0),
	datad => \mpu_map|times\(3),
	combout => \mpu_map|WideOr8~0_combout\);

-- Location: LCCOMB_X109_Y40_N6
\mpu_map|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector8~0_combout\ = (\mpu_map|state.ACK2~q\ & (((!\mpu_map|WideOr8~0_combout\)))) # (!\mpu_map|state.ACK2~q\ & (((!\mpu_map|WideOr1~0_combout\)) # (!\mpu_map|state.ACK1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK1~q\,
	datab => \mpu_map|state.ACK2~q\,
	datac => \mpu_map|WideOr8~0_combout\,
	datad => \mpu_map|WideOr1~0_combout\,
	combout => \mpu_map|Selector8~0_combout\);

-- Location: LCCOMB_X108_Y40_N12
\mpu_map|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector8~1_combout\ = (\mpu_map|times\(4)) # (\mpu_map|Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|times\(4),
	datad => \mpu_map|Selector8~0_combout\,
	combout => \mpu_map|Selector8~1_combout\);

-- Location: FF_X108_Y40_N13
\mpu_map|db_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector8~1_combout\,
	ena => \mpu_map|db_r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(6));

-- Location: LCCOMB_X107_Y41_N18
\mpu_map|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector7~0_combout\ = (!\mpu_map|state.ACK2~q\ & ((\mpu_map|db_r\(7)) # (!\mpu_map|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.IDLE~q\,
	datab => \mpu_map|state.ACK2~q\,
	datac => \mpu_map|db_r\(7),
	combout => \mpu_map|Selector7~0_combout\);

-- Location: LCCOMB_X107_Y41_N16
\mpu_map|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector7~1_combout\ = (\mpu_map|Selector7~0_combout\) # ((\mpu_map|Selector20~0_combout\ & ((\mpu_map|times\(4)) # (!\mpu_map|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|times\(4),
	datab => \mpu_map|Selector7~0_combout\,
	datac => \mpu_map|Selector20~0_combout\,
	datad => \mpu_map|WideOr8~0_combout\,
	combout => \mpu_map|Selector7~1_combout\);

-- Location: LCCOMB_X107_Y41_N30
\mpu_map|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector7~2_combout\ = (\mpu_map|cnt.010~q\ & (!\mpu_map|state.ACK1~q\ & ((\mpu_map|Selector7~1_combout\)))) # (!\mpu_map|cnt.010~q\ & ((\mpu_map|db_r\(7)) # ((!\mpu_map|state.ACK1~q\ & \mpu_map|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.010~q\,
	datab => \mpu_map|state.ACK1~q\,
	datac => \mpu_map|db_r\(7),
	datad => \mpu_map|Selector7~1_combout\,
	combout => \mpu_map|Selector7~2_combout\);

-- Location: FF_X107_Y41_N31
\mpu_map|db_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector7~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|db_r\(7));

-- Location: LCCOMB_X108_Y40_N6
\mpu_map|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Mux0~2_combout\ = (\mpu_map|num\(0) & (((\mpu_map|db_r\(6))))) # (!\mpu_map|num\(0) & ((\mpu_map|num\(3)) # ((\mpu_map|db_r\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(3),
	datab => \mpu_map|db_r\(6),
	datac => \mpu_map|num\(0),
	datad => \mpu_map|db_r\(7),
	combout => \mpu_map|Mux0~2_combout\);

-- Location: LCCOMB_X108_Y40_N20
\mpu_map|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Mux0~3_combout\ = (\mpu_map|num\(1) & ((\mpu_map|num\(2)) # ((\mpu_map|Mux0~1_combout\)))) # (!\mpu_map|num\(1) & (!\mpu_map|num\(2) & ((\mpu_map|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(1),
	datab => \mpu_map|num\(2),
	datac => \mpu_map|Mux0~1_combout\,
	datad => \mpu_map|Mux0~2_combout\,
	combout => \mpu_map|Mux0~3_combout\);

-- Location: LCCOMB_X108_Y40_N0
\mpu_map|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Mux0~5_combout\ = (\mpu_map|num\(2) & ((\mpu_map|Mux0~3_combout\ & (\mpu_map|Mux0~4_combout\)) # (!\mpu_map|Mux0~3_combout\ & ((\mpu_map|Mux0~0_combout\))))) # (!\mpu_map|num\(2) & (((\mpu_map|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|num\(2),
	datab => \mpu_map|Mux0~4_combout\,
	datac => \mpu_map|Mux0~0_combout\,
	datad => \mpu_map|Mux0~3_combout\,
	combout => \mpu_map|Mux0~5_combout\);

-- Location: LCCOMB_X108_Y40_N24
\mpu_map|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~6_combout\ = (\mpu_map|Selector6~4_combout\) # ((\mpu_map|Selector6~5_combout\ & ((\mpu_map|Selector6~0_combout\) # (\mpu_map|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Selector6~5_combout\,
	datab => \mpu_map|Selector6~0_combout\,
	datac => \mpu_map|Selector6~4_combout\,
	datad => \mpu_map|Mux0~5_combout\,
	combout => \mpu_map|Selector6~6_combout\);

-- Location: LCCOMB_X107_Y41_N26
\mpu_map|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~1_combout\ = (!\mpu_map|state.START2~q\ & (((\mpu_map|cnt.001~q\ & !\mpu_map|cnt.011~q\)) # (!\mpu_map|state.STOP1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.001~q\,
	datab => \mpu_map|state.START2~q\,
	datac => \mpu_map|state.STOP1~q\,
	datad => \mpu_map|cnt.011~q\,
	combout => \mpu_map|Selector6~1_combout\);

-- Location: LCCOMB_X108_Y40_N16
\mpu_map|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~8_combout\ = (\mpu_map|cnt.011~q\ & (!\mpu_map|state.STOP1~q\ & ((\mpu_map|Selector6~0_combout\) # (\mpu_map|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|cnt.011~q\,
	datab => \mpu_map|Selector6~0_combout\,
	datac => \mpu_map|state.STOP1~q\,
	datad => \mpu_map|Mux0~5_combout\,
	combout => \mpu_map|Selector6~8_combout\);

-- Location: LCCOMB_X108_Y40_N2
\mpu_map|Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~9_combout\ = (\mpu_map|Selector6~8_combout\) # ((!\mpu_map|state.STOP2~q\ & (\mpu_map|Selector6~0_combout\ & \mpu_map|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.STOP2~q\,
	datab => \mpu_map|Selector6~0_combout\,
	datac => \mpu_map|Selector6~1_combout\,
	datad => \mpu_map|Selector6~8_combout\,
	combout => \mpu_map|Selector6~9_combout\);

-- Location: LCCOMB_X108_Y40_N28
\mpu_map|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector6~7_combout\ = (\mpu_map|Selector6~3_combout\ & (!\mpu_map|Selector6~9_combout\ & ((\mpu_map|sda_r~q\) # (!\mpu_map|Selector6~6_combout\)))) # (!\mpu_map|Selector6~3_combout\ & (((\mpu_map|sda_r~q\)) # (!\mpu_map|Selector6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Selector6~3_combout\,
	datab => \mpu_map|Selector6~6_combout\,
	datac => \mpu_map|sda_r~q\,
	datad => \mpu_map|Selector6~9_combout\,
	combout => \mpu_map|Selector6~7_combout\);

-- Location: FF_X108_Y40_N29
\mpu_map|sda_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector6~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|sda_r~q\);

-- Location: LCCOMB_X106_Y40_N8
\mpu_map|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~8_combout\ = (!\mpu_map|state.ADD2~q\ & !\mpu_map|state.ADD_EXT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD2~q\,
	datac => \mpu_map|state.ADD_EXT~q\,
	combout => \mpu_map|Selector5~8_combout\);

-- Location: LCCOMB_X106_Y40_N12
\mpu_map|Selector5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~10_combout\ = (\mpu_map|cnt.011~q\ & ((\mpu_map|Equal1~0_combout\ & (!\mpu_map|state.DATA~q\)) # (!\mpu_map|Equal1~0_combout\ & ((\mpu_map|Selector5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.DATA~q\,
	datab => \mpu_map|Selector5~8_combout\,
	datac => \mpu_map|cnt.011~q\,
	datad => \mpu_map|Equal1~0_combout\,
	combout => \mpu_map|Selector5~10_combout\);

-- Location: LCCOMB_X107_Y40_N8
\mpu_map|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~6_combout\ = (!\mpu_map|state.ADD1~q\ & (!\mpu_map|state.ADD3~q\ & ((\mpu_map|cnt.001~q\) # (!\mpu_map|state.START1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD1~q\,
	datab => \mpu_map|state.START1~q\,
	datac => \mpu_map|state.ADD3~q\,
	datad => \mpu_map|cnt.001~q\,
	combout => \mpu_map|Selector5~6_combout\);

-- Location: LCCOMB_X106_Y40_N2
\mpu_map|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~7_combout\ = (!\mpu_map|state.ACK2~q\ & (!\mpu_map|state.ACK3~q\ & (!\mpu_map|state.STOP2~q\ & !\mpu_map|state.ACK1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK2~q\,
	datab => \mpu_map|state.ACK3~q\,
	datac => \mpu_map|state.STOP2~q\,
	datad => \mpu_map|state.ACK1~q\,
	combout => \mpu_map|Selector5~7_combout\);

-- Location: LCCOMB_X106_Y40_N18
\mpu_map|Selector5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~12_combout\ = (!\mpu_map|state.ACK_EXT~q\ & (!\mpu_map|state.ACK4~q\ & (\mpu_map|Selector5~6_combout\ & \mpu_map|Selector5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ACK_EXT~q\,
	datab => \mpu_map|state.ACK4~q\,
	datac => \mpu_map|Selector5~6_combout\,
	datad => \mpu_map|Selector5~7_combout\,
	combout => \mpu_map|Selector5~12_combout\);

-- Location: LCCOMB_X106_Y40_N14
\mpu_map|Selector5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~9_combout\ = (!\mpu_map|state.DATA~q\ & (\mpu_map|Selector5~8_combout\ & (!\mpu_map|state.START2~q\ & !\mpu_map|state.STOP1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.DATA~q\,
	datab => \mpu_map|Selector5~8_combout\,
	datac => \mpu_map|state.START2~q\,
	datad => \mpu_map|state.STOP1~q\,
	combout => \mpu_map|Selector5~9_combout\);

-- Location: LCCOMB_X106_Y40_N20
\mpu_map|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~3_combout\ = (\mpu_map|state.ADD2~q\) # ((\mpu_map|state.ADD1~q\) # (\mpu_map|state.ADD_EXT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD2~q\,
	datab => \mpu_map|state.ADD1~q\,
	datac => \mpu_map|state.ADD_EXT~q\,
	combout => \mpu_map|Selector5~3_combout\);

-- Location: LCCOMB_X106_Y40_N26
\mpu_map|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~4_combout\ = (\mpu_map|sda_link~q\ & ((!\mpu_map|cnt.010~q\) # (!\mpu_map|state.ACK3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mpu_map|sda_link~q\,
	datac => \mpu_map|state.ACK3~q\,
	datad => \mpu_map|cnt.010~q\,
	combout => \mpu_map|Selector5~4_combout\);

-- Location: LCCOMB_X106_Y40_N0
\mpu_map|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~5_combout\ = (\mpu_map|Selector5~4_combout\ & (((!\mpu_map|state.ADD3~q\ & !\mpu_map|Selector5~3_combout\)) # (!\mpu_map|always4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|state.ADD3~q\,
	datab => \mpu_map|Selector5~3_combout\,
	datac => \mpu_map|Selector5~4_combout\,
	datad => \mpu_map|always4~0_combout\,
	combout => \mpu_map|Selector5~5_combout\);

-- Location: LCCOMB_X106_Y40_N24
\mpu_map|Selector5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpu_map|Selector5~11_combout\ = (\mpu_map|Selector5~5_combout\) # ((\mpu_map|Selector5~12_combout\ & ((\mpu_map|Selector5~10_combout\) # (\mpu_map|Selector5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mpu_map|Selector5~10_combout\,
	datab => \mpu_map|Selector5~12_combout\,
	datac => \mpu_map|Selector5~9_combout\,
	datad => \mpu_map|Selector5~5_combout\,
	combout => \mpu_map|Selector5~11_combout\);

-- Location: FF_X106_Y40_N25
\mpu_map|sda_link\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_map|temporal~clkctrl_outclk\,
	d => \mpu_map|Selector5~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mpu_map|sda_link~q\);

-- Location: LCCOMB_X5_Y48_N10
\de2lcd_map|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|WideOr2~1_combout\ = (!\de2lcd_map|state.DISPLAY_OFF~q\ & (!\de2lcd_map|state.DISPLAY_CLEAR~q\ & (!\de2lcd_map|state.RETURN_HOME~q\ & \de2lcd_map|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_OFF~q\,
	datab => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datac => \de2lcd_map|state.RETURN_HOME~q\,
	datad => \de2lcd_map|WideOr2~0_combout\,
	combout => \de2lcd_map|WideOr2~1_combout\);

-- Location: LCCOMB_X5_Y48_N28
\de2lcd_map|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector1~0_combout\ = (\de2lcd_map|WideOr2~2_combout\ & ((\de2lcd_map|WideOr2~1_combout\) # ((!\de2lcd_map|LCD_RS~0_combout\ & \de2lcd_map|LCD_RS~q\)))) # (!\de2lcd_map|WideOr2~2_combout\ & (!\de2lcd_map|LCD_RS~0_combout\ & 
-- (\de2lcd_map|LCD_RS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|WideOr2~2_combout\,
	datab => \de2lcd_map|LCD_RS~0_combout\,
	datac => \de2lcd_map|LCD_RS~q\,
	datad => \de2lcd_map|WideOr2~1_combout\,
	combout => \de2lcd_map|Selector1~0_combout\);

-- Location: FF_X5_Y48_N29
\de2lcd_map|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|LCD_RS~q\);

-- Location: LCCOMB_X6_Y48_N4
\de2lcd_map|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LCD_E~0_combout\ = !\de2lcd_map|state.TOGGLE_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|LCD_E~0_combout\);

-- Location: FF_X6_Y48_N5
\de2lcd_map|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|LCD_E~0_combout\,
	ena => \de2lcd_map|ALT_INV_state.HOLD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|LCD_E~q\);

-- Location: IOIBUF_X0_Y52_N15
\DATA_BUS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(0),
	o => \DATA_BUS[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\DATA_BUS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(1),
	o => \DATA_BUS[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\DATA_BUS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(2),
	o => \DATA_BUS[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\DATA_BUS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(3),
	o => \DATA_BUS[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\DATA_BUS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(4),
	o => \DATA_BUS[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\DATA_BUS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(5),
	o => \DATA_BUS[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\DATA_BUS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(6),
	o => \DATA_BUS[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\DATA_BUS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(7),
	o => \DATA_BUS[7]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\scl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => scl,
	o => \scl~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_E <= \LCD_E~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_RESET_LED <= \RESET_LED~output_o\;

ww_SEC_LED <= \SEC_LED~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

DATA_BUS(0) <= \DATA_BUS[0]~output_o\;

DATA_BUS(1) <= \DATA_BUS[1]~output_o\;

DATA_BUS(2) <= \DATA_BUS[2]~output_o\;

DATA_BUS(3) <= \DATA_BUS[3]~output_o\;

DATA_BUS(4) <= \DATA_BUS[4]~output_o\;

DATA_BUS(5) <= \DATA_BUS[5]~output_o\;

DATA_BUS(6) <= \DATA_BUS[6]~output_o\;

DATA_BUS(7) <= \DATA_BUS[7]~output_o\;

scl <= \scl~output_o\;

sda <= \sda~output_o\;
END structure;


