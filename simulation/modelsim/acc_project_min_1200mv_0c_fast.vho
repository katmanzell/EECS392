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

-- DATE "04/22/2016 17:19:27"

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
	ack_error : BUFFER std_logic;
	sda : INOUT std_logic;
	scl : INOUT std_logic
	);
END acc_project;

-- Design Ports Information
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_E	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_LED	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_LED	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ack_error	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_ack_error : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \de2lcd_map|CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \DATA_BUS[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS[7]~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_E~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \RESET_LED~output_o\ : std_logic;
SIGNAL \SEC_LED~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \ack_error~output_o\ : std_logic;
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
SIGNAL \de2lcd_map|LessThan0~1_combout\ : std_logic;
SIGNAL \de2lcd_map|LessThan0~0_combout\ : std_logic;
SIGNAL \de2lcd_map|LessThan0~2_combout\ : std_logic;
SIGNAL \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\ : std_logic;
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
SIGNAL \de2lcd_map|LCD_RS~0_combout\ : std_logic;
SIGNAL \de2lcd_map|state.TOGGLE_E~q\ : std_logic;
SIGNAL \de2lcd_map|state.HOLD~q\ : std_logic;
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
SIGNAL \de2lcd_map|Selector19~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR5~q\ : std_logic;
SIGNAL \de2lcd_map|state~67_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR5~q\ : std_logic;
SIGNAL \de2lcd_map|Selector20~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR6~q\ : std_logic;
SIGNAL \de2lcd_map|state~71_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR6~q\ : std_logic;
SIGNAL \de2lcd_map|Selector21~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR7~q\ : std_logic;
SIGNAL \de2lcd_map|state~72_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR7~q\ : std_logic;
SIGNAL \de2lcd_map|Selector22~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR8~q\ : std_logic;
SIGNAL \de2lcd_map|state~69_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR8~q\ : std_logic;
SIGNAL \de2lcd_map|Selector23~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR9~q\ : std_logic;
SIGNAL \de2lcd_map|state~70_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR9~q\ : std_logic;
SIGNAL \de2lcd_map|Selector24~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR10~q\ : std_logic;
SIGNAL \de2lcd_map|state~68_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR10~q\ : std_logic;
SIGNAL \de2lcd_map|Selector25~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR11~q\ : std_logic;
SIGNAL \de2lcd_map|state~66_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR11~q\ : std_logic;
SIGNAL \de2lcd_map|Selector26~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR12~q\ : std_logic;
SIGNAL \de2lcd_map|state~79_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR12~q\ : std_logic;
SIGNAL \de2lcd_map|Selector27~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR13~q\ : std_logic;
SIGNAL \de2lcd_map|state~77_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR13~q\ : std_logic;
SIGNAL \de2lcd_map|Selector28~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR14~q\ : std_logic;
SIGNAL \de2lcd_map|state~78_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR14~q\ : std_logic;
SIGNAL \de2lcd_map|Selector29~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR15~q\ : std_logic;
SIGNAL \de2lcd_map|state~75_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR15~q\ : std_logic;
SIGNAL \de2lcd_map|Selector30~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR16~q\ : std_logic;
SIGNAL \de2lcd_map|state~64_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR16~q\ : std_logic;
SIGNAL \de2lcd_map|Selector31~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \de2lcd_map|state~58_combout\ : std_logic;
SIGNAL \de2lcd_map|state.RETURN_HOME~q\ : std_logic;
SIGNAL \de2lcd_map|Selector13~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \de2lcd_map|state~56_combout\ : std_logic;
SIGNAL \de2lcd_map|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \de2lcd_map|Selector14~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.MODE_SET~q\ : std_logic;
SIGNAL \de2lcd_map|state~57_combout\ : std_logic;
SIGNAL \de2lcd_map|state.MODE_SET~q\ : std_logic;
SIGNAL \de2lcd_map|Selector15~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR1~q\ : std_logic;
SIGNAL \de2lcd_map|state~74_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR1~q\ : std_logic;
SIGNAL \de2lcd_map|Selector3~0_combout\ : std_logic;
SIGNAL \de2lcd_map|state~73_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR2~q\ : std_logic;
SIGNAL \de2lcd_map|Selector17~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR3~q\ : std_logic;
SIGNAL \de2lcd_map|state~76_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR3~q\ : std_logic;
SIGNAL \de2lcd_map|Selector18~0_combout\ : std_logic;
SIGNAL \de2lcd_map|next_command.WRITE_CHAR4~q\ : std_logic;
SIGNAL \de2lcd_map|state~65_combout\ : std_logic;
SIGNAL \de2lcd_map|state.WRITE_CHAR4~q\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \scl~input_o\ : std_logic;
SIGNAL \i2c_master_map|stretch~0_combout\ : std_logic;
SIGNAL \i2c_master_map|stretch~q\ : std_logic;
SIGNAL \i2c_master_map|Add0~0_combout\ : std_logic;
SIGNAL \i2c_master_map|count~3_combout\ : std_logic;
SIGNAL \i2c_master_map|Add0~1\ : std_logic;
SIGNAL \i2c_master_map|Add0~2_combout\ : std_logic;
SIGNAL \i2c_master_map|count~2_combout\ : std_logic;
SIGNAL \i2c_master_map|Add0~3\ : std_logic;
SIGNAL \i2c_master_map|Add0~4_combout\ : std_logic;
SIGNAL \i2c_master_map|count~6_combout\ : std_logic;
SIGNAL \i2c_master_map|Add0~5\ : std_logic;
SIGNAL \i2c_master_map|Add0~6_combout\ : std_logic;
SIGNAL \i2c_master_map|count~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Add0~7\ : std_logic;
SIGNAL \i2c_master_map|Add0~8_combout\ : std_logic;
SIGNAL \i2c_master_map|count~5_combout\ : std_logic;
SIGNAL \i2c_master_map|Add0~9\ : std_logic;
SIGNAL \i2c_master_map|Add0~11\ : std_logic;
SIGNAL \i2c_master_map|Add0~12_combout\ : std_logic;
SIGNAL \i2c_master_map|count~1_combout\ : std_logic;
SIGNAL \i2c_master_map|Equal0~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Equal0~1_combout\ : std_logic;
SIGNAL \i2c_master_map|count~4_combout\ : std_logic;
SIGNAL \i2c_master_map|Add0~10_combout\ : std_logic;
SIGNAL \i2c_master_map|process_0~9_combout\ : std_logic;
SIGNAL \i2c_master_map|process_0~6_combout\ : std_logic;
SIGNAL \i2c_master_map|process_0~7_combout\ : std_logic;
SIGNAL \i2c_master_map|LessThan1~0_combout\ : std_logic;
SIGNAL \i2c_master_map|LessThan1~1_combout\ : std_logic;
SIGNAL \i2c_master_map|LessThan1~2_combout\ : std_logic;
SIGNAL \i2c_master_map|LessThan1~3_combout\ : std_logic;
SIGNAL \i2c_master_map|process_0~8_combout\ : std_logic;
SIGNAL \i2c_master_map|process_0~4_combout\ : std_logic;
SIGNAL \i2c_master_map|process_0~5_combout\ : std_logic;
SIGNAL \i2c_master_map|data_clk~0_combout\ : std_logic;
SIGNAL \i2c_master_map|data_clk~q\ : std_logic;
SIGNAL \i2c_master_map|data_clk_prev~feeder_combout\ : std_logic;
SIGNAL \i2c_master_map|data_clk_prev~q\ : std_logic;
SIGNAL \i2c_master_map|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \i2c_master_map|state.ready~feeder_combout\ : std_logic;
SIGNAL \i2c_master_map|process_1~1_combout\ : std_logic;
SIGNAL \i2c_master_map|state.ready~q\ : std_logic;
SIGNAL \i2c_master_map|state.start~0_combout\ : std_logic;
SIGNAL \i2c_master_map|state.start~q\ : std_logic;
SIGNAL \i2c_master_map|Add1~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Equal1~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector19~0_combout\ : std_logic;
SIGNAL \i2c_master_map|state.command~q\ : std_logic;
SIGNAL \i2c_master_map|state~15_combout\ : std_logic;
SIGNAL \i2c_master_map|state.slv_ack2~q\ : std_logic;
SIGNAL \i2c_master_map|Selector20~0_combout\ : std_logic;
SIGNAL \i2c_master_map|state.wr~q\ : std_logic;
SIGNAL \i2c_master_map|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector25~0_combout\ : std_logic;
SIGNAL \i2c_master_map|state~14_combout\ : std_logic;
SIGNAL \i2c_master_map|state.mstr_ack~q\ : std_logic;
SIGNAL \i2c_master_map|state~13_combout\ : std_logic;
SIGNAL \i2c_master_map|state.slv_ack1~q\ : std_logic;
SIGNAL \i2c_master_map|Selector21~0_combout\ : std_logic;
SIGNAL \i2c_master_map|state.rd~q\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~1_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[7]~0_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[7]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[7]~2_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[31]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~30_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~29_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~28_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter~27_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~26_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~25_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter~24_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter~23_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~22_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \counter~21_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \counter~20_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \counter~19_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[26]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[27]~q\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[28]~q\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[30]~q\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \clocked_data_receive:counter[29]~q\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector9~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~2_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[0]~1_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[0]~feeder_combout\ : std_logic;
SIGNAL \send_data_rd[0]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~3_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[6]~2_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[6]~feeder_combout\ : std_logic;
SIGNAL \send_data_rd[6]~feeder_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector9~1_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~4_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[1]~3_combout\ : std_logic;
SIGNAL \send_data_rd[1]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~6_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[3]~5_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[3]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~5_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[2]~4_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[2]~feeder_combout\ : std_logic;
SIGNAL \send_data_rd[2]~feeder_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector9~2_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~7_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[4]~6_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[4]~feeder_combout\ : std_logic;
SIGNAL \send_data_rd[4]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_map|Decoder0~8_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rx[5]~7_combout\ : std_logic;
SIGNAL \i2c_master_map|data_rd[5]~feeder_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector9~3_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector9~4_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector9~5_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector8~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector7~0_combout\ : std_logic;
SIGNAL \de2lcd_map|WideOr2~2_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector6~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector6~1_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector6~2_combout\ : std_logic;
SIGNAL \de2lcd_map|WideOr2~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~1_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~2_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector5~3_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector4~0_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector4~1_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector2~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector23~2_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector23~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector23~4_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector23~3_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector23~5_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector23~1_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector23~6_combout\ : std_logic;
SIGNAL \i2c_master_map|sda_int~q\ : std_logic;
SIGNAL \i2c_master_map|Selector29~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector28~0_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector28~1_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector27~0_combout\ : std_logic;
SIGNAL \i2c_master_map|process_1~0_combout\ : std_logic;
SIGNAL \i2c_master_map|scl_ena~q\ : std_logic;
SIGNAL \i2c_master_map|scl_clk~0_combout\ : std_logic;
SIGNAL \i2c_master_map|scl_clk~q\ : std_logic;
SIGNAL \i2c_master_map|scl~1_combout\ : std_logic;
SIGNAL \de2lcd_map|WideOr2~1_combout\ : std_logic;
SIGNAL \de2lcd_map|Selector1~0_combout\ : std_logic;
SIGNAL \de2lcd_map|LCD_RS~q\ : std_logic;
SIGNAL \de2lcd_map|LCD_E~0_combout\ : std_logic;
SIGNAL \de2lcd_map|LCD_E~q\ : std_logic;
SIGNAL \i2c_master_map|Selector28~2_combout\ : std_logic;
SIGNAL \i2c_master_map|Selector28~3_combout\ : std_logic;
SIGNAL \i2c_master_map|ack_error~q\ : std_logic;
SIGNAL \i2c_master_map|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \de2lcd_map|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \i2c_master_map|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i2c_master_map|data_rd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \de2lcd_map|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL send_data_rd : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_master_map|data_rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \de2lcd_map|ALT_INV_state.HOLD~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk_50Mhz <= clk_50Mhz;
LCD_RS <= ww_LCD_RS;
LCD_E <= ww_LCD_E;
LCD_ON <= ww_LCD_ON;
RESET_LED <= ww_RESET_LED;
SEC_LED <= ww_SEC_LED;
LCD_RW <= ww_LCD_RW;
ack_error <= ww_ack_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\de2lcd_map|CLK_400HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \de2lcd_map|CLK_400HZ~q\);
\de2lcd_map|ALT_INV_state.HOLD~q\ <= NOT \de2lcd_map|state.HOLD~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

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

-- Location: IOOBUF_X65_Y0_N16
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_map|Selector29~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_map|scl~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \scl~output_o\);

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

-- Location: IOOBUF_X67_Y73_N16
\ack_error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_map|ack_error~q\,
	devoe => ww_devoe,
	o => \ack_error~output_o\);

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

