-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/14/2024 15:17:04"

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

ENTITY 	lcd_controller IS
    PORT (
	Clk50Mhz : IN std_logic;
	reset : IN std_logic;
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	LCD_RW : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_RS : BUFFER std_logic;
	LCD_ON : BUFFER std_logic;
	LCD_BLON : BUFFER std_logic
	);
END lcd_controller;

-- Design Ports Information
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Clk50Mhz	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF lcd_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk50Mhz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL \Clk50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \Clk50Mhz~input_o\ : std_logic;
SIGNAL \Clk50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clockticks[0]~16_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \clockticks[0]~17\ : std_logic;
SIGNAL \clockticks[1]~18_combout\ : std_logic;
SIGNAL \clockticks[1]~19\ : std_logic;
SIGNAL \clockticks[2]~20_combout\ : std_logic;
SIGNAL \clockticks[2]~21\ : std_logic;
SIGNAL \clockticks[3]~22_combout\ : std_logic;
SIGNAL \clockticks[3]~23\ : std_logic;
SIGNAL \clockticks[4]~24_combout\ : std_logic;
SIGNAL \clockticks[4]~25\ : std_logic;
SIGNAL \clockticks[5]~26_combout\ : std_logic;
SIGNAL \clockticks[5]~27\ : std_logic;
SIGNAL \clockticks[6]~28_combout\ : std_logic;
SIGNAL \clockticks[6]~29\ : std_logic;
SIGNAL \clockticks[7]~30_combout\ : std_logic;
SIGNAL \clockticks[7]~31\ : std_logic;
SIGNAL \clockticks[8]~32_combout\ : std_logic;
SIGNAL \clockticks[8]~33\ : std_logic;
SIGNAL \clockticks[9]~34_combout\ : std_logic;
SIGNAL \clockticks[9]~35\ : std_logic;
SIGNAL \clockticks[10]~36_combout\ : std_logic;
SIGNAL \clockticks[10]~37\ : std_logic;
SIGNAL \clockticks[11]~38_combout\ : std_logic;
SIGNAL \clockticks[11]~39\ : std_logic;
SIGNAL \clockticks[12]~40_combout\ : std_logic;
SIGNAL \clockticks[12]~41\ : std_logic;
SIGNAL \clockticks[13]~42_combout\ : std_logic;
SIGNAL \clockticks[13]~43\ : std_logic;
SIGNAL \clockticks[14]~44_combout\ : std_logic;
SIGNAL \clockticks[14]~45\ : std_logic;
SIGNAL \clockticks[15]~46_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \clock~q\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state.s23~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \state.s22~q\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \state.s24~0_combout\ : std_logic;
SIGNAL \state.s24~q\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state.s2~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.s10~q\ : std_logic;
SIGNAL \state.s11~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \state.s12~q\ : std_logic;
SIGNAL \state.s13~q\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.s20~q\ : std_logic;
SIGNAL \state.s21~q\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \line2~0_combout\ : std_logic;
SIGNAL \line1~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \LCD_DATA[0]~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \LCD_DATA[1]~2_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \LCD_DATA[1]~3_combout\ : std_logic;
SIGNAL \LCD_DATA[1]~reg0_q\ : std_logic;
SIGNAL \LCD_DATA[2]~reg0_q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \LCD_DATA[3]~reg0_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \LCD_DATA[4]~reg0_q\ : std_logic;
SIGNAL \LCD_DATA[5]~reg0_q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \LCD_DATA[7]~reg0_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \LCD_EN~reg0_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \LCD_RS~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL clockticks : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_Clk50Mhz <= Clk50Mhz;
ww_reset <= reset;
LCD_DATA <= ww_LCD_DATA;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk50Mhz~input_o\);

\clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~q\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_DATA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_DATA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_DATA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_DATA[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_DATA[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_DATA[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_DATA[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

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

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_EN~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_RS~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

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

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\Clk50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk50Mhz,
	o => \Clk50Mhz~input_o\);

-- Location: CLKCTRL_G4
\Clk50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N0
\clockticks[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[0]~16_combout\ = clockticks(0) $ (VCC)
-- \clockticks[0]~17\ = CARRY(clockticks(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockticks(0),
	datad => VCC,
	combout => \clockticks[0]~16_combout\,
	cout => \clockticks[0]~17\);

-- Location: LCCOMB_X56_Y72_N26
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!clockticks(7) & (((!clockticks(5) & !clockticks(4))) # (!clockticks(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(7),
	datab => clockticks(5),
	datac => clockticks(4),
	datad => clockticks(6),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X56_Y72_N12
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!clockticks(13) & (!clockticks(11) & (!clockticks(10) & !clockticks(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(13),
	datab => clockticks(11),
	datac => clockticks(10),
	datad => clockticks(12),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X56_Y72_N10
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~0_combout\ & (((\LessThan2~1_combout\) # (!clockticks(9))) # (!clockticks(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(8),
	datab => clockticks(9),
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X56_Y72_N6
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (clockticks(14) & (clockticks(15) & !\LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockticks(14),
	datac => clockticks(15),
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: FF_X55_Y72_N1
\clockticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[0]~16_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(0));

-- Location: LCCOMB_X55_Y72_N2
\clockticks[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[1]~18_combout\ = (clockticks(1) & (!\clockticks[0]~17\)) # (!clockticks(1) & ((\clockticks[0]~17\) # (GND)))
-- \clockticks[1]~19\ = CARRY((!\clockticks[0]~17\) # (!clockticks(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(1),
	datad => VCC,
	cin => \clockticks[0]~17\,
	combout => \clockticks[1]~18_combout\,
	cout => \clockticks[1]~19\);

-- Location: FF_X55_Y72_N3
\clockticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[1]~18_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(1));

-- Location: LCCOMB_X55_Y72_N4
\clockticks[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[2]~20_combout\ = (clockticks(2) & (\clockticks[1]~19\ $ (GND))) # (!clockticks(2) & (!\clockticks[1]~19\ & VCC))
-- \clockticks[2]~21\ = CARRY((clockticks(2) & !\clockticks[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(2),
	datad => VCC,
	cin => \clockticks[1]~19\,
	combout => \clockticks[2]~20_combout\,
	cout => \clockticks[2]~21\);

-- Location: FF_X55_Y72_N5
\clockticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[2]~20_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(2));

-- Location: LCCOMB_X55_Y72_N6
\clockticks[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[3]~22_combout\ = (clockticks(3) & (!\clockticks[2]~21\)) # (!clockticks(3) & ((\clockticks[2]~21\) # (GND)))
-- \clockticks[3]~23\ = CARRY((!\clockticks[2]~21\) # (!clockticks(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(3),
	datad => VCC,
	cin => \clockticks[2]~21\,
	combout => \clockticks[3]~22_combout\,
	cout => \clockticks[3]~23\);

-- Location: FF_X55_Y72_N7
\clockticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[3]~22_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(3));

-- Location: LCCOMB_X55_Y72_N8
\clockticks[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[4]~24_combout\ = (clockticks(4) & (\clockticks[3]~23\ $ (GND))) # (!clockticks(4) & (!\clockticks[3]~23\ & VCC))
-- \clockticks[4]~25\ = CARRY((clockticks(4) & !\clockticks[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(4),
	datad => VCC,
	cin => \clockticks[3]~23\,
	combout => \clockticks[4]~24_combout\,
	cout => \clockticks[4]~25\);

-- Location: FF_X55_Y72_N9
\clockticks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[4]~24_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(4));

-- Location: LCCOMB_X55_Y72_N10
\clockticks[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[5]~26_combout\ = (clockticks(5) & (!\clockticks[4]~25\)) # (!clockticks(5) & ((\clockticks[4]~25\) # (GND)))
-- \clockticks[5]~27\ = CARRY((!\clockticks[4]~25\) # (!clockticks(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(5),
	datad => VCC,
	cin => \clockticks[4]~25\,
	combout => \clockticks[5]~26_combout\,
	cout => \clockticks[5]~27\);

-- Location: FF_X55_Y72_N11
\clockticks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[5]~26_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(5));

-- Location: LCCOMB_X55_Y72_N12
\clockticks[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[6]~28_combout\ = (clockticks(6) & (\clockticks[5]~27\ $ (GND))) # (!clockticks(6) & (!\clockticks[5]~27\ & VCC))
-- \clockticks[6]~29\ = CARRY((clockticks(6) & !\clockticks[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(6),
	datad => VCC,
	cin => \clockticks[5]~27\,
	combout => \clockticks[6]~28_combout\,
	cout => \clockticks[6]~29\);

-- Location: FF_X55_Y72_N13
\clockticks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[6]~28_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(6));

-- Location: LCCOMB_X55_Y72_N14
\clockticks[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[7]~30_combout\ = (clockticks(7) & (!\clockticks[6]~29\)) # (!clockticks(7) & ((\clockticks[6]~29\) # (GND)))
-- \clockticks[7]~31\ = CARRY((!\clockticks[6]~29\) # (!clockticks(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(7),
	datad => VCC,
	cin => \clockticks[6]~29\,
	combout => \clockticks[7]~30_combout\,
	cout => \clockticks[7]~31\);

-- Location: FF_X55_Y72_N15
\clockticks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[7]~30_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(7));

-- Location: LCCOMB_X55_Y72_N16
\clockticks[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[8]~32_combout\ = (clockticks(8) & (\clockticks[7]~31\ $ (GND))) # (!clockticks(8) & (!\clockticks[7]~31\ & VCC))
-- \clockticks[8]~33\ = CARRY((clockticks(8) & !\clockticks[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(8),
	datad => VCC,
	cin => \clockticks[7]~31\,
	combout => \clockticks[8]~32_combout\,
	cout => \clockticks[8]~33\);

-- Location: FF_X55_Y72_N17
\clockticks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[8]~32_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(8));

-- Location: LCCOMB_X55_Y72_N18
\clockticks[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[9]~34_combout\ = (clockticks(9) & (!\clockticks[8]~33\)) # (!clockticks(9) & ((\clockticks[8]~33\) # (GND)))
-- \clockticks[9]~35\ = CARRY((!\clockticks[8]~33\) # (!clockticks(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(9),
	datad => VCC,
	cin => \clockticks[8]~33\,
	combout => \clockticks[9]~34_combout\,
	cout => \clockticks[9]~35\);

-- Location: FF_X55_Y72_N19
\clockticks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[9]~34_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(9));

-- Location: LCCOMB_X55_Y72_N20
\clockticks[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[10]~36_combout\ = (clockticks(10) & (\clockticks[9]~35\ $ (GND))) # (!clockticks(10) & (!\clockticks[9]~35\ & VCC))
-- \clockticks[10]~37\ = CARRY((clockticks(10) & !\clockticks[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(10),
	datad => VCC,
	cin => \clockticks[9]~35\,
	combout => \clockticks[10]~36_combout\,
	cout => \clockticks[10]~37\);

-- Location: FF_X55_Y72_N21
\clockticks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[10]~36_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(10));

-- Location: LCCOMB_X55_Y72_N22
\clockticks[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[11]~38_combout\ = (clockticks(11) & (!\clockticks[10]~37\)) # (!clockticks(11) & ((\clockticks[10]~37\) # (GND)))
-- \clockticks[11]~39\ = CARRY((!\clockticks[10]~37\) # (!clockticks(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(11),
	datad => VCC,
	cin => \clockticks[10]~37\,
	combout => \clockticks[11]~38_combout\,
	cout => \clockticks[11]~39\);

-- Location: FF_X55_Y72_N23
\clockticks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[11]~38_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(11));

-- Location: LCCOMB_X55_Y72_N24
\clockticks[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[12]~40_combout\ = (clockticks(12) & (\clockticks[11]~39\ $ (GND))) # (!clockticks(12) & (!\clockticks[11]~39\ & VCC))
-- \clockticks[12]~41\ = CARRY((clockticks(12) & !\clockticks[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(12),
	datad => VCC,
	cin => \clockticks[11]~39\,
	combout => \clockticks[12]~40_combout\,
	cout => \clockticks[12]~41\);

-- Location: FF_X55_Y72_N25
\clockticks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[12]~40_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(12));

-- Location: LCCOMB_X55_Y72_N26
\clockticks[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[13]~42_combout\ = (clockticks(13) & (!\clockticks[12]~41\)) # (!clockticks(13) & ((\clockticks[12]~41\) # (GND)))
-- \clockticks[13]~43\ = CARRY((!\clockticks[12]~41\) # (!clockticks(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(13),
	datad => VCC,
	cin => \clockticks[12]~41\,
	combout => \clockticks[13]~42_combout\,
	cout => \clockticks[13]~43\);

-- Location: FF_X55_Y72_N27
\clockticks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[13]~42_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(13));

-- Location: LCCOMB_X55_Y72_N28
\clockticks[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[14]~44_combout\ = (clockticks(14) & (\clockticks[13]~43\ $ (GND))) # (!clockticks(14) & (!\clockticks[13]~43\ & VCC))
-- \clockticks[14]~45\ = CARRY((clockticks(14) & !\clockticks[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(14),
	datad => VCC,
	cin => \clockticks[13]~43\,
	combout => \clockticks[14]~44_combout\,
	cout => \clockticks[14]~45\);

-- Location: FF_X55_Y72_N29
\clockticks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[14]~44_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(14));

-- Location: LCCOMB_X55_Y72_N30
\clockticks[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[15]~46_combout\ = clockticks(15) $ (\clockticks[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(15),
	cin => \clockticks[14]~45\,
	combout => \clockticks[15]~46_combout\);

-- Location: FF_X55_Y72_N31
\clockticks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \clockticks[15]~46_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(15));

-- Location: LCCOMB_X56_Y72_N4
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!clockticks(6) & (((!clockticks(4) & !clockticks(3))) # (!clockticks(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(4),
	datab => clockticks(3),
	datac => clockticks(6),
	datad => clockticks(5),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X56_Y72_N28
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!clockticks(10) & (!clockticks(11) & (!clockticks(9) & !clockticks(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(10),
	datab => clockticks(11),
	datac => clockticks(9),
	datad => clockticks(12),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X56_Y72_N0
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\LessThan3~0_combout\ & (((\LessThan3~1_combout\) # (!clockticks(8))) # (!clockticks(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(7),
	datab => \LessThan3~1_combout\,
	datac => clockticks(8),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X56_Y72_N22
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (clockticks(15)) # ((clockticks(14) & (clockticks(13) & !\LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(15),
	datab => clockticks(14),
	datac => clockticks(13),
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~3_combout\);

-- Location: FF_X56_Y72_N23
clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock~q\);

-- Location: CLKCTRL_G14
\clock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y48_N20
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\state.s11~q\ & (\Add0~62_combout\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \Add0~62_combout\,
	datad => \state.s21~q\,
	combout => \Selector13~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X4_Y49_N4
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\state.s20~q\ & !\state.s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s20~q\,
	datad => \state.s10~q\,
	combout => \Selector0~2_combout\);

-- Location: FF_X4_Y49_N31
\state.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \state.s22~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s23~q\);

-- Location: LCCOMB_X1_Y48_N24
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~58_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X1_Y48_N25
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X2_Y49_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (GND)
-- \Add0~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y49_N0
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\state.s21~q\ & (!\Add0~0_combout\ & !\state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datab => \Add0~0_combout\,
	datac => \state.s11~q\,
	combout => \Selector44~0_combout\);

-- Location: FF_X2_Y49_N9
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector44~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X2_Y49_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X3_Y49_N18
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datab => \state.s21~q\,
	datad => \Add0~2_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X2_Y49_N1
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X2_Y49_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X2_Y49_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y49_N30
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \state.s21~q\,
	datad => \Add0~6_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X2_Y49_N31
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector41~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X2_Y49_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y49_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X3_Y49_N10
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \state.s21~q\,
	datad => \Add0~10_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X2_Y49_N15
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector39~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X2_Y49_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y49_N8
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datab => \state.s21~q\,
	datad => \Add0~12_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X2_Y49_N29
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector38~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X2_Y49_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X1_Y49_N6
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (!\state.s21~q\ & (\Add0~14_combout\ & !\state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datab => \Add0~14_combout\,
	datac => \state.s11~q\,
	combout => \Selector37~0_combout\);

-- Location: FF_X2_Y49_N27
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector37~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X2_Y49_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X3_Y49_N0
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Add0~16_combout\ & (!\state.s21~q\ & !\state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \state.s21~q\,
	datad => \state.s11~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X2_Y49_N25
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector36~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X2_Y49_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X1_Y49_N16
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \state.s21~q\,
	datad => \Add0~18_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X2_Y49_N5
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector35~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X2_Y49_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X1_Y49_N22
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~20_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X2_Y49_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector34~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X2_Y49_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X1_Y49_N4
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \state.s21~q\,
	datad => \Add0~22_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X2_Y49_N7
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector33~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X2_Y49_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X1_Y49_N18
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \state.s21~q\,
	datad => \Add0~24_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X2_Y49_N19
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector32~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X2_Y49_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X1_Y49_N14
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Add0~26_combout\ & (!\state.s11~q\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datac => \state.s11~q\,
	datad => \state.s21~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X1_Y49_N15
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector31~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X2_Y49_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X1_Y49_N8
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\state.s11~q\ & (!\state.s21~q\ & \Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \state.s21~q\,
	datad => \Add0~28_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X1_Y49_N9
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X2_Y49_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X1_Y49_N10
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\state.s11~q\ & (\Add0~30_combout\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \Add0~30_combout\,
	datad => \state.s21~q\,
	combout => \Selector29~0_combout\);

-- Location: FF_X1_Y49_N11
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector29~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X2_Y48_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X1_Y48_N6
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\state.s11~q\ & (\Add0~32_combout\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \Add0~32_combout\,
	datad => \state.s21~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X2_Y48_N11
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector28~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X2_Y48_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X1_Y48_N4
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~34_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X2_Y48_N19
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector27~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X2_Y48_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X1_Y48_N28
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~36_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X1_Y48_N29
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X2_Y48_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X1_Y48_N26
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~38_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X2_Y48_N29
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector25~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X2_Y48_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X1_Y48_N22
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\state.s11~q\ & (\Add0~40_combout\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \Add0~40_combout\,
	datad => \state.s21~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X1_Y48_N23
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X2_Y48_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X1_Y48_N8
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\state.s11~q\ & (\Add0~42_combout\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \Add0~42_combout\,
	datad => \state.s21~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X1_Y48_N9
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector23~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X2_Y48_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X1_Y48_N10
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\state.s11~q\ & (\Add0~44_combout\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \Add0~44_combout\,
	datad => \state.s21~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X1_Y48_N11
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X2_Y48_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X1_Y48_N12
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~46_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X1_Y48_N13
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X2_Y48_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X1_Y48_N2
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~48_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X1_Y48_N3
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X2_Y48_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X1_Y48_N0
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~50_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X1_Y48_N1
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X2_Y48_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X1_Y48_N14
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\state.s11~q\ & (\Add0~52_combout\ & !\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datac => \Add0~52_combout\,
	datad => \state.s21~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X1_Y48_N15
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X2_Y48_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X1_Y48_N16
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~54_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X1_Y48_N17
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X2_Y48_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X1_Y48_N30
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~56_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X1_Y48_N31
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X2_Y48_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X1_Y48_N18
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~60_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X1_Y48_N19
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X2_Y48_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X3_Y48_N4
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\Add0~54_combout\ & (!\Add0~52_combout\ & (!\Add0~50_combout\ & !\Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add0~52_combout\,
	datac => \Add0~50_combout\,
	datad => \Add0~56_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y48_N26
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\Add0~42_combout\ & (!\Add0~44_combout\ & (!\Add0~48_combout\ & !\Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~44_combout\,
	datac => \Add0~48_combout\,
	datad => \Add0~46_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X3_Y49_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Add0~10_combout\ & (!\Add0~12_combout\ & (!\Add0~16_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~14_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X3_Y48_N18
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\Add0~34_combout\ & (!\Add0~36_combout\ & (!\Add0~38_combout\ & !\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~36_combout\,
	datac => \Add0~38_combout\,
	datad => \Add0~40_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X3_Y48_N14
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\Add0~22_combout\ & (!\Add0~20_combout\ & (!\Add0~18_combout\ & !\Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~24_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X3_Y48_N20
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\Add0~32_combout\ & (!\Add0~26_combout\ & (!\Add0~28_combout\ & !\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~30_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X3_Y48_N24
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\ & (\LessThan0~4_combout\ & (\LessThan0~2_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X3_Y48_N28
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~6_combout\ & \LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X3_Y48_N30
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\Add0~58_combout\ & (!\Add0~60_combout\ & (\LessThan0~0_combout\ & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~60_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X4_Y48_N24
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.s21~q\) # ((\state.s23~q\ & \Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datab => \state.s23~q\,
	datac => \Add0~62_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X3_Y48_N2
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((!\LessThan1~1_combout\ & (\state.s23~q\ & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \state.s23~q\,
	datac => \LessThan0~8_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X3_Y48_N3
\state.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector11~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s22~q\);

-- Location: LCCOMB_X4_Y49_N22
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\state.s1~q\ & (\Selector0~2_combout\ & (!\state.s22~q\ & !\state.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Selector0~2_combout\,
	datac => \state.s22~q\,
	datad => \state.s12~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X3_Y48_N12
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~1_combout\) # ((!\LessThan0~5_combout\) # (!\LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X3_Y48_N6
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\Add0~58_combout\) # ((\Add0~60_combout\) # ((\LessThan1~2_combout\) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~60_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X3_Y48_N16
\state.s24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s24~0_combout\ = (\state.s24~q\) # ((\state.s23~q\ & (!\Add0~62_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s23~q\,
	datab => \Add0~62_combout\,
	datac => \state.s24~q\,
	datad => \LessThan1~3_combout\,
	combout => \state.s24~0_combout\);

-- Location: FF_X3_Y48_N17
\state.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \state.s24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s24~q\);

-- Location: LCCOMB_X4_Y49_N2
WideOr8 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\WideOr8~0_combout\ & !\state.s24~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~0_combout\,
	datab => \state.s24~q\,
	combout => \WideOr8~combout\);

-- Location: FF_X1_Y48_N21
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X2_Y48_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X3_Y49_N28
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\Add0~6_combout\) # (\Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X3_Y48_N0
\state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~18_combout\ = ((!\Add0~62_combout\ & ((\LessThan0~9_combout\) # (!\LessThan0~8_combout\)))) # (!\state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \Add0~62_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~9_combout\,
	combout => \state~18_combout\);

-- Location: FF_X3_Y48_N1
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \state~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X4_Y49_N10
\state.s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s2~0_combout\ = !\state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s1~q\,
	combout => \state.s2~0_combout\);

-- Location: FF_X4_Y49_N11
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \state.s2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X3_Y48_N10
\state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\state.s2~q\ & (!\Add0~62_combout\ & ((\LessThan0~9_combout\) # (!\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \Add0~62_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~9_combout\,
	combout => \state~19_combout\);

-- Location: FF_X3_Y48_N11
\state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \state~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s10~q\);

-- Location: FF_X4_Y49_N3
\state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \state.s10~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s11~q\);

-- Location: LCCOMB_X1_Y49_N28
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (!\state.s21~q\ & (!\state.s11~q\ & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datac => \state.s11~q\,
	datad => \Add0~8_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X2_Y49_N11
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector40~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X3_Y49_N20
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add0~0_combout\) # (\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X3_Y49_N6
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add0~8_combout\ & ((\Add0~6_combout\) # ((\Add0~4_combout\) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~4_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X4_Y48_N22
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.s11~q\) # ((\state.s13~q\ & \Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s13~q\,
	datac => \Add0~62_combout\,
	datad => \state.s11~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X3_Y48_N8
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((!\LessThan1~1_combout\ & (\state.s13~q\ & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \state.s13~q\,
	datac => \LessThan0~8_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X3_Y48_N9
\state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s12~q\);

-- Location: FF_X4_Y49_N9
\state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \state.s12~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s13~q\);

-- Location: LCCOMB_X3_Y48_N22
\state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\state.s13~q\ & (!\Add0~62_combout\ & ((\LessThan1~1_combout\) # (!\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s13~q\,
	datab => \Add0~62_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan1~1_combout\,
	combout => \state~17_combout\);

-- Location: FF_X3_Y48_N23
\state.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \state~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s20~q\);

-- Location: FF_X4_Y49_N13
\state.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \state.s20~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s21~q\);

-- Location: LCCOMB_X3_Y49_N14
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (!\state.s21~q\ & (\Add0~4_combout\ & !\state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datab => \Add0~4_combout\,
	datac => \state.s11~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X2_Y49_N3
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector42~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X3_Y49_N24
\line2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \line2~0_combout\ = (count(2) & (count(3) $ (((count(1)) # (!count(0)))))) # (!count(2) & (count(1) & (count(0) $ (count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \line2~0_combout\);

-- Location: LCCOMB_X3_Y49_N22
\line1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~0_combout\ = (count(3) & ((count(1) $ (count(0))))) # (!count(3) & ((count(2)) # ((!count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \line1~0_combout\);

-- Location: LCCOMB_X4_Y49_N26
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\line2~0_combout\ & ((\state.s22~q\) # ((\state.s12~q\ & \line1~0_combout\)))) # (!\line2~0_combout\ & (\state.s12~q\ & ((\line1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2~0_combout\,
	datab => \state.s12~q\,
	datac => \state.s22~q\,
	datad => \line1~0_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X4_Y49_N8
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\state.s21~q\) # ((\state.s11~q\) # ((\state.s13~q\) # (\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datab => \state.s11~q\,
	datac => \state.s13~q\,
	datad => \state.s2~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y49_N0
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\LCD_DATA[0]~reg0_q\ & ((\state.s23~q\) # ((\state.s24~q\) # (\WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s23~q\,
	datab => \state.s24~q\,
	datac => \WideOr1~0_combout\,
	datad => \LCD_DATA[0]~reg0_q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X4_Y49_N12
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\state.s20~q\) # ((!\state.s1~q\ & (count(2) & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => count(2),
	datac => \state.s20~q\,
	datad => count(1),
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X4_Y49_N16
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector7~0_combout\) # ((\Selector7~1_combout\) # ((\Selector7~2_combout\ & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \Selector7~0_combout\,
	datac => count(4),
	datad => \Selector7~1_combout\,
	combout => \Selector7~3_combout\);

-- Location: FF_X4_Y49_N17
\LCD_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector7~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_DATA[0]~reg0_q\);

-- Location: LCCOMB_X4_Y49_N24
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\state.s22~q\ & (\state.s20~q\ & (\state.s12~q\ $ (!\state.s10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s22~q\,
	datab => \state.s12~q\,
	datac => \state.s20~q\,
	datad => \state.s10~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X3_Y49_N30
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (count(2) & (count(1) $ (!count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => count(0),
	datad => count(2),
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X4_Y49_N18
\LCD_DATA[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_DATA[1]~2_combout\ = \state.s22~q\ $ (\state.s12~q\ $ (\state.s20~q\ $ (\state.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s22~q\,
	datab => \state.s12~q\,
	datac => \state.s20~q\,
	datad => \state.s10~q\,
	combout => \LCD_DATA[1]~2_combout\);

-- Location: LCCOMB_X3_Y49_N26
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~0_combout\) # ((\Selector6~1_combout\ & !\LCD_DATA[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \Selector6~1_combout\,
	datad => \LCD_DATA[1]~2_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X4_Y49_N20
\LCD_DATA[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_DATA[1]~3_combout\ = (!\reset~input_o\ & (!\WideOr1~0_combout\ & (!\state.s23~q\ & !\state.s24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \WideOr1~0_combout\,
	datac => \state.s23~q\,
	datad => \state.s24~q\,
	combout => \LCD_DATA[1]~3_combout\);

-- Location: FF_X3_Y49_N1
\LCD_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector6~2_combout\,
	sload => VCC,
	ena => \LCD_DATA[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_DATA[1]~reg0_q\);

-- Location: FF_X3_Y49_N27
\LCD_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector6~2_combout\,
	ena => \LCD_DATA[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_DATA[2]~reg0_q\);

-- Location: LCCOMB_X3_Y49_N16
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector6~0_combout\) # ((!\LCD_DATA[1]~2_combout\ & ((count(0)) # (!count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \Selector6~0_combout\,
	datac => count(0),
	datad => \LCD_DATA[1]~2_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X3_Y49_N17
\LCD_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \LCD_DATA[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_DATA[3]~reg0_q\);

-- Location: LCCOMB_X3_Y49_N4
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (count(0) & (!count(1) & ((count(2)) # (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => count(3),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X3_Y49_N2
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.s1~q\ & (count(4) $ (((\Selector3~0_combout\ & !count(2)))))) # (!\state.s1~q\ & (((!\Selector3~0_combout\ & count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => \state.s1~q\,
	datac => \Selector3~0_combout\,
	datad => count(2),
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X4_Y49_N30
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\state.s20~q\ & ((!\Selector3~1_combout\) # (!\state.s10~q\))) # (!\state.s20~q\ & (!\state.s10~q\ & !\Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s20~q\,
	datab => \state.s10~q\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X3_Y49_N19
\LCD_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector3~2_combout\,
	sload => VCC,
	ena => \LCD_DATA[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_DATA[4]~reg0_q\);

-- Location: FF_X3_Y49_N9
\LCD_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Selector3~2_combout\,
	sload => VCC,
	ena => \LCD_DATA[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_DATA[5]~reg0_q\);

-- Location: LCCOMB_X4_Y49_N14
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\state.s23~q\) # ((\WideOr1~0_combout\) # (\state.s24~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s23~q\,
	datac => \WideOr1~0_combout\,
	datad => \state.s24~q\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X4_Y49_N6
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\state.s10~q\) # ((\state.s20~q\) # ((\WideOr1~combout\ & \LCD_DATA[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s10~q\,
	datab => \WideOr1~combout\,
	datac => \LCD_DATA[7]~reg0_q\,
	datad => \state.s20~q\,
	combout => \Selector0~3_combout\);

-- Location: FF_X4_Y49_N7
\LCD_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector0~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_DATA[7]~reg0_q\);

-- Location: LCCOMB_X1_Y49_N12
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ((\state.s24~q\ & \LCD_EN~reg0_q\)) # (!\WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s24~q\,
	datac => \LCD_EN~reg0_q\,
	datad => \WideOr8~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X1_Y49_N13
\LCD_EN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_EN~reg0_q\);

-- Location: LCCOMB_X4_Y49_N28
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.s22~q\) # ((\state.s12~q\) # ((\WideOr1~combout\ & \LCD_RS~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s22~q\,
	datab => \WideOr1~combout\,
	datac => \LCD_RS~reg0_q\,
	datad => \state.s12~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X4_Y49_N29
\LCD_RS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_RS~reg0_q\);

ww_LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

ww_LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

ww_LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

ww_LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

ww_LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

ww_LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

ww_LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

ww_LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;
END structure;


