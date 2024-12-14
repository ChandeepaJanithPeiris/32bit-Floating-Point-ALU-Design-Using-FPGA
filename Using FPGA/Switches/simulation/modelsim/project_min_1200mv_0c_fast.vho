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

-- DATE "12/14/2024 23:05:58"

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

ENTITY 	switches_to_LEDs IS
    PORT (
	i_switch : IN std_logic_vector(3 DOWNTO 0);
	key0 : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	clk : IN std_logic;
	o_LED : OUT std_logic_vector(4 DOWNTO 0)
	);
END switches_to_LEDs;

-- Design Ports Information
-- o_LED[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_switch[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- key2	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_switch[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_switch[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_switch[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF switches_to_LEDs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_switch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_o_LED : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_LED[0]~output_o\ : std_logic;
SIGNAL \o_LED[1]~output_o\ : std_logic;
SIGNAL \o_LED[2]~output_o\ : std_logic;
SIGNAL \o_LED[3]~output_o\ : std_logic;
SIGNAL \o_LED[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \i_switch[0]~input_o\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \first_input[0]~feeder_combout\ : std_logic;
SIGNAL \second_input[3]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \o_LED~11_combout\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \o_LED[0]~9_combout\ : std_logic;
SIGNAL \o_LED[0]~reg0_q\ : std_logic;
SIGNAL \i_switch[1]~input_o\ : std_logic;
SIGNAL \first_input[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \o_LED~12_combout\ : std_logic;
SIGNAL \o_LED[1]~reg0_q\ : std_logic;
SIGNAL \i_switch[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \o_LED~13_combout\ : std_logic;
SIGNAL \o_LED[2]~reg0_q\ : std_logic;
SIGNAL \i_switch[3]~input_o\ : std_logic;
SIGNAL \first_input[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \o_LED~14_combout\ : std_logic;
SIGNAL \o_LED[3]~reg0_q\ : std_logic;
SIGNAL \o_LED[0]~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \o_LED~10_combout\ : std_logic;
SIGNAL \o_LED[4]~reg0_q\ : std_logic;
SIGNAL second_input : std_logic_vector(3 DOWNTO 0);
SIGNAL first_input : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_key0~input_o\ : std_logic;

BEGIN

ww_i_switch <= i_switch;
ww_key0 <= key0;
ww_key1 <= key1;
ww_key2 <= key2;
ww_clk <= clk;
o_LED <= ww_o_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_key0~input_o\ <= NOT \key0~input_o\;

-- Location: IOOBUF_X69_Y73_N16
\o_LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\o_LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\o_LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\o_LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\o_LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[4]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y53_N15
\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\i_switch[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch(0),
	o => \i_switch[0]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\key0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: LCCOMB_X113_Y42_N16
\first_input[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \first_input[0]~feeder_combout\ = \i_switch[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_switch[0]~input_o\,
	combout => \first_input[0]~feeder_combout\);

-- Location: FF_X113_Y42_N17
\first_input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \first_input[0]~feeder_combout\,
	ena => \ALT_INV_key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first_input(0));

-- Location: LCCOMB_X114_Y42_N24
\second_input[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \second_input[3]~0_combout\ = (\key0~input_o\ & !\key1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key0~input_o\,
	datad => \key1~input_o\,
	combout => \second_input[3]~0_combout\);

-- Location: FF_X114_Y42_N7
\second_input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i_switch[0]~input_o\,
	sload => VCC,
	ena => \second_input[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_input(0));

-- Location: LCCOMB_X114_Y42_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (first_input(0) & (second_input(0) $ (VCC))) # (!first_input(0) & (second_input(0) & VCC))
-- \Add0~1\ = CARRY((first_input(0) & second_input(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first_input(0),
	datab => second_input(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X113_Y42_N20
\o_LED~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_LED~11_combout\ = (\key1~input_o\ & ((\key0~input_o\ & ((\Add0~0_combout\))) # (!\key0~input_o\ & (\i_switch[0]~input_o\)))) # (!\key1~input_o\ & (\i_switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datab => \i_switch[0]~input_o\,
	datac => \key0~input_o\,
	datad => \Add0~0_combout\,
	combout => \o_LED~11_combout\);

-- Location: IOIBUF_X115_Y42_N15
\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: LCCOMB_X114_Y42_N28
\o_LED[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_LED[0]~9_combout\ = ((!\key1~input_o\) # (!\key0~input_o\)) # (!\key2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2~input_o\,
	datac => \key0~input_o\,
	datad => \key1~input_o\,
	combout => \o_LED[0]~9_combout\);

-- Location: FF_X113_Y42_N21
\o_LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_LED~11_combout\,
	ena => \o_LED[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[0]~reg0_q\);

-- Location: IOIBUF_X115_Y14_N1
\i_switch[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch(1),
	o => \i_switch[1]~input_o\);

-- Location: LCCOMB_X113_Y42_N26
\first_input[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \first_input[1]~feeder_combout\ = \i_switch[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_switch[1]~input_o\,
	combout => \first_input[1]~feeder_combout\);

-- Location: FF_X113_Y42_N27
\first_input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \first_input[1]~feeder_combout\,
	ena => \ALT_INV_key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first_input(1));

-- Location: FF_X114_Y42_N9
\second_input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i_switch[1]~input_o\,
	sload => VCC,
	ena => \second_input[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_input(1));

-- Location: LCCOMB_X114_Y42_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (first_input(1) & ((second_input(1) & (\Add0~1\ & VCC)) # (!second_input(1) & (!\Add0~1\)))) # (!first_input(1) & ((second_input(1) & (!\Add0~1\)) # (!second_input(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((first_input(1) & (!second_input(1) & !\Add0~1\)) # (!first_input(1) & ((!\Add0~1\) # (!second_input(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => first_input(1),
	datab => second_input(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X113_Y42_N10
\o_LED~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_LED~12_combout\ = (\key0~input_o\ & ((\key1~input_o\ & ((\Add0~2_combout\))) # (!\key1~input_o\ & (\i_switch[1]~input_o\)))) # (!\key0~input_o\ & (\i_switch[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_switch[1]~input_o\,
	datab => \key0~input_o\,
	datac => \Add0~2_combout\,
	datad => \key1~input_o\,
	combout => \o_LED~12_combout\);

-- Location: FF_X113_Y42_N11
\o_LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_LED~12_combout\,
	ena => \o_LED[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[1]~reg0_q\);

-- Location: IOIBUF_X115_Y15_N8
\i_switch[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch(2),
	o => \i_switch[2]~input_o\);

-- Location: FF_X114_Y42_N11
\second_input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i_switch[2]~input_o\,
	sload => VCC,
	ena => \second_input[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_input(2));

-- Location: FF_X113_Y42_N25
\first_input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i_switch[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first_input(2));

-- Location: LCCOMB_X114_Y42_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((second_input(2) $ (first_input(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((second_input(2) & ((first_input(2)) # (!\Add0~3\))) # (!second_input(2) & (first_input(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_input(2),
	datab => first_input(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X113_Y42_N4
\o_LED~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_LED~13_combout\ = (\key0~input_o\ & ((\key1~input_o\ & ((\Add0~4_combout\))) # (!\key1~input_o\ & (\i_switch[2]~input_o\)))) # (!\key0~input_o\ & (\i_switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_switch[2]~input_o\,
	datab => \key0~input_o\,
	datac => \Add0~4_combout\,
	datad => \key1~input_o\,
	combout => \o_LED~13_combout\);

-- Location: FF_X113_Y42_N5
\o_LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_LED~13_combout\,
	ena => \o_LED[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[2]~reg0_q\);

-- Location: IOIBUF_X115_Y13_N8
\i_switch[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch(3),
	o => \i_switch[3]~input_o\);

-- Location: FF_X114_Y42_N13
\second_input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i_switch[3]~input_o\,
	sload => VCC,
	ena => \second_input[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_input(3));

-- Location: LCCOMB_X113_Y42_N30
\first_input[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \first_input[3]~feeder_combout\ = \i_switch[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_switch[3]~input_o\,
	combout => \first_input[3]~feeder_combout\);

-- Location: FF_X113_Y42_N31
\first_input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \first_input[3]~feeder_combout\,
	ena => \ALT_INV_key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first_input(3));

-- Location: LCCOMB_X114_Y42_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (second_input(3) & ((first_input(3) & (\Add0~5\ & VCC)) # (!first_input(3) & (!\Add0~5\)))) # (!second_input(3) & ((first_input(3) & (!\Add0~5\)) # (!first_input(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((second_input(3) & (!first_input(3) & !\Add0~5\)) # (!second_input(3) & ((!\Add0~5\) # (!first_input(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_input(3),
	datab => first_input(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X113_Y42_N22
\o_LED~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_LED~14_combout\ = (\key0~input_o\ & ((\key1~input_o\ & ((\Add0~6_combout\))) # (!\key1~input_o\ & (\i_switch[3]~input_o\)))) # (!\key0~input_o\ & (\i_switch[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_switch[3]~input_o\,
	datab => \key0~input_o\,
	datac => \Add0~6_combout\,
	datad => \key1~input_o\,
	combout => \o_LED~14_combout\);

-- Location: FF_X113_Y42_N23
\o_LED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_LED~14_combout\,
	ena => \o_LED[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[3]~reg0_q\);

-- Location: LCCOMB_X114_Y42_N2
\o_LED[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_LED[0]~8_combout\ = (!\key1~input_o\) # (!\key0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key0~input_o\,
	datad => \key1~input_o\,
	combout => \o_LED[0]~8_combout\);

-- Location: LCCOMB_X114_Y42_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = !\Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X114_Y42_N16
\o_LED~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_LED~10_combout\ = (!\o_LED[0]~8_combout\ & ((\key2~input_o\ & (\o_LED[4]~reg0_q\)) # (!\key2~input_o\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2~input_o\,
	datab => \o_LED[0]~8_combout\,
	datac => \o_LED[4]~reg0_q\,
	datad => \Add0~8_combout\,
	combout => \o_LED~10_combout\);

-- Location: FF_X114_Y42_N17
\o_LED[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_LED~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[4]~reg0_q\);

ww_o_LED(0) <= \o_LED[0]~output_o\;

ww_o_LED(1) <= \o_LED[1]~output_o\;

ww_o_LED(2) <= \o_LED[2]~output_o\;

ww_o_LED(3) <= \o_LED[3]~output_o\;

ww_o_LED(4) <= \o_LED[4]~output_o\;
END structure;