-- Location: LCCOMB_X113_Y39_N12
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

-- Location: LCCOMB_X113_Y38_N10
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

-- Location: LCCOMB_X113_Y38_N12
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

-- Location: FF_X113_Y38_N13
\de2lcd_map|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[16]~53_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X113_Y38_N14
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

-- Location: FF_X113_Y38_N15
\de2lcd_map|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[17]~55_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X113_Y38_N16
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

-- Location: FF_X113_Y38_N17
\de2lcd_map|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[18]~57_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X113_Y38_N18
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

-- Location: FF_X113_Y38_N19
\de2lcd_map|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[19]~59_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X113_Y38_N24
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

-- Location: LCCOMB_X113_Y39_N10
\de2lcd_map|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~1_combout\ = (!\de2lcd_map|CLK_COUNT_400HZ\(7) & (!\de2lcd_map|CLK_COUNT_400HZ\(8) & (!\de2lcd_map|CLK_COUNT_400HZ\(9) & !\de2lcd_map|CLK_COUNT_400HZ\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(7),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(8),
	datac => \de2lcd_map|CLK_COUNT_400HZ\(9),
	datad => \de2lcd_map|CLK_COUNT_400HZ\(6),
	combout => \de2lcd_map|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y39_N8
\de2lcd_map|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~0_combout\ = ((!\de2lcd_map|CLK_COUNT_400HZ\(4) & (!\de2lcd_map|CLK_COUNT_400HZ\(2) & !\de2lcd_map|CLK_COUNT_400HZ\(3)))) # (!\de2lcd_map|CLK_COUNT_400HZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(4),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(2),
	datac => \de2lcd_map|CLK_COUNT_400HZ\(5),
	datad => \de2lcd_map|CLK_COUNT_400HZ\(3),
	combout => \de2lcd_map|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y38_N28
\de2lcd_map|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~2_combout\ = (!\de2lcd_map|CLK_COUNT_400HZ\(11) & (((\de2lcd_map|LessThan0~1_combout\ & \de2lcd_map|LessThan0~0_combout\)) # (!\de2lcd_map|CLK_COUNT_400HZ\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(11),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(10),
	datac => \de2lcd_map|LessThan0~1_combout\,
	datad => \de2lcd_map|LessThan0~0_combout\,
	combout => \de2lcd_map|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y38_N22
\de2lcd_map|CLK_COUNT_400HZ[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\ = (((!\de2lcd_map|LessThan0~3_combout\ & !\de2lcd_map|LessThan0~2_combout\)) # (!\de2lcd_map|LessThan0~4_combout\)) # (!\reset~input_o\)

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
	combout => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\);

-- Location: FF_X113_Y39_N13
\de2lcd_map|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X113_Y39_N14
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

-- Location: FF_X113_Y39_N15
\de2lcd_map|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X113_Y39_N16
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

-- Location: FF_X113_Y39_N17
\de2lcd_map|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X113_Y39_N18
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

-- Location: FF_X113_Y39_N19
\de2lcd_map|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[3]~27_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X113_Y39_N20
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

-- Location: FF_X113_Y39_N21
\de2lcd_map|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[4]~29_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X113_Y39_N22
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

-- Location: FF_X113_Y39_N23
\de2lcd_map|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[5]~31_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X113_Y39_N24
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

-- Location: FF_X113_Y39_N25
\de2lcd_map|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[6]~33_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X113_Y39_N26
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

-- Location: FF_X113_Y39_N27
\de2lcd_map|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[7]~35_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X113_Y39_N28
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

-- Location: FF_X113_Y39_N29
\de2lcd_map|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[8]~37_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X113_Y39_N30
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

-- Location: FF_X113_Y39_N31
\de2lcd_map|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[9]~39_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X113_Y38_N0
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

-- Location: FF_X113_Y38_N1
\de2lcd_map|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[10]~41_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X113_Y38_N2
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

-- Location: FF_X113_Y38_N3
\de2lcd_map|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[11]~43_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X113_Y38_N4
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

-- Location: FF_X113_Y38_N5
\de2lcd_map|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[12]~45_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X113_Y38_N6
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

-- Location: FF_X113_Y38_N7
\de2lcd_map|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[13]~47_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X113_Y38_N8
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

-- Location: FF_X113_Y38_N9
\de2lcd_map|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[14]~49_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(14));

-- Location: FF_X113_Y38_N11
\de2lcd_map|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \de2lcd_map|CLK_COUNT_400HZ[15]~51_combout\,
	sclr => \de2lcd_map|CLK_COUNT_400HZ[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X113_Y38_N26
\de2lcd_map|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LessThan0~3_combout\ = (((!\de2lcd_map|CLK_COUNT_400HZ\(13)) # (!\de2lcd_map|CLK_COUNT_400HZ\(14))) # (!\de2lcd_map|CLK_COUNT_400HZ\(12))) # (!\de2lcd_map|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|CLK_COUNT_400HZ\(15),
	datab => \de2lcd_map|CLK_COUNT_400HZ\(12),
	datac => \de2lcd_map|CLK_COUNT_400HZ\(14),
	datad => \de2lcd_map|CLK_COUNT_400HZ\(13),
	combout => \de2lcd_map|LessThan0~3_combout\);

-- Location: LCCOMB_X114_Y38_N6
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

-- Location: FF_X114_Y38_N31
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X59_Y38_N30
\de2lcd_map|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LCD_RS~0_combout\ = (!\de2lcd_map|state.TOGGLE_E~q\ & !\de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.TOGGLE_E~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|LCD_RS~0_combout\);

-- Location: FF_X59_Y38_N23
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

-- Location: FF_X59_Y38_N11
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

-- Location: LCCOMB_X60_Y38_N28
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

-- Location: FF_X60_Y38_N29
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

-- Location: LCCOMB_X60_Y38_N18
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

-- Location: FF_X60_Y38_N19
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

-- Location: LCCOMB_X60_Y38_N0
\de2lcd_map|state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~62_combout\ = (!\de2lcd_map|next_command.RESET2~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.RESET2~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~62_combout\);

-- Location: FF_X60_Y38_N1
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

-- Location: LCCOMB_X60_Y38_N12
\de2lcd_map|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector33~0_combout\ = (\de2lcd_map|state.RESET2~q\) # ((\de2lcd_map|next_command.RESET3~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.RESET2~q\,
	datac => \de2lcd_map|next_command.RESET3~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector33~0_combout\);

-- Location: FF_X60_Y38_N13
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

-- Location: LCCOMB_X60_Y38_N14
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

-- Location: FF_X60_Y38_N15
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

-- Location: LCCOMB_X60_Y38_N4
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

-- Location: FF_X60_Y38_N5
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

-- Location: LCCOMB_X60_Y38_N10
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

-- Location: FF_X60_Y38_N11
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

-- Location: LCCOMB_X58_Y38_N4
\de2lcd_map|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector34~0_combout\ = (\de2lcd_map|state.FUNC_SET~q\) # ((\de2lcd_map|next_command.DISPLAY_OFF~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.FUNC_SET~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.DISPLAY_OFF~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector34~0_combout\);

-- Location: FF_X58_Y38_N5
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

-- Location: LCCOMB_X58_Y38_N12
\de2lcd_map|state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~59_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.DISPLAY_OFF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.DISPLAY_OFF~q\,
	combout => \de2lcd_map|state~59_combout\);

-- Location: FF_X58_Y38_N13
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

-- Location: LCCOMB_X59_Y38_N28
\de2lcd_map|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector35~0_combout\ = (\de2lcd_map|state.DISPLAY_OFF~q\) # ((\de2lcd_map|next_command.DISPLAY_CLEAR~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.TOGGLE_E~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.DISPLAY_CLEAR~q\,
	datad => \de2lcd_map|state.DISPLAY_OFF~q\,
	combout => \de2lcd_map|Selector35~0_combout\);

-- Location: FF_X59_Y38_N29
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

-- Location: LCCOMB_X58_Y38_N14
\de2lcd_map|state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~60_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.DISPLAY_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.DISPLAY_CLEAR~q\,
	combout => \de2lcd_map|state~60_combout\);

-- Location: FF_X58_Y38_N15
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

-- Location: LCCOMB_X58_Y37_N8
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

-- Location: FF_X58_Y37_N9
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

-- Location: LCCOMB_X58_Y37_N22
\de2lcd_map|state~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~67_combout\ = (\de2lcd_map|next_command.WRITE_CHAR5~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR5~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~67_combout\);

-- Location: FF_X58_Y37_N23
\de2lcd_map|state.WRITE_CHAR5\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR5~q\);

-- Location: LCCOMB_X58_Y37_N24
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

-- Location: FF_X58_Y37_N25
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

-- Location: LCCOMB_X59_Y37_N28
\de2lcd_map|state~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~71_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.WRITE_CHAR6~q\,
	combout => \de2lcd_map|state~71_combout\);

-- Location: FF_X59_Y37_N29
\de2lcd_map|state.WRITE_CHAR6\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR6~q\);

-- Location: LCCOMB_X59_Y37_N2
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

-- Location: FF_X59_Y37_N3
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

-- Location: LCCOMB_X59_Y37_N18
\de2lcd_map|state~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~72_combout\ = (\de2lcd_map|next_command.WRITE_CHAR7~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR7~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~72_combout\);

-- Location: FF_X59_Y37_N19
\de2lcd_map|state.WRITE_CHAR7\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR7~q\);

-- Location: LCCOMB_X59_Y37_N26
\de2lcd_map|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector22~0_combout\ = (\de2lcd_map|state.WRITE_CHAR7~q\) # ((\de2lcd_map|next_command.WRITE_CHAR8~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.TOGGLE_E~q\,
	datab => \de2lcd_map|state.WRITE_CHAR7~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR8~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector22~0_combout\);

-- Location: FF_X59_Y37_N27
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

-- Location: LCCOMB_X59_Y37_N24
\de2lcd_map|state~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~69_combout\ = (\de2lcd_map|next_command.WRITE_CHAR8~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR8~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~69_combout\);

-- Location: FF_X59_Y37_N25
\de2lcd_map|state.WRITE_CHAR8\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR8~q\);

-- Location: LCCOMB_X59_Y37_N4
\de2lcd_map|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector23~0_combout\ = (\de2lcd_map|state.WRITE_CHAR8~q\) # ((\de2lcd_map|next_command.WRITE_CHAR9~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR8~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR9~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector23~0_combout\);

-- Location: FF_X59_Y37_N5
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

-- Location: LCCOMB_X59_Y37_N10
\de2lcd_map|state~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~70_combout\ = (\de2lcd_map|next_command.WRITE_CHAR9~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR9~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~70_combout\);

-- Location: FF_X59_Y37_N11
\de2lcd_map|state.WRITE_CHAR9\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR9~q\);

-- Location: LCCOMB_X58_Y37_N30
\de2lcd_map|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector24~0_combout\ = (\de2lcd_map|state.WRITE_CHAR9~q\) # ((\de2lcd_map|next_command.WRITE_CHAR10~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR9~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR10~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector24~0_combout\);

-- Location: FF_X58_Y37_N31
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

-- Location: LCCOMB_X58_Y37_N6
\de2lcd_map|state~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~68_combout\ = (\de2lcd_map|next_command.WRITE_CHAR10~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR10~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~68_combout\);

-- Location: FF_X58_Y37_N7
\de2lcd_map|state.WRITE_CHAR10\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR10~q\);

-- Location: LCCOMB_X58_Y37_N26
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

-- Location: FF_X58_Y37_N27
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

-- Location: LCCOMB_X58_Y37_N18
\de2lcd_map|state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~66_combout\ = (\de2lcd_map|next_command.WRITE_CHAR11~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR11~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~66_combout\);

-- Location: FF_X58_Y37_N19
\de2lcd_map|state.WRITE_CHAR11\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR11~q\);

-- Location: LCCOMB_X58_Y37_N10
\de2lcd_map|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector26~0_combout\ = (\de2lcd_map|state.WRITE_CHAR11~q\) # ((\de2lcd_map|next_command.WRITE_CHAR12~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR11~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR12~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|Selector26~0_combout\);

-- Location: FF_X58_Y37_N11
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

-- Location: LCCOMB_X58_Y38_N8
\de2lcd_map|state~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~79_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.WRITE_CHAR12~q\,
	combout => \de2lcd_map|state~79_combout\);

-- Location: FF_X58_Y38_N9
\de2lcd_map|state.WRITE_CHAR12\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR12~q\);

-- Location: LCCOMB_X58_Y38_N0
\de2lcd_map|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector27~0_combout\ = (\de2lcd_map|state.WRITE_CHAR12~q\) # ((\de2lcd_map|next_command.WRITE_CHAR13~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR12~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR13~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector27~0_combout\);

-- Location: FF_X58_Y38_N1
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

-- Location: LCCOMB_X58_Y38_N30
\de2lcd_map|state~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~77_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.WRITE_CHAR13~q\,
	combout => \de2lcd_map|state~77_combout\);

-- Location: FF_X58_Y38_N31
\de2lcd_map|state.WRITE_CHAR13\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR13~q\);

-- Location: LCCOMB_X58_Y38_N10
\de2lcd_map|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector28~0_combout\ = (\de2lcd_map|state.WRITE_CHAR13~q\) # ((\de2lcd_map|next_command.WRITE_CHAR14~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR13~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR14~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector28~0_combout\);

-- Location: FF_X58_Y38_N11
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

-- Location: LCCOMB_X58_Y38_N28
\de2lcd_map|state~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~78_combout\ = (\de2lcd_map|next_command.WRITE_CHAR14~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|next_command.WRITE_CHAR14~q\,
	datac => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~78_combout\);

-- Location: FF_X58_Y38_N29
\de2lcd_map|state.WRITE_CHAR14\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR14~q\);

-- Location: LCCOMB_X59_Y38_N24
\de2lcd_map|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector29~0_combout\ = (\de2lcd_map|state.WRITE_CHAR14~q\) # ((\de2lcd_map|next_command.WRITE_CHAR15~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.TOGGLE_E~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR15~q\,
	datad => \de2lcd_map|state.WRITE_CHAR14~q\,
	combout => \de2lcd_map|Selector29~0_combout\);

-- Location: FF_X59_Y38_N25
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

-- Location: LCCOMB_X58_Y38_N22
\de2lcd_map|state~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~75_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.WRITE_CHAR15~q\,
	combout => \de2lcd_map|state~75_combout\);

-- Location: FF_X58_Y38_N23
\de2lcd_map|state.WRITE_CHAR15\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR15~q\);

-- Location: LCCOMB_X58_Y38_N18
\de2lcd_map|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector30~0_combout\ = (\de2lcd_map|state.WRITE_CHAR15~q\) # ((\de2lcd_map|next_command.WRITE_CHAR16~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR15~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR16~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector30~0_combout\);

-- Location: FF_X58_Y38_N19
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

-- Location: LCCOMB_X58_Y38_N24
\de2lcd_map|state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~64_combout\ = (\de2lcd_map|next_command.WRITE_CHAR16~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR16~q\,
	datac => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~64_combout\);

-- Location: FF_X58_Y38_N25
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

-- Location: LCCOMB_X59_Y38_N12
\de2lcd_map|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector31~0_combout\ = (\de2lcd_map|state.WRITE_CHAR16~q\) # ((\de2lcd_map|next_command.RETURN_HOME~q\ & ((\de2lcd_map|state.TOGGLE_E~q\) # (\de2lcd_map|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.TOGGLE_E~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.RETURN_HOME~q\,
	datad => \de2lcd_map|state.WRITE_CHAR16~q\,
	combout => \de2lcd_map|Selector31~0_combout\);

-- Location: FF_X59_Y38_N13
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

-- Location: LCCOMB_X59_Y38_N20
\de2lcd_map|state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~58_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.RETURN_HOME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.RETURN_HOME~q\,
	combout => \de2lcd_map|state~58_combout\);

-- Location: FF_X59_Y38_N21
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

-- Location: LCCOMB_X59_Y37_N0
\de2lcd_map|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector13~0_combout\ = (\de2lcd_map|state.DISPLAY_CLEAR~q\) # ((\de2lcd_map|next_command.DISPLAY_ON~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.DISPLAY_ON~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector13~0_combout\);

-- Location: FF_X59_Y37_N1
\de2lcd_map|next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|next_command.DISPLAY_ON~q\);

-- Location: LCCOMB_X59_Y38_N6
\de2lcd_map|state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~56_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.DISPLAY_ON~q\,
	combout => \de2lcd_map|state~56_combout\);

-- Location: FF_X59_Y38_N7
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

-- Location: LCCOMB_X60_Y38_N22
\de2lcd_map|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector14~0_combout\ = (\de2lcd_map|state.DISPLAY_ON~q\) # ((\de2lcd_map|next_command.MODE_SET~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.DISPLAY_ON~q\,
	datac => \de2lcd_map|next_command.MODE_SET~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector14~0_combout\);

-- Location: FF_X60_Y38_N23
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

-- Location: LCCOMB_X59_Y38_N4
\de2lcd_map|state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~57_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.MODE_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.MODE_SET~q\,
	combout => \de2lcd_map|state~57_combout\);

-- Location: FF_X59_Y38_N5
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

-- Location: LCCOMB_X59_Y38_N26
\de2lcd_map|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector15~0_combout\ = (\de2lcd_map|state.RETURN_HOME~q\) # ((\de2lcd_map|state.MODE_SET~q\) # ((!\de2lcd_map|LCD_RS~0_combout\ & \de2lcd_map|next_command.WRITE_CHAR1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|LCD_RS~0_combout\,
	datab => \de2lcd_map|state.RETURN_HOME~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR1~q\,
	datad => \de2lcd_map|state.MODE_SET~q\,
	combout => \de2lcd_map|Selector15~0_combout\);

-- Location: FF_X59_Y38_N27
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

-- Location: LCCOMB_X60_Y38_N26
\de2lcd_map|state~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~74_combout\ = (\de2lcd_map|next_command.WRITE_CHAR1~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|next_command.WRITE_CHAR1~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~74_combout\);

-- Location: FF_X60_Y38_N27
\de2lcd_map|state.WRITE_CHAR1\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR1~q\);

-- Location: LCCOMB_X60_Y38_N16
\de2lcd_map|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector3~0_combout\ = (\de2lcd_map|state.WRITE_CHAR1~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(6) & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR1~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(6),
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector3~0_combout\);

-- Location: FF_X60_Y38_N17
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

-- Location: LCCOMB_X60_Y38_N6
\de2lcd_map|state~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~73_combout\ = (\de2lcd_map|DATA_BUS_VALUE\(6) & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|DATA_BUS_VALUE\(6),
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~73_combout\);

-- Location: FF_X60_Y38_N7
\de2lcd_map|state.WRITE_CHAR2\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR2~q\);

-- Location: LCCOMB_X60_Y38_N2
\de2lcd_map|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector17~0_combout\ = (\de2lcd_map|state.WRITE_CHAR2~q\) # ((\de2lcd_map|next_command.WRITE_CHAR3~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR2~q\,
	datab => \de2lcd_map|state.HOLD~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR3~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector17~0_combout\);

-- Location: FF_X60_Y38_N3
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

-- Location: LCCOMB_X58_Y38_N20
\de2lcd_map|state~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~76_combout\ = (\de2lcd_map|state.HOLD~q\ & \de2lcd_map|next_command.WRITE_CHAR3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|next_command.WRITE_CHAR3~q\,
	combout => \de2lcd_map|state~76_combout\);

-- Location: FF_X58_Y38_N21
\de2lcd_map|state.WRITE_CHAR3\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR3~q\);

-- Location: LCCOMB_X58_Y37_N28
\de2lcd_map|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector18~0_combout\ = (\de2lcd_map|state.WRITE_CHAR3~q\) # ((\de2lcd_map|next_command.WRITE_CHAR4~q\ & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|state.TOGGLE_E~q\,
	datac => \de2lcd_map|next_command.WRITE_CHAR4~q\,
	datad => \de2lcd_map|state.WRITE_CHAR3~q\,
	combout => \de2lcd_map|Selector18~0_combout\);

-- Location: FF_X58_Y37_N29
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

-- Location: LCCOMB_X58_Y37_N14
\de2lcd_map|state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|state~65_combout\ = (\de2lcd_map|next_command.WRITE_CHAR4~q\ & \de2lcd_map|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|next_command.WRITE_CHAR4~q\,
	datad => \de2lcd_map|state.HOLD~q\,
	combout => \de2lcd_map|state~65_combout\);

-- Location: FF_X58_Y37_N15
\de2lcd_map|state.WRITE_CHAR4\ : dffeas
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
	q => \de2lcd_map|state.WRITE_CHAR4~q\);

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

-- Location: LCCOMB_X67_Y35_N26
\i2c_master_map|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|stretch~0_combout\ = (\i2c_master_map|process_0~7_combout\ & ((\i2c_master_map|stretch~q\))) # (!\i2c_master_map|process_0~7_combout\ & (!\scl~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scl~input_o\,
	datac => \i2c_master_map|stretch~q\,
	datad => \i2c_master_map|process_0~7_combout\,
	combout => \i2c_master_map|stretch~0_combout\);

-- Location: FF_X67_Y35_N27
\i2c_master_map|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|stretch~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|stretch~q\);

-- Location: LCCOMB_X67_Y35_N10
\i2c_master_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add0~0_combout\ = (\i2c_master_map|stretch~q\ & (\i2c_master_map|count\(0) & VCC)) # (!\i2c_master_map|stretch~q\ & (\i2c_master_map|count\(0) $ (VCC)))
-- \i2c_master_map|Add0~1\ = CARRY((!\i2c_master_map|stretch~q\ & \i2c_master_map|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|stretch~q\,
	datab => \i2c_master_map|count\(0),
	datad => VCC,
	combout => \i2c_master_map|Add0~0_combout\,
	cout => \i2c_master_map|Add0~1\);

-- Location: LCCOMB_X66_Y35_N6
\i2c_master_map|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|count~3_combout\ = (\i2c_master_map|Add0~0_combout\ & !\i2c_master_map|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|Add0~0_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|count~3_combout\);

-- Location: FF_X67_Y35_N29
\i2c_master_map|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|count~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|count\(0));

-- Location: LCCOMB_X67_Y35_N12
\i2c_master_map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add0~2_combout\ = (\i2c_master_map|count\(1) & (!\i2c_master_map|Add0~1\)) # (!\i2c_master_map|count\(1) & ((\i2c_master_map|Add0~1\) # (GND)))
-- \i2c_master_map|Add0~3\ = CARRY((!\i2c_master_map|Add0~1\) # (!\i2c_master_map|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|count\(1),
	datad => VCC,
	cin => \i2c_master_map|Add0~1\,
	combout => \i2c_master_map|Add0~2_combout\,
	cout => \i2c_master_map|Add0~3\);

-- Location: LCCOMB_X67_Y35_N6
\i2c_master_map|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|count~2_combout\ = (\i2c_master_map|Add0~2_combout\ & !\i2c_master_map|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|Add0~2_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|count~2_combout\);

-- Location: FF_X67_Y35_N7
\i2c_master_map|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|count~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|count\(1));

-- Location: LCCOMB_X67_Y35_N14
\i2c_master_map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add0~4_combout\ = (\i2c_master_map|count\(2) & (\i2c_master_map|Add0~3\ $ (GND))) # (!\i2c_master_map|count\(2) & (!\i2c_master_map|Add0~3\ & VCC))
-- \i2c_master_map|Add0~5\ = CARRY((\i2c_master_map|count\(2) & !\i2c_master_map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|count\(2),
	datad => VCC,
	cin => \i2c_master_map|Add0~3\,
	combout => \i2c_master_map|Add0~4_combout\,
	cout => \i2c_master_map|Add0~5\);

-- Location: LCCOMB_X67_Y35_N8
\i2c_master_map|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|count~6_combout\ = (\i2c_master_map|Add0~4_combout\ & !\i2c_master_map|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|Add0~4_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|count~6_combout\);

-- Location: FF_X67_Y35_N9
\i2c_master_map|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|count~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|count\(2));

-- Location: LCCOMB_X67_Y35_N16
\i2c_master_map|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add0~6_combout\ = (\i2c_master_map|count\(3) & (!\i2c_master_map|Add0~5\)) # (!\i2c_master_map|count\(3) & ((\i2c_master_map|Add0~5\) # (GND)))
-- \i2c_master_map|Add0~7\ = CARRY((!\i2c_master_map|Add0~5\) # (!\i2c_master_map|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|count\(3),
	datad => VCC,
	cin => \i2c_master_map|Add0~5\,
	combout => \i2c_master_map|Add0~6_combout\,
	cout => \i2c_master_map|Add0~7\);

-- Location: LCCOMB_X66_Y35_N16
\i2c_master_map|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|count~0_combout\ = (\i2c_master_map|Add0~6_combout\ & !\i2c_master_map|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|Add0~6_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|count~0_combout\);

-- Location: FF_X67_Y35_N3
\i2c_master_map|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|count~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|count\(3));

-- Location: LCCOMB_X67_Y35_N18
\i2c_master_map|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add0~8_combout\ = (\i2c_master_map|count\(4) & (\i2c_master_map|Add0~7\ $ (GND))) # (!\i2c_master_map|count\(4) & (!\i2c_master_map|Add0~7\ & VCC))
-- \i2c_master_map|Add0~9\ = CARRY((\i2c_master_map|count\(4) & !\i2c_master_map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|count\(4),
	datad => VCC,
	cin => \i2c_master_map|Add0~7\,
	combout => \i2c_master_map|Add0~8_combout\,
	cout => \i2c_master_map|Add0~9\);

-- Location: LCCOMB_X66_Y35_N26
\i2c_master_map|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|count~5_combout\ = (\i2c_master_map|Add0~8_combout\ & !\i2c_master_map|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|Add0~8_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|count~5_combout\);

-- Location: FF_X67_Y35_N19
\i2c_master_map|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|count~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|count\(4));

-- Location: LCCOMB_X67_Y35_N20
\i2c_master_map|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add0~10_combout\ = (\i2c_master_map|count\(5) & (!\i2c_master_map|Add0~9\)) # (!\i2c_master_map|count\(5) & ((\i2c_master_map|Add0~9\) # (GND)))
-- \i2c_master_map|Add0~11\ = CARRY((!\i2c_master_map|Add0~9\) # (!\i2c_master_map|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|count\(5),
	datad => VCC,
	cin => \i2c_master_map|Add0~9\,
	combout => \i2c_master_map|Add0~10_combout\,
	cout => \i2c_master_map|Add0~11\);

-- Location: LCCOMB_X67_Y35_N22
\i2c_master_map|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add0~12_combout\ = \i2c_master_map|Add0~11\ $ (!\i2c_master_map|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|count\(6),
	cin => \i2c_master_map|Add0~11\,
	combout => \i2c_master_map|Add0~12_combout\);

-- Location: LCCOMB_X67_Y35_N28
\i2c_master_map|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|count~1_combout\ = (\i2c_master_map|Add0~12_combout\ & !\i2c_master_map|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Add0~12_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|count~1_combout\);

-- Location: FF_X67_Y35_N13
\i2c_master_map|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|count~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|count\(6));

-- Location: LCCOMB_X67_Y35_N2
\i2c_master_map|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Equal0~0_combout\ = (\i2c_master_map|count\(4) & (\i2c_master_map|count\(5) & (\i2c_master_map|count\(3) & \i2c_master_map|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|count\(4),
	datab => \i2c_master_map|count\(5),
	datac => \i2c_master_map|count\(3),
	datad => \i2c_master_map|count\(6),
	combout => \i2c_master_map|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y35_N24
\i2c_master_map|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Equal0~1_combout\ = (\i2c_master_map|count\(1) & (\i2c_master_map|count\(0) & (!\i2c_master_map|count\(2) & \i2c_master_map|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|count\(1),
	datab => \i2c_master_map|count\(0),
	datac => \i2c_master_map|count\(2),
	datad => \i2c_master_map|Equal0~0_combout\,
	combout => \i2c_master_map|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y35_N4
\i2c_master_map|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|count~4_combout\ = (\i2c_master_map|Add0~10_combout\ & !\i2c_master_map|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|Add0~10_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|count~4_combout\);

-- Location: FF_X67_Y35_N17
\i2c_master_map|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|count~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|count\(5));

-- Location: LCCOMB_X66_Y35_N2
\i2c_master_map|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_0~9_combout\ = (\i2c_master_map|Add0~8_combout\ & (!\i2c_master_map|Equal0~1_combout\ & (\i2c_master_map|Add0~4_combout\ & \i2c_master_map|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Add0~8_combout\,
	datab => \i2c_master_map|Equal0~1_combout\,
	datac => \i2c_master_map|Add0~4_combout\,
	datad => \i2c_master_map|Add0~6_combout\,
	combout => \i2c_master_map|process_0~9_combout\);

-- Location: LCCOMB_X66_Y35_N30
\i2c_master_map|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_0~6_combout\ = (\i2c_master_map|Add0~2_combout\) # ((!\i2c_master_map|Add0~10_combout\ & \i2c_master_map|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Add0~10_combout\,
	datab => \i2c_master_map|Add0~0_combout\,
	datac => \i2c_master_map|Add0~2_combout\,
	combout => \i2c_master_map|process_0~6_combout\);

-- Location: LCCOMB_X66_Y35_N20
\i2c_master_map|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_0~7_combout\ = (\i2c_master_map|Add0~10_combout\ & (((\i2c_master_map|count~1_combout\) # (!\i2c_master_map|process_0~6_combout\)) # (!\i2c_master_map|process_0~9_combout\))) # (!\i2c_master_map|Add0~10_combout\ & 
-- (((\i2c_master_map|process_0~9_combout\ & \i2c_master_map|process_0~6_combout\)) # (!\i2c_master_map|count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Add0~10_combout\,
	datab => \i2c_master_map|process_0~9_combout\,
	datac => \i2c_master_map|process_0~6_combout\,
	datad => \i2c_master_map|count~1_combout\,
	combout => \i2c_master_map|process_0~7_combout\);

-- Location: LCCOMB_X66_Y35_N22
\i2c_master_map|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|LessThan1~0_combout\ = (\i2c_master_map|Add0~2_combout\ & \i2c_master_map|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|Add0~2_combout\,
	datad => \i2c_master_map|Add0~8_combout\,
	combout => \i2c_master_map|LessThan1~0_combout\);

-- Location: LCCOMB_X66_Y35_N10
\i2c_master_map|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|LessThan1~1_combout\ = (\i2c_master_map|LessThan1~0_combout\ & (\i2c_master_map|Add0~0_combout\ & (\i2c_master_map|Add0~4_combout\ & !\i2c_master_map|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|LessThan1~0_combout\,
	datab => \i2c_master_map|Add0~0_combout\,
	datac => \i2c_master_map|Add0~4_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|LessThan1~1_combout\);

-- Location: LCCOMB_X66_Y35_N14
\i2c_master_map|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|LessThan1~2_combout\ = (\i2c_master_map|Add0~10_combout\) # (\i2c_master_map|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|Add0~10_combout\,
	datad => \i2c_master_map|Add0~12_combout\,
	combout => \i2c_master_map|LessThan1~2_combout\);

-- Location: LCCOMB_X66_Y35_N28
\i2c_master_map|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|LessThan1~3_combout\ = (!\i2c_master_map|Equal0~1_combout\ & ((\i2c_master_map|LessThan1~2_combout\) # ((\i2c_master_map|LessThan1~1_combout\ & \i2c_master_map|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|LessThan1~1_combout\,
	datab => \i2c_master_map|Equal0~1_combout\,
	datac => \i2c_master_map|LessThan1~2_combout\,
	datad => \i2c_master_map|Add0~6_combout\,
	combout => \i2c_master_map|LessThan1~3_combout\);

-- Location: LCCOMB_X66_Y35_N12
\i2c_master_map|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_0~8_combout\ = (!\i2c_master_map|Add0~10_combout\ & (((\i2c_master_map|Equal0~1_combout\) # (!\i2c_master_map|Add0~6_combout\)) # (!\i2c_master_map|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|LessThan1~1_combout\,
	datab => \i2c_master_map|Add0~6_combout\,
	datac => \i2c_master_map|Add0~10_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|process_0~8_combout\);

-- Location: LCCOMB_X66_Y35_N8
\i2c_master_map|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_0~4_combout\ = (\i2c_master_map|LessThan1~0_combout\ & (\i2c_master_map|Add0~4_combout\ & (\i2c_master_map|Add0~10_combout\ & \i2c_master_map|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|LessThan1~0_combout\,
	datab => \i2c_master_map|Add0~4_combout\,
	datac => \i2c_master_map|Add0~10_combout\,
	datad => \i2c_master_map|count~0_combout\,
	combout => \i2c_master_map|process_0~4_combout\);

-- Location: LCCOMB_X66_Y35_N24
\i2c_master_map|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_0~5_combout\ = (\i2c_master_map|process_0~8_combout\) # ((\i2c_master_map|Add0~12_combout\) # ((\i2c_master_map|process_0~4_combout\) # (\i2c_master_map|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|process_0~8_combout\,
	datab => \i2c_master_map|Add0~12_combout\,
	datac => \i2c_master_map|process_0~4_combout\,
	datad => \i2c_master_map|Equal0~1_combout\,
	combout => \i2c_master_map|process_0~5_combout\);

-- Location: LCCOMB_X67_Y35_N0
\i2c_master_map|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_clk~0_combout\ = (\i2c_master_map|LessThan1~3_combout\ & ((!\i2c_master_map|process_0~5_combout\) # (!\i2c_master_map|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|process_0~7_combout\,
	datac => \i2c_master_map|LessThan1~3_combout\,
	datad => \i2c_master_map|process_0~5_combout\,
	combout => \i2c_master_map|data_clk~0_combout\);

-- Location: FF_X67_Y35_N1
\i2c_master_map|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_clk~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_clk~q\);

-- Location: LCCOMB_X66_Y36_N26
\i2c_master_map|data_clk_prev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_clk_prev~feeder_combout\ = \i2c_master_map|data_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_clk~q\,
	combout => \i2c_master_map|data_clk_prev~feeder_combout\);

-- Location: FF_X66_Y36_N27
\i2c_master_map|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_clk_prev~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_clk_prev~q\);

-- Location: LCCOMB_X63_Y36_N28
\i2c_master_map|bit_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|bit_cnt[0]~1_combout\ = !\i2c_master_map|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|bit_cnt\(0),
	combout => \i2c_master_map|bit_cnt[0]~1_combout\);

-- Location: LCCOMB_X65_Y36_N18
\i2c_master_map|state.ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|state.ready~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i2c_master_map|state.ready~feeder_combout\);

-- Location: LCCOMB_X66_Y36_N6
\i2c_master_map|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_1~1_combout\ = (!\i2c_master_map|data_clk_prev~q\ & \i2c_master_map|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|data_clk_prev~q\,
	datad => \i2c_master_map|data_clk~q\,
	combout => \i2c_master_map|process_1~1_combout\);

-- Location: FF_X65_Y36_N19
\i2c_master_map|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|state.ready~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.ready~q\);

-- Location: LCCOMB_X65_Y36_N8
\i2c_master_map|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|state.start~0_combout\ = !\i2c_master_map|state.ready~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|state.ready~q\,
	combout => \i2c_master_map|state.start~0_combout\);

-- Location: FF_X65_Y36_N9
\i2c_master_map|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|state.start~0_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.start~q\);

-- Location: LCCOMB_X63_Y36_N26
\i2c_master_map|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Add1~0_combout\ = \i2c_master_map|bit_cnt\(2) $ (((\i2c_master_map|bit_cnt\(1) & \i2c_master_map|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|bit_cnt\(1),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(0),
	combout => \i2c_master_map|Add1~0_combout\);

-- Location: FF_X63_Y36_N27
\i2c_master_map|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Add1~0_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|bit_cnt\(2));

-- Location: LCCOMB_X66_Y36_N18
\i2c_master_map|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Equal1~0_combout\ = (\i2c_master_map|bit_cnt\(1) & (\i2c_master_map|bit_cnt\(2) & \i2c_master_map|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|bit_cnt\(1),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(0),
	combout => \i2c_master_map|Equal1~0_combout\);

-- Location: LCCOMB_X65_Y36_N28
\i2c_master_map|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector19~0_combout\ = (\i2c_master_map|state.start~q\) # ((\i2c_master_map|state.command~q\ & !\i2c_master_map|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|state.start~q\,
	datac => \i2c_master_map|state.command~q\,
	datad => \i2c_master_map|Equal1~0_combout\,
	combout => \i2c_master_map|Selector19~0_combout\);

-- Location: FF_X65_Y36_N29
\i2c_master_map|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Selector19~0_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.command~q\);

-- Location: LCCOMB_X65_Y36_N30
\i2c_master_map|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|state~15_combout\ = (\i2c_master_map|state.wr~q\ & (\i2c_master_map|bit_cnt\(1) & (\i2c_master_map|bit_cnt\(0) & \i2c_master_map|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.wr~q\,
	datab => \i2c_master_map|bit_cnt\(1),
	datac => \i2c_master_map|bit_cnt\(0),
	datad => \i2c_master_map|bit_cnt\(2),
	combout => \i2c_master_map|state~15_combout\);

-- Location: FF_X65_Y36_N31
\i2c_master_map|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|state~15_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.slv_ack2~q\);

-- Location: LCCOMB_X65_Y36_N22
\i2c_master_map|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector20~0_combout\ = (\i2c_master_map|state.slv_ack2~q\) # ((\i2c_master_map|state.wr~q\ & !\i2c_master_map|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.slv_ack2~q\,
	datac => \i2c_master_map|state.wr~q\,
	datad => \i2c_master_map|Equal1~0_combout\,
	combout => \i2c_master_map|Selector20~0_combout\);

-- Location: FF_X65_Y36_N23
\i2c_master_map|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Selector20~0_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.wr~q\);

-- Location: LCCOMB_X65_Y36_N2
\i2c_master_map|bit_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|bit_cnt[2]~0_combout\ = (\i2c_master_map|process_1~1_combout\ & ((\i2c_master_map|state.rd~q\) # ((\i2c_master_map|state.command~q\) # (\i2c_master_map|state.wr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.rd~q\,
	datab => \i2c_master_map|state.command~q\,
	datac => \i2c_master_map|state.wr~q\,
	datad => \i2c_master_map|process_1~1_combout\,
	combout => \i2c_master_map|bit_cnt[2]~0_combout\);

-- Location: FF_X63_Y36_N29
\i2c_master_map|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|bit_cnt[0]~1_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|bit_cnt\(0));

-- Location: LCCOMB_X63_Y36_N20
\i2c_master_map|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector25~0_combout\ = \i2c_master_map|bit_cnt\(1) $ (\i2c_master_map|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|bit_cnt\(1),
	datad => \i2c_master_map|bit_cnt\(0),
	combout => \i2c_master_map|Selector25~0_combout\);

-- Location: FF_X63_Y36_N21
\i2c_master_map|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Selector25~0_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|bit_cnt\(1));

-- Location: LCCOMB_X66_Y36_N24
\i2c_master_map|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|state~14_combout\ = (\i2c_master_map|bit_cnt\(1) & (\i2c_master_map|state.rd~q\ & (\i2c_master_map|bit_cnt\(2) & \i2c_master_map|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|bit_cnt\(1),
	datab => \i2c_master_map|state.rd~q\,
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(0),
	combout => \i2c_master_map|state~14_combout\);

-- Location: FF_X65_Y36_N21
\i2c_master_map|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|state~14_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.mstr_ack~q\);

-- Location: LCCOMB_X65_Y36_N16
\i2c_master_map|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|state~13_combout\ = (\i2c_master_map|state.command~q\ & (\i2c_master_map|bit_cnt\(1) & (\i2c_master_map|bit_cnt\(0) & \i2c_master_map|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.command~q\,
	datab => \i2c_master_map|bit_cnt\(1),
	datac => \i2c_master_map|bit_cnt\(0),
	datad => \i2c_master_map|bit_cnt\(2),
	combout => \i2c_master_map|state~13_combout\);

-- Location: FF_X65_Y36_N17
\i2c_master_map|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|state~13_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.slv_ack1~q\);

-- Location: LCCOMB_X65_Y36_N6
\i2c_master_map|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector21~0_combout\ = (!\i2c_master_map|state~14_combout\ & ((\i2c_master_map|state.mstr_ack~q\) # ((\i2c_master_map|state.rd~q\) # (\i2c_master_map|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state~14_combout\,
	datab => \i2c_master_map|state.mstr_ack~q\,
	datac => \i2c_master_map|state.rd~q\,
	datad => \i2c_master_map|state.slv_ack1~q\,
	combout => \i2c_master_map|Selector21~0_combout\);

-- Location: FF_X65_Y36_N7
\i2c_master_map|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Selector21~0_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|state.rd~q\);

-- Location: LCCOMB_X66_Y36_N20
\i2c_master_map|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~0_combout\ = (\i2c_master_map|data_clk_prev~q\ & (\reset~input_o\ & (\i2c_master_map|state.rd~q\ & !\i2c_master_map|data_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|data_clk_prev~q\,
	datab => \reset~input_o\,
	datac => \i2c_master_map|state.rd~q\,
	datad => \i2c_master_map|data_clk~q\,
	combout => \i2c_master_map|Decoder0~0_combout\);

-- Location: LCCOMB_X63_Y36_N6
\i2c_master_map|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~1_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (!\i2c_master_map|bit_cnt\(0) & (!\i2c_master_map|bit_cnt\(2) & !\i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~1_combout\);

-- Location: LCCOMB_X62_Y36_N16
\i2c_master_map|data_rx[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[7]~0_combout\ = (\i2c_master_map|Decoder0~1_combout\ & (\sda~input_o\)) # (!\i2c_master_map|Decoder0~1_combout\ & ((\i2c_master_map|data_rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda~input_o\,
	datac => \i2c_master_map|data_rx\(7),
	datad => \i2c_master_map|Decoder0~1_combout\,
	combout => \i2c_master_map|data_rx[7]~0_combout\);

-- Location: FF_X62_Y36_N17
\i2c_master_map|data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(7));

-- Location: LCCOMB_X62_Y36_N24
\i2c_master_map|data_rd[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[7]~feeder_combout\ = \i2c_master_map|data_rx\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rx\(7),
	combout => \i2c_master_map|data_rd[7]~feeder_combout\);

-- Location: LCCOMB_X66_Y36_N22
\i2c_master_map|data_rd[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[7]~2_combout\ = (\i2c_master_map|state~14_combout\ & (!\i2c_master_map|data_clk_prev~q\ & \i2c_master_map|data_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|state~14_combout\,
	datac => \i2c_master_map|data_clk_prev~q\,
	datad => \i2c_master_map|data_clk~q\,
	combout => \i2c_master_map|data_rd[7]~2_combout\);

-- Location: FF_X62_Y36_N25
\i2c_master_map|data_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rd[7]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(7));

-- Location: FF_X61_Y36_N31
\clocked_data_receive:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[31]~q\);

-- Location: LCCOMB_X61_Y37_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \clocked_data_receive:counter[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\clocked_data_receive:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X62_Y37_N20
\counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~30_combout\ = (\Add0~0_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~30_combout\);

-- Location: FF_X62_Y37_N21
\clocked_data_receive:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[0]~q\);

-- Location: LCCOMB_X61_Y37_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\clocked_data_receive:counter[1]~q\ & (!\Add0~1\)) # (!\clocked_data_receive:counter[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\clocked_data_receive:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X62_Y37_N30
\counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~29_combout\ = (\Add0~2_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~29_combout\);

-- Location: FF_X62_Y37_N31
\clocked_data_receive:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[1]~q\);

-- Location: LCCOMB_X61_Y37_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\clocked_data_receive:counter[2]~q\ & (\Add0~3\ $ (GND))) # (!\clocked_data_receive:counter[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\clocked_data_receive:counter[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X62_Y37_N24
\counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~28_combout\ = (\Add0~4_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~28_combout\);

-- Location: FF_X62_Y37_N25
\clocked_data_receive:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[2]~q\);

-- Location: LCCOMB_X61_Y37_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\clocked_data_receive:counter[3]~q\ & (!\Add0~5\)) # (!\clocked_data_receive:counter[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\clocked_data_receive:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X62_Y37_N6
\counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~27_combout\ = (\Add0~6_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~27_combout\);

-- Location: FF_X62_Y37_N7
\clocked_data_receive:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[3]~q\);

-- Location: LCCOMB_X61_Y37_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\clocked_data_receive:counter[4]~q\ & (\Add0~7\ $ (GND))) # (!\clocked_data_receive:counter[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\clocked_data_receive:counter[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X62_Y37_N8
\counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~26_combout\ = (\Add0~8_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~26_combout\);

-- Location: FF_X62_Y37_N9
\clocked_data_receive:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[4]~q\);

-- Location: LCCOMB_X61_Y37_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\clocked_data_receive:counter[5]~q\ & (!\Add0~9\)) # (!\clocked_data_receive:counter[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\clocked_data_receive:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X62_Y37_N22
\counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~25_combout\ = (\Add0~10_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~25_combout\);

-- Location: FF_X62_Y37_N23
\clocked_data_receive:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[5]~q\);

-- Location: LCCOMB_X61_Y37_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\clocked_data_receive:counter[6]~q\ & (\Add0~11\ $ (GND))) # (!\clocked_data_receive:counter[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\clocked_data_receive:counter[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X60_Y37_N12
\counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~24_combout\ = (\Add0~12_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~24_combout\);

-- Location: FF_X60_Y37_N13
\clocked_data_receive:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[6]~q\);

-- Location: LCCOMB_X61_Y37_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\clocked_data_receive:counter[7]~q\ & (!\Add0~13\)) # (!\clocked_data_receive:counter[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\clocked_data_receive:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X60_Y37_N30
\counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~23_combout\ = (\Add0~14_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~23_combout\);

-- Location: FF_X60_Y37_N31
\clocked_data_receive:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[7]~q\);

-- Location: LCCOMB_X61_Y37_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\clocked_data_receive:counter[8]~q\ & (\Add0~15\ $ (GND))) # (!\clocked_data_receive:counter[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\clocked_data_receive:counter[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X60_Y37_N24
\counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~22_combout\ = (\Add0~16_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~22_combout\);

-- Location: FF_X60_Y37_N25
\clocked_data_receive:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[8]~q\);

-- Location: LCCOMB_X61_Y37_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\clocked_data_receive:counter[9]~q\ & (!\Add0~17\)) # (!\clocked_data_receive:counter[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\clocked_data_receive:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X60_Y37_N26
\counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~21_combout\ = (!\LessThan0~8_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~8_combout\,
	datad => \Add0~18_combout\,
	combout => \counter~21_combout\);

-- Location: FF_X60_Y37_N27
\clocked_data_receive:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[9]~q\);

-- Location: LCCOMB_X61_Y37_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\clocked_data_receive:counter[10]~q\ & (\Add0~19\ $ (GND))) # (!\clocked_data_receive:counter[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\clocked_data_receive:counter[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X60_Y37_N4
\counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~20_combout\ = (\Add0~20_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~20_combout\);

-- Location: FF_X61_Y37_N15
\clocked_data_receive:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \counter~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[10]~q\);

-- Location: LCCOMB_X61_Y37_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\clocked_data_receive:counter[11]~q\ & (!\Add0~21\)) # (!\clocked_data_receive:counter[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\clocked_data_receive:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X60_Y37_N16
\counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~19_combout\ = (\Add0~22_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~19_combout\);

-- Location: FF_X60_Y37_N17
\clocked_data_receive:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[11]~q\);

-- Location: LCCOMB_X61_Y37_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\clocked_data_receive:counter[12]~q\ & (\Add0~23\ $ (GND))) # (!\clocked_data_receive:counter[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\clocked_data_receive:counter[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X62_Y37_N12
\counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (\Add0~24_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~18_combout\);

-- Location: FF_X62_Y37_N13
\clocked_data_receive:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[12]~q\);

-- Location: LCCOMB_X61_Y37_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\clocked_data_receive:counter[13]~q\ & (!\Add0~25\)) # (!\clocked_data_receive:counter[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\clocked_data_receive:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X60_Y37_N22
\counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (\Add0~26_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~17_combout\);

-- Location: FF_X60_Y37_N23
\clocked_data_receive:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[13]~q\);

-- Location: LCCOMB_X61_Y37_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\clocked_data_receive:counter[14]~q\ & (\Add0~27\ $ (GND))) # (!\clocked_data_receive:counter[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\clocked_data_receive:counter[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X62_Y37_N2
\counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (\Add0~28_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~16_combout\);

-- Location: FF_X62_Y37_N3
\clocked_data_receive:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[14]~q\);

-- Location: LCCOMB_X61_Y37_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\clocked_data_receive:counter[15]~q\ & (!\Add0~29\)) # (!\clocked_data_receive:counter[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\clocked_data_receive:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X62_Y37_N4
\counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (\Add0~30_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~15_combout\);

-- Location: FF_X62_Y37_N5
\clocked_data_receive:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[15]~q\);

-- Location: LCCOMB_X61_Y36_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\clocked_data_receive:counter[16]~q\ & (\Add0~31\ $ (GND))) # (!\clocked_data_receive:counter[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\clocked_data_receive:counter[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X60_Y36_N12
\counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (\Add0~32_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~14_combout\);

-- Location: FF_X60_Y36_N13
\clocked_data_receive:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[16]~q\);

-- Location: LCCOMB_X61_Y36_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\clocked_data_receive:counter[17]~q\ & (!\Add0~33\)) # (!\clocked_data_receive:counter[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\clocked_data_receive:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X60_Y36_N14
\counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (\Add0~34_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~13_combout\);

-- Location: FF_X60_Y36_N15
\clocked_data_receive:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[17]~q\);

-- Location: LCCOMB_X61_Y36_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\clocked_data_receive:counter[18]~q\ & (\Add0~35\ $ (GND))) # (!\clocked_data_receive:counter[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\clocked_data_receive:counter[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X60_Y36_N16
\counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (\Add0~36_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~12_combout\);

-- Location: FF_X60_Y36_N17
\clocked_data_receive:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[18]~q\);

-- Location: LCCOMB_X61_Y36_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\clocked_data_receive:counter[19]~q\ & (!\Add0~37\)) # (!\clocked_data_receive:counter[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\clocked_data_receive:counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X60_Y36_N22
\counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add0~38_combout\ & !\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datad => \LessThan0~8_combout\,
	combout => \counter~11_combout\);

-- Location: FF_X60_Y36_N23
\clocked_data_receive:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[19]~q\);

-- Location: LCCOMB_X61_Y36_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\clocked_data_receive:counter[20]~q\ & (\Add0~39\ $ (GND))) # (!\clocked_data_receive:counter[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\clocked_data_receive:counter[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X60_Y36_N0
\counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add0~62_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~40_combout\,
	combout => \counter~10_combout\);

-- Location: FF_X60_Y36_N1
\clocked_data_receive:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[20]~q\);

-- Location: LCCOMB_X61_Y36_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\clocked_data_receive:counter[21]~q\ & (!\Add0~41\)) # (!\clocked_data_receive:counter[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\clocked_data_receive:counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X60_Y36_N18
\counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add0~42_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datac => \Add0~62_combout\,
	combout => \counter~9_combout\);

-- Location: FF_X60_Y36_N19
\clocked_data_receive:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[21]~q\);

-- Location: LCCOMB_X61_Y36_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\clocked_data_receive:counter[22]~q\ & (\Add0~43\ $ (GND))) # (!\clocked_data_receive:counter[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\clocked_data_receive:counter[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X60_Y36_N28
\counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add0~44_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~44_combout\,
	datac => \Add0~62_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X60_Y36_N29
\clocked_data_receive:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[22]~q\);

-- Location: LCCOMB_X61_Y36_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\clocked_data_receive:counter[23]~q\ & (!\Add0~45\)) # (!\clocked_data_receive:counter[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\clocked_data_receive:counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X60_Y36_N6
\counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~62_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~46_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X60_Y36_N7
\clocked_data_receive:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[23]~q\);

-- Location: LCCOMB_X61_Y36_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\clocked_data_receive:counter[24]~q\ & (\Add0~47\ $ (GND))) # (!\clocked_data_receive:counter[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\clocked_data_receive:counter[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X60_Y36_N24
\counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~62_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~48_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X60_Y36_N25
\clocked_data_receive:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[24]~q\);

-- Location: LCCOMB_X61_Y36_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\clocked_data_receive:counter[25]~q\ & (!\Add0~49\)) # (!\clocked_data_receive:counter[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\clocked_data_receive:counter[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X60_Y36_N10
\counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~62_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~50_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X60_Y36_N11
\clocked_data_receive:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[25]~q\);

-- Location: LCCOMB_X61_Y36_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\clocked_data_receive:counter[26]~q\ & (\Add0~51\ $ (GND))) # (!\clocked_data_receive:counter[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\clocked_data_receive:counter[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X60_Y36_N20
\counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~52_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datac => \Add0~62_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X60_Y36_N21
\clocked_data_receive:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[26]~q\);

-- Location: LCCOMB_X61_Y36_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\clocked_data_receive:counter[27]~q\ & (!\Add0~53\)) # (!\clocked_data_receive:counter[27]~q\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\clocked_data_receive:counter[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[27]~q\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X60_Y36_N2
\counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~62_combout\ & \Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~54_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X60_Y36_N3
\clocked_data_receive:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[27]~q\);

-- Location: LCCOMB_X61_Y36_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\clocked_data_receive:counter[28]~q\ & (\Add0~55\ $ (GND))) # (!\clocked_data_receive:counter[28]~q\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\clocked_data_receive:counter[28]~q\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocked_data_receive:counter[28]~q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X60_Y36_N4
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~62_combout\ & \Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~56_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X60_Y36_N5
\clocked_data_receive:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[28]~q\);

-- Location: LCCOMB_X61_Y36_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\clocked_data_receive:counter[29]~q\ & (!\Add0~57\)) # (!\clocked_data_receive:counter[29]~q\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\clocked_data_receive:counter[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[29]~q\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X61_Y36_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\clocked_data_receive:counter[30]~q\ & (\Add0~59\ $ (GND))) # (!\clocked_data_receive:counter[30]~q\ & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((\clocked_data_receive:counter[30]~q\ & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[30]~q\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X60_Y36_N8
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~62_combout\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~60_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X60_Y36_N9
\clocked_data_receive:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[30]~q\);

-- Location: LCCOMB_X61_Y36_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \clocked_data_receive:counter[31]~q\ $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocked_data_receive:counter[31]~q\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X60_Y36_N26
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~62_combout\ & \Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~58_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X60_Y36_N27
\clocked_data_receive:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocked_data_receive:counter[29]~q\);

-- Location: LCCOMB_X60_Y37_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\Add0~32_combout\) # (!\Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Add0~32_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y37_N14
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!\Add0~12_combout\ & (!\Add0~16_combout\ & !\Add0~14_combout\))) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~18_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y37_N28
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Add0~20_combout\ & (!\Add0~22_combout\ & (!\Add0~24_combout\ & !\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~22_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~26_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y37_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\Add0~30_combout\ & (((\LessThan0~0_combout\ & \LessThan0~1_combout\)) # (!\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~28_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X60_Y37_N10
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((\LessThan0~3_combout\) # (\LessThan0~2_combout\)) # (!\Add0~38_combout\)) # (!\Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~38_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y37_N0
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\Add0~42_combout\ & (!\Add0~44_combout\ & (!\Add0~40_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~44_combout\,
	datac => \Add0~40_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y37_N2
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\Add0~50_combout\ & (!\Add0~48_combout\ & (!\Add0~46_combout\ & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~46_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X60_Y37_N20
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\Add0~52_combout\ & (!\Add0~56_combout\ & (!\Add0~54_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~56_combout\,
	datac => \Add0~54_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X60_Y37_N18
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\Add0~62_combout\ & ((\Add0~58_combout\) # ((\Add0~60_combout\) # (!\LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~62_combout\,
	datac => \Add0~60_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X60_Y37_N5
\send_data_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|data_rd\(7),
	sload => VCC,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(7));

-- Location: LCCOMB_X59_Y37_N8
\de2lcd_map|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector9~0_combout\ = (\de2lcd_map|state.WRITE_CHAR4~q\ & ((send_data_rd(7)) # ((\de2lcd_map|DATA_BUS_VALUE\(0) & !\de2lcd_map|LCD_RS~0_combout\)))) # (!\de2lcd_map|state.WRITE_CHAR4~q\ & (\de2lcd_map|DATA_BUS_VALUE\(0) & 
-- (!\de2lcd_map|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR4~q\,
	datab => \de2lcd_map|DATA_BUS_VALUE\(0),
	datac => \de2lcd_map|LCD_RS~0_combout\,
	datad => send_data_rd(7),
	combout => \de2lcd_map|Selector9~0_combout\);

-- Location: LCCOMB_X63_Y36_N12
\i2c_master_map|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~2_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (\i2c_master_map|bit_cnt\(0) & (\i2c_master_map|bit_cnt\(2) & \i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~2_combout\);

-- Location: LCCOMB_X62_Y36_N18
\i2c_master_map|data_rx[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[0]~1_combout\ = (\i2c_master_map|Decoder0~2_combout\ & ((\sda~input_o\))) # (!\i2c_master_map|Decoder0~2_combout\ & (\i2c_master_map|data_rx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|Decoder0~2_combout\,
	datac => \i2c_master_map|data_rx\(0),
	datad => \sda~input_o\,
	combout => \i2c_master_map|data_rx[0]~1_combout\);

-- Location: FF_X62_Y36_N19
\i2c_master_map|data_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(0));

-- Location: LCCOMB_X62_Y36_N2
\i2c_master_map|data_rd[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[0]~feeder_combout\ = \i2c_master_map|data_rx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rx\(0),
	combout => \i2c_master_map|data_rd[0]~feeder_combout\);

-- Location: FF_X62_Y36_N3
\i2c_master_map|data_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rd[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(0));

-- Location: LCCOMB_X58_Y37_N4
\send_data_rd[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_data_rd[0]~feeder_combout\ = \i2c_master_map|data_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rd\(0),
	combout => \send_data_rd[0]~feeder_combout\);

-- Location: FF_X58_Y37_N5
\send_data_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \send_data_rd[0]~feeder_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(0));

-- Location: LCCOMB_X63_Y36_N10
\i2c_master_map|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~3_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (\i2c_master_map|bit_cnt\(0) & (!\i2c_master_map|bit_cnt\(2) & !\i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~3_combout\);

-- Location: LCCOMB_X62_Y36_N12
\i2c_master_map|data_rx[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[6]~2_combout\ = (\i2c_master_map|Decoder0~3_combout\ & ((\sda~input_o\))) # (!\i2c_master_map|Decoder0~3_combout\ & (\i2c_master_map|data_rx\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|Decoder0~3_combout\,
	datac => \i2c_master_map|data_rx\(6),
	datad => \sda~input_o\,
	combout => \i2c_master_map|data_rx[6]~2_combout\);

-- Location: FF_X62_Y36_N13
\i2c_master_map|data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(6));

-- Location: LCCOMB_X62_Y36_N4
\i2c_master_map|data_rd[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[6]~feeder_combout\ = \i2c_master_map|data_rx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rx\(6),
	combout => \i2c_master_map|data_rd[6]~feeder_combout\);

-- Location: FF_X62_Y36_N5
\i2c_master_map|data_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rd[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(6));

-- Location: LCCOMB_X58_Y37_N12
\send_data_rd[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_data_rd[6]~feeder_combout\ = \i2c_master_map|data_rd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rd\(6),
	combout => \send_data_rd[6]~feeder_combout\);

-- Location: FF_X58_Y37_N13
\send_data_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \send_data_rd[6]~feeder_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(6));

-- Location: LCCOMB_X58_Y37_N16
\de2lcd_map|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector9~1_combout\ = (\de2lcd_map|state.WRITE_CHAR5~q\ & ((send_data_rd(6)) # ((\de2lcd_map|state.WRITE_CHAR11~q\ & send_data_rd(0))))) # (!\de2lcd_map|state.WRITE_CHAR5~q\ & (\de2lcd_map|state.WRITE_CHAR11~q\ & (send_data_rd(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR5~q\,
	datab => \de2lcd_map|state.WRITE_CHAR11~q\,
	datac => send_data_rd(0),
	datad => send_data_rd(6),
	combout => \de2lcd_map|Selector9~1_combout\);

-- Location: LCCOMB_X63_Y36_N24
\i2c_master_map|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~4_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (!\i2c_master_map|bit_cnt\(0) & (\i2c_master_map|bit_cnt\(2) & \i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~4_combout\);

-- Location: LCCOMB_X62_Y36_N14
\i2c_master_map|data_rx[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[1]~3_combout\ = (\i2c_master_map|Decoder0~4_combout\ & (\sda~input_o\)) # (!\i2c_master_map|Decoder0~4_combout\ & ((\i2c_master_map|data_rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda~input_o\,
	datac => \i2c_master_map|data_rx\(1),
	datad => \i2c_master_map|Decoder0~4_combout\,
	combout => \i2c_master_map|data_rx[1]~3_combout\);

-- Location: FF_X62_Y36_N15
\i2c_master_map|data_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(1));

-- Location: FF_X62_Y36_N31
\i2c_master_map|data_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|data_rx\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(1));

-- Location: LCCOMB_X59_Y37_N30
\send_data_rd[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_data_rd[1]~feeder_combout\ = \i2c_master_map|data_rd\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rd\(1),
	combout => \send_data_rd[1]~feeder_combout\);

-- Location: FF_X59_Y37_N31
\send_data_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \send_data_rd[1]~feeder_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(1));

-- Location: LCCOMB_X63_Y36_N16
\i2c_master_map|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~6_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (!\i2c_master_map|bit_cnt\(0) & (\i2c_master_map|bit_cnt\(2) & !\i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~6_combout\);

-- Location: LCCOMB_X62_Y36_N10
\i2c_master_map|data_rx[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[3]~5_combout\ = (\i2c_master_map|Decoder0~6_combout\ & (\sda~input_o\)) # (!\i2c_master_map|Decoder0~6_combout\ & ((\i2c_master_map|data_rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda~input_o\,
	datac => \i2c_master_map|data_rx\(3),
	datad => \i2c_master_map|Decoder0~6_combout\,
	combout => \i2c_master_map|data_rx[3]~5_combout\);

-- Location: FF_X62_Y36_N11
\i2c_master_map|data_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(3));

-- Location: LCCOMB_X62_Y36_N22
\i2c_master_map|data_rd[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[3]~feeder_combout\ = \i2c_master_map|data_rx\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rx\(3),
	combout => \i2c_master_map|data_rd[3]~feeder_combout\);

-- Location: FF_X62_Y36_N23
\i2c_master_map|data_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rd[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(3));

-- Location: FF_X59_Y37_N23
\send_data_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|data_rd\(3),
	sload => VCC,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(3));

-- Location: LCCOMB_X63_Y36_N18
\i2c_master_map|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~5_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (\i2c_master_map|bit_cnt\(0) & (\i2c_master_map|bit_cnt\(2) & !\i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~5_combout\);

-- Location: LCCOMB_X62_Y36_N20
\i2c_master_map|data_rx[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[2]~4_combout\ = (\i2c_master_map|Decoder0~5_combout\ & (\sda~input_o\)) # (!\i2c_master_map|Decoder0~5_combout\ & ((\i2c_master_map|data_rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda~input_o\,
	datac => \i2c_master_map|data_rx\(2),
	datad => \i2c_master_map|Decoder0~5_combout\,
	combout => \i2c_master_map|data_rx[2]~4_combout\);

-- Location: FF_X62_Y36_N21
\i2c_master_map|data_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(2));

-- Location: LCCOMB_X62_Y36_N28
\i2c_master_map|data_rd[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[2]~feeder_combout\ = \i2c_master_map|data_rx\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rx\(2),
	combout => \i2c_master_map|data_rd[2]~feeder_combout\);

-- Location: FF_X62_Y36_N29
\i2c_master_map|data_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rd[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(2));

-- Location: LCCOMB_X59_Y37_N16
\send_data_rd[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_data_rd[2]~feeder_combout\ = \i2c_master_map|data_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rd\(2),
	combout => \send_data_rd[2]~feeder_combout\);

-- Location: FF_X59_Y37_N17
\send_data_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \send_data_rd[2]~feeder_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(2));

-- Location: LCCOMB_X59_Y37_N22
\de2lcd_map|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector9~2_combout\ = (\de2lcd_map|state.WRITE_CHAR9~q\ & ((send_data_rd(2)) # ((\de2lcd_map|state.WRITE_CHAR8~q\ & send_data_rd(3))))) # (!\de2lcd_map|state.WRITE_CHAR9~q\ & (\de2lcd_map|state.WRITE_CHAR8~q\ & (send_data_rd(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR9~q\,
	datab => \de2lcd_map|state.WRITE_CHAR8~q\,
	datac => send_data_rd(3),
	datad => send_data_rd(2),
	combout => \de2lcd_map|Selector9~2_combout\);

-- Location: LCCOMB_X63_Y36_N22
\i2c_master_map|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~7_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (\i2c_master_map|bit_cnt\(0) & (!\i2c_master_map|bit_cnt\(2) & \i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~7_combout\);

-- Location: LCCOMB_X62_Y36_N0
\i2c_master_map|data_rx[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[4]~6_combout\ = (\i2c_master_map|Decoder0~7_combout\ & (\sda~input_o\)) # (!\i2c_master_map|Decoder0~7_combout\ & ((\i2c_master_map|data_rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda~input_o\,
	datac => \i2c_master_map|data_rx\(4),
	datad => \i2c_master_map|Decoder0~7_combout\,
	combout => \i2c_master_map|data_rx[4]~6_combout\);

-- Location: FF_X62_Y36_N1
\i2c_master_map|data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(4));

-- Location: LCCOMB_X62_Y36_N8
\i2c_master_map|data_rd[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[4]~feeder_combout\ = \i2c_master_map|data_rx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rx\(4),
	combout => \i2c_master_map|data_rd[4]~feeder_combout\);

-- Location: FF_X62_Y36_N9
\i2c_master_map|data_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rd[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(4));

-- Location: LCCOMB_X59_Y37_N12
\send_data_rd[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_data_rd[4]~feeder_combout\ = \i2c_master_map|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|data_rd\(4),
	combout => \send_data_rd[4]~feeder_combout\);

-- Location: FF_X59_Y37_N13
\send_data_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \send_data_rd[4]~feeder_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(4));

-- Location: LCCOMB_X63_Y36_N4
\i2c_master_map|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Decoder0~8_combout\ = (\i2c_master_map|Decoder0~0_combout\ & (!\i2c_master_map|bit_cnt\(0) & (!\i2c_master_map|bit_cnt\(2) & \i2c_master_map|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Decoder0~0_combout\,
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|bit_cnt\(1),
	combout => \i2c_master_map|Decoder0~8_combout\);

-- Location: LCCOMB_X62_Y36_N6
\i2c_master_map|data_rx[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rx[5]~7_combout\ = (\i2c_master_map|Decoder0~8_combout\ & (\sda~input_o\)) # (!\i2c_master_map|Decoder0~8_combout\ & ((\i2c_master_map|data_rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda~input_o\,
	datac => \i2c_master_map|data_rx\(5),
	datad => \i2c_master_map|Decoder0~8_combout\,
	combout => \i2c_master_map|data_rx[5]~7_combout\);

-- Location: FF_X62_Y36_N7
\i2c_master_map|data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rx[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rx\(5));

-- Location: LCCOMB_X62_Y36_N26
\i2c_master_map|data_rd[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|data_rd[5]~feeder_combout\ = \i2c_master_map|data_rx\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_map|data_rx\(5),
	combout => \i2c_master_map|data_rd[5]~feeder_combout\);

-- Location: FF_X62_Y36_N27
\i2c_master_map|data_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|data_rd[5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|data_rd[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|data_rd\(5));

-- Location: FF_X59_Y37_N7
\send_data_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \i2c_master_map|data_rd\(5),
	sload => VCC,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_data_rd(5));

-- Location: LCCOMB_X59_Y37_N6
\de2lcd_map|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector9~3_combout\ = (send_data_rd(4) & ((\de2lcd_map|state.WRITE_CHAR7~q\) # ((send_data_rd(5) & \de2lcd_map|state.WRITE_CHAR6~q\)))) # (!send_data_rd(4) & (((send_data_rd(5) & \de2lcd_map|state.WRITE_CHAR6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => send_data_rd(4),
	datab => \de2lcd_map|state.WRITE_CHAR7~q\,
	datac => send_data_rd(5),
	datad => \de2lcd_map|state.WRITE_CHAR6~q\,
	combout => \de2lcd_map|Selector9~3_combout\);

-- Location: LCCOMB_X59_Y37_N20
\de2lcd_map|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector9~4_combout\ = (\de2lcd_map|Selector9~2_combout\) # ((\de2lcd_map|Selector9~3_combout\) # ((send_data_rd(1) & \de2lcd_map|state.WRITE_CHAR10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => send_data_rd(1),
	datab => \de2lcd_map|state.WRITE_CHAR10~q\,
	datac => \de2lcd_map|Selector9~2_combout\,
	datad => \de2lcd_map|Selector9~3_combout\,
	combout => \de2lcd_map|Selector9~4_combout\);

-- Location: LCCOMB_X59_Y37_N14
\de2lcd_map|Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector9~5_combout\ = (\de2lcd_map|state.DISPLAY_CLEAR~q\) # ((\de2lcd_map|Selector9~0_combout\) # ((\de2lcd_map|Selector9~1_combout\) # (\de2lcd_map|Selector9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datab => \de2lcd_map|Selector9~0_combout\,
	datac => \de2lcd_map|Selector9~1_combout\,
	datad => \de2lcd_map|Selector9~4_combout\,
	combout => \de2lcd_map|Selector9~5_combout\);

-- Location: FF_X59_Y37_N15
\de2lcd_map|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2lcd_map|CLK_400HZ~clkctrl_outclk\,
	d => \de2lcd_map|Selector9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2lcd_map|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X59_Y38_N16
\de2lcd_map|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector8~0_combout\ = (\de2lcd_map|state.MODE_SET~q\) # ((\de2lcd_map|state.WRITE_CHAR2~q\) # ((!\de2lcd_map|LCD_RS~0_combout\ & \de2lcd_map|DATA_BUS_VALUE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|LCD_RS~0_combout\,
	datab => \de2lcd_map|state.MODE_SET~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(1),
	datad => \de2lcd_map|state.WRITE_CHAR2~q\,
	combout => \de2lcd_map|Selector8~0_combout\);

-- Location: FF_X59_Y38_N17
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

-- Location: LCCOMB_X59_Y38_N14
\de2lcd_map|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector7~0_combout\ = (\de2lcd_map|state.MODE_SET~q\) # ((\de2lcd_map|state.DISPLAY_ON~q\) # ((!\de2lcd_map|LCD_RS~0_combout\ & \de2lcd_map|DATA_BUS_VALUE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|LCD_RS~0_combout\,
	datab => \de2lcd_map|state.MODE_SET~q\,
	datac => \de2lcd_map|DATA_BUS_VALUE\(2),
	datad => \de2lcd_map|state.DISPLAY_ON~q\,
	combout => \de2lcd_map|Selector7~0_combout\);

-- Location: FF_X59_Y38_N15
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

-- Location: LCCOMB_X60_Y38_N24
\de2lcd_map|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|WideOr2~2_combout\ = (!\de2lcd_map|state.FUNC_SET~q\ & (\de2lcd_map|state.RESET1~q\ & (!\de2lcd_map|state.RESET3~q\ & !\de2lcd_map|state.RESET2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.FUNC_SET~q\,
	datab => \de2lcd_map|state.RESET1~q\,
	datac => \de2lcd_map|state.RESET3~q\,
	datad => \de2lcd_map|state.RESET2~q\,
	combout => \de2lcd_map|WideOr2~2_combout\);

-- Location: LCCOMB_X60_Y38_N8
\de2lcd_map|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector6~0_combout\ = (\de2lcd_map|state.DISPLAY_ON~q\) # ((\de2lcd_map|DATA_BUS_VALUE\(3) & ((\de2lcd_map|state.HOLD~q\) # (\de2lcd_map|state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.HOLD~q\,
	datab => \de2lcd_map|DATA_BUS_VALUE\(3),
	datac => \de2lcd_map|state.DISPLAY_ON~q\,
	datad => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|Selector6~0_combout\);

-- Location: LCCOMB_X60_Y38_N20
\de2lcd_map|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector6~1_combout\ = (\de2lcd_map|state.WRITE_CHAR2~q\) # ((\de2lcd_map|state.WRITE_CHAR1~q\) # (\de2lcd_map|state.DISPLAY_OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR2~q\,
	datac => \de2lcd_map|state.WRITE_CHAR1~q\,
	datad => \de2lcd_map|state.DISPLAY_OFF~q\,
	combout => \de2lcd_map|Selector6~1_combout\);

-- Location: LCCOMB_X60_Y38_N30
\de2lcd_map|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector6~2_combout\ = ((\de2lcd_map|Selector6~0_combout\) # (\de2lcd_map|Selector6~1_combout\)) # (!\de2lcd_map|WideOr2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2lcd_map|WideOr2~2_combout\,
	datac => \de2lcd_map|Selector6~0_combout\,
	datad => \de2lcd_map|Selector6~1_combout\,
	combout => \de2lcd_map|Selector6~2_combout\);

-- Location: FF_X60_Y38_N31
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

-- Location: LCCOMB_X59_Y38_N10
\de2lcd_map|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|WideOr2~0_combout\ = (!\de2lcd_map|state.TOGGLE_E~q\ & (!\de2lcd_map|state.MODE_SET~q\ & (!\de2lcd_map|state.HOLD~q\ & !\de2lcd_map|state.DISPLAY_ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.TOGGLE_E~q\,
	datab => \de2lcd_map|state.MODE_SET~q\,
	datac => \de2lcd_map|state.HOLD~q\,
	datad => \de2lcd_map|state.DISPLAY_ON~q\,
	combout => \de2lcd_map|WideOr2~0_combout\);

-- Location: LCCOMB_X58_Y38_N26
\de2lcd_map|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector5~0_combout\ = (!\de2lcd_map|state.WRITE_CHAR13~q\ & (!\de2lcd_map|state.WRITE_CHAR3~q\ & (!\de2lcd_map|state.WRITE_CHAR15~q\ & !\de2lcd_map|state.WRITE_CHAR14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.WRITE_CHAR13~q\,
	datab => \de2lcd_map|state.WRITE_CHAR3~q\,
	datac => \de2lcd_map|state.WRITE_CHAR15~q\,
	datad => \de2lcd_map|state.WRITE_CHAR14~q\,
	combout => \de2lcd_map|Selector5~0_combout\);

-- Location: LCCOMB_X58_Y38_N6
\de2lcd_map|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector5~1_combout\ = (!\de2lcd_map|state.DISPLAY_OFF~q\ & (!\de2lcd_map|state.WRITE_CHAR12~q\ & (!\de2lcd_map|state.DISPLAY_CLEAR~q\ & !\de2lcd_map|state.WRITE_CHAR16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_OFF~q\,
	datab => \de2lcd_map|state.WRITE_CHAR12~q\,
	datac => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datad => \de2lcd_map|state.WRITE_CHAR16~q\,
	combout => \de2lcd_map|Selector5~1_combout\);

-- Location: LCCOMB_X58_Y38_N16
\de2lcd_map|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector5~2_combout\ = (!\de2lcd_map|state.RETURN_HOME~q\ & (\de2lcd_map|Selector5~0_combout\ & \de2lcd_map|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.RETURN_HOME~q\,
	datac => \de2lcd_map|Selector5~0_combout\,
	datad => \de2lcd_map|Selector5~1_combout\,
	combout => \de2lcd_map|Selector5~2_combout\);

-- Location: LCCOMB_X58_Y38_N2
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

-- Location: FF_X58_Y38_N3
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

-- Location: LCCOMB_X59_Y38_N22
\de2lcd_map|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector4~0_combout\ = (!\de2lcd_map|state.DISPLAY_CLEAR~q\ & (!\de2lcd_map|state.RETURN_HOME~q\ & !\de2lcd_map|state.DISPLAY_OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datab => \de2lcd_map|state.RETURN_HOME~q\,
	datad => \de2lcd_map|state.DISPLAY_OFF~q\,
	combout => \de2lcd_map|Selector4~0_combout\);

-- Location: LCCOMB_X59_Y38_N0
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

-- Location: FF_X59_Y38_N1
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

-- Location: LCCOMB_X58_Y37_N0
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

-- Location: FF_X58_Y37_N1
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

-- Location: LCCOMB_X65_Y36_N12
\i2c_master_map|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector23~2_combout\ = ((\i2c_master_map|bit_cnt\(2) & (\i2c_master_map|bit_cnt\(1))) # (!\i2c_master_map|bit_cnt\(2) & ((!\i2c_master_map|bit_cnt\(0))))) # (!\i2c_master_map|state.command~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|bit_cnt\(1),
	datab => \i2c_master_map|bit_cnt\(2),
	datac => \i2c_master_map|bit_cnt\(0),
	datad => \i2c_master_map|state.command~q\,
	combout => \i2c_master_map|Selector23~2_combout\);

-- Location: LCCOMB_X65_Y36_N24
\i2c_master_map|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector23~0_combout\ = ((!\i2c_master_map|sda_int~q\ & !\i2c_master_map|Equal1~0_combout\)) # (!\i2c_master_map|state.rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.rd~q\,
	datac => \i2c_master_map|sda_int~q\,
	datad => \i2c_master_map|Equal1~0_combout\,
	combout => \i2c_master_map|Selector23~0_combout\);

-- Location: LCCOMB_X66_Y36_N30
\i2c_master_map|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector23~4_combout\ = (\i2c_master_map|bit_cnt\(1) $ (\i2c_master_map|bit_cnt\(2))) # (!\i2c_master_map|state.slv_ack2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|bit_cnt\(1),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|state.slv_ack2~q\,
	combout => \i2c_master_map|Selector23~4_combout\);

-- Location: LCCOMB_X66_Y36_N4
\i2c_master_map|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector23~3_combout\ = ((\i2c_master_map|bit_cnt\(1) & (\i2c_master_map|bit_cnt\(0))) # (!\i2c_master_map|bit_cnt\(1) & ((!\i2c_master_map|bit_cnt\(2))))) # (!\i2c_master_map|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|bit_cnt\(1),
	datab => \i2c_master_map|bit_cnt\(0),
	datac => \i2c_master_map|bit_cnt\(2),
	datad => \i2c_master_map|state.start~q\,
	combout => \i2c_master_map|Selector23~3_combout\);

-- Location: LCCOMB_X65_Y36_N26
\i2c_master_map|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector23~5_combout\ = (\i2c_master_map|Selector23~4_combout\ & (\i2c_master_map|Selector23~3_combout\ & ((\i2c_master_map|state.ready~q\) # (!\i2c_master_map|sda_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Selector23~4_combout\,
	datab => \i2c_master_map|state.ready~q\,
	datac => \i2c_master_map|sda_int~q\,
	datad => \i2c_master_map|Selector23~3_combout\,
	combout => \i2c_master_map|Selector23~5_combout\);

-- Location: LCCOMB_X65_Y36_N10
\i2c_master_map|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector23~1_combout\ = ((\i2c_master_map|bit_cnt\(1) & ((\i2c_master_map|bit_cnt\(0)) # (!\i2c_master_map|bit_cnt\(2)))) # (!\i2c_master_map|bit_cnt\(1) & (\i2c_master_map|bit_cnt\(0) $ (\i2c_master_map|bit_cnt\(2))))) # 
-- (!\i2c_master_map|state.wr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.wr~q\,
	datab => \i2c_master_map|bit_cnt\(1),
	datac => \i2c_master_map|bit_cnt\(0),
	datad => \i2c_master_map|bit_cnt\(2),
	combout => \i2c_master_map|Selector23~1_combout\);

-- Location: LCCOMB_X65_Y36_N14
\i2c_master_map|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector23~6_combout\ = (((!\i2c_master_map|Selector23~1_combout\) # (!\i2c_master_map|Selector23~5_combout\)) # (!\i2c_master_map|Selector23~0_combout\)) # (!\i2c_master_map|Selector23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|Selector23~2_combout\,
	datab => \i2c_master_map|Selector23~0_combout\,
	datac => \i2c_master_map|Selector23~5_combout\,
	datad => \i2c_master_map|Selector23~1_combout\,
	combout => \i2c_master_map|Selector23~6_combout\);

-- Location: FF_X65_Y36_N15
\i2c_master_map|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Selector23~6_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|sda_int~q\);

-- Location: LCCOMB_X65_Y36_N0
\i2c_master_map|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector29~0_combout\ = (\i2c_master_map|state.start~q\ & ((\i2c_master_map|data_clk_prev~q\))) # (!\i2c_master_map|state.start~q\ & (!\i2c_master_map|sda_int~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|state.start~q\,
	datac => \i2c_master_map|sda_int~q\,
	datad => \i2c_master_map|data_clk_prev~q\,
	combout => \i2c_master_map|Selector29~0_combout\);

-- Location: LCCOMB_X65_Y36_N20
\i2c_master_map|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector28~0_combout\ = (!\i2c_master_map|state.rd~q\ & (\i2c_master_map|state.ready~q\ & (!\i2c_master_map|state.mstr_ack~q\ & !\i2c_master_map|state.slv_ack1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.rd~q\,
	datab => \i2c_master_map|state.ready~q\,
	datac => \i2c_master_map|state.mstr_ack~q\,
	datad => \i2c_master_map|state.slv_ack1~q\,
	combout => \i2c_master_map|Selector28~0_combout\);

-- Location: LCCOMB_X65_Y36_N4
\i2c_master_map|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector28~1_combout\ = (!\i2c_master_map|state.slv_ack2~q\ & (\i2c_master_map|Selector28~0_combout\ & (!\i2c_master_map|state.wr~q\ & !\i2c_master_map|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.slv_ack2~q\,
	datab => \i2c_master_map|Selector28~0_combout\,
	datac => \i2c_master_map|state.wr~q\,
	datad => \i2c_master_map|state.command~q\,
	combout => \i2c_master_map|Selector28~1_combout\);

-- Location: LCCOMB_X66_Y36_N10
\i2c_master_map|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector27~0_combout\ = (\i2c_master_map|state.start~q\) # ((!\i2c_master_map|Selector28~1_combout\ & \i2c_master_map|scl_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|Selector28~1_combout\,
	datac => \i2c_master_map|scl_ena~q\,
	datad => \i2c_master_map|state.start~q\,
	combout => \i2c_master_map|Selector27~0_combout\);

-- Location: LCCOMB_X66_Y36_N16
\i2c_master_map|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|process_1~0_combout\ = (\i2c_master_map|data_clk_prev~q\ & !\i2c_master_map|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|data_clk_prev~q\,
	datad => \i2c_master_map|data_clk~q\,
	combout => \i2c_master_map|process_1~0_combout\);

-- Location: FF_X66_Y36_N11
\i2c_master_map|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Selector27~0_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|scl_ena~q\);

-- Location: LCCOMB_X67_Y35_N4
\i2c_master_map|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|scl_clk~0_combout\ = (\i2c_master_map|LessThan1~3_combout\ & \i2c_master_map|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_map|LessThan1~3_combout\,
	datad => \i2c_master_map|process_0~5_combout\,
	combout => \i2c_master_map|scl_clk~0_combout\);

-- Location: FF_X67_Y35_N5
\i2c_master_map|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|scl_clk~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|scl_clk~q\);

-- Location: LCCOMB_X67_Y35_N30
\i2c_master_map|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|scl~1_combout\ = (\i2c_master_map|scl_clk~q\) # (!\i2c_master_map|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_map|scl_ena~q\,
	datad => \i2c_master_map|scl_clk~q\,
	combout => \i2c_master_map|scl~1_combout\);

-- Location: LCCOMB_X59_Y38_N18
\de2lcd_map|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|WideOr2~1_combout\ = (!\de2lcd_map|state.DISPLAY_CLEAR~q\ & (!\de2lcd_map|state.RETURN_HOME~q\ & (\de2lcd_map|WideOr2~0_combout\ & !\de2lcd_map|state.DISPLAY_OFF~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|state.DISPLAY_CLEAR~q\,
	datab => \de2lcd_map|state.RETURN_HOME~q\,
	datac => \de2lcd_map|WideOr2~0_combout\,
	datad => \de2lcd_map|state.DISPLAY_OFF~q\,
	combout => \de2lcd_map|WideOr2~1_combout\);

-- Location: LCCOMB_X59_Y38_N8
\de2lcd_map|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|Selector1~0_combout\ = (\de2lcd_map|LCD_RS~0_combout\ & (\de2lcd_map|WideOr2~2_combout\ & ((\de2lcd_map|WideOr2~1_combout\)))) # (!\de2lcd_map|LCD_RS~0_combout\ & ((\de2lcd_map|LCD_RS~q\) # ((\de2lcd_map|WideOr2~2_combout\ & 
-- \de2lcd_map|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2lcd_map|LCD_RS~0_combout\,
	datab => \de2lcd_map|WideOr2~2_combout\,
	datac => \de2lcd_map|LCD_RS~q\,
	datad => \de2lcd_map|WideOr2~1_combout\,
	combout => \de2lcd_map|Selector1~0_combout\);

-- Location: FF_X59_Y38_N9
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

-- Location: LCCOMB_X59_Y38_N2
\de2lcd_map|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de2lcd_map|LCD_E~0_combout\ = !\de2lcd_map|state.TOGGLE_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de2lcd_map|state.TOGGLE_E~q\,
	combout => \de2lcd_map|LCD_E~0_combout\);

-- Location: FF_X59_Y38_N3
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

-- Location: LCCOMB_X66_Y36_N28
\i2c_master_map|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector28~2_combout\ = (\i2c_master_map|ack_error~q\ & (((\i2c_master_map|scl_ena~q\ & \i2c_master_map|state.start~q\)) # (!\i2c_master_map|Selector28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|scl_ena~q\,
	datab => \i2c_master_map|ack_error~q\,
	datac => \i2c_master_map|Selector28~1_combout\,
	datad => \i2c_master_map|state.start~q\,
	combout => \i2c_master_map|Selector28~2_combout\);

-- Location: LCCOMB_X66_Y36_N12
\i2c_master_map|Selector28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_map|Selector28~3_combout\ = (\i2c_master_map|Selector28~2_combout\) # ((\sda~input_o\ & ((\i2c_master_map|state.slv_ack1~q\) # (\i2c_master_map|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_map|state.slv_ack1~q\,
	datab => \i2c_master_map|state.slv_ack2~q\,
	datac => \sda~input_o\,
	datad => \i2c_master_map|Selector28~2_combout\,
	combout => \i2c_master_map|Selector28~3_combout\);

-- Location: FF_X66_Y36_N13
\i2c_master_map|ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \i2c_master_map|Selector28~3_combout\,
	clrn => \reset~input_o\,
	ena => \i2c_master_map|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_map|ack_error~q\);

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

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_E <= \LCD_E~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_RESET_LED <= \RESET_LED~output_o\;

ww_SEC_LED <= \SEC_LED~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_ack_error <= \ack_error~output_o\;

DATA_BUS(0) <= \DATA_BUS[0]~output_o\;

DATA_BUS(1) <= \DATA_BUS[1]~output_o\;

DATA_BUS(2) <= \DATA_BUS[2]~output_o\;

DATA_BUS(3) <= \DATA_BUS[3]~output_o\;

DATA_BUS(4) <= \DATA_BUS[4]~output_o\;

DATA_BUS(5) <= \DATA_BUS[5]~output_o\;

DATA_BUS(6) <= \DATA_BUS[6]~output_o\;

DATA_BUS(7) <= \DATA_BUS[7]~output_o\;

sda <= \sda~output_o\;

scl <= \scl~output_o\;
END structure;


