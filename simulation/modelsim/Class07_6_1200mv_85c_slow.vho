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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/16/2022 18:37:55"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	class07 IS
    PORT (
	tickIndicator : OUT std_logic;
	clk : IN std_logic;
	button : IN std_logic_vector(1 DOWNTO 0);
	switch : IN std_logic_vector(9 DOWNTO 0);
	led : OUT std_logic_vector(9 DOWNTO 0)
	);
END class07;

-- Design Ports Information
-- tickIndicator	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF class07 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tickIndicator : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tickIndicator~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[8]~output_o\ : std_logic;
SIGNAL \led[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counts[0]~32_combout\ : std_logic;
SIGNAL \counts[0]~33\ : std_logic;
SIGNAL \counts[1]~34_combout\ : std_logic;
SIGNAL \counts[1]~35\ : std_logic;
SIGNAL \counts[2]~36_combout\ : std_logic;
SIGNAL \counts[2]~37\ : std_logic;
SIGNAL \counts[3]~38_combout\ : std_logic;
SIGNAL \counts[3]~39\ : std_logic;
SIGNAL \counts[4]~40_combout\ : std_logic;
SIGNAL \counts[4]~41\ : std_logic;
SIGNAL \counts[5]~42_combout\ : std_logic;
SIGNAL \counts[5]~43\ : std_logic;
SIGNAL \counts[6]~44_combout\ : std_logic;
SIGNAL \counts[6]~45\ : std_logic;
SIGNAL \counts[7]~46_combout\ : std_logic;
SIGNAL \counts[7]~47\ : std_logic;
SIGNAL \counts[8]~48_combout\ : std_logic;
SIGNAL \counts[8]~49\ : std_logic;
SIGNAL \counts[9]~50_combout\ : std_logic;
SIGNAL \counts[9]~51\ : std_logic;
SIGNAL \counts[10]~52_combout\ : std_logic;
SIGNAL \counts[10]~53\ : std_logic;
SIGNAL \counts[11]~54_combout\ : std_logic;
SIGNAL \counts[11]~55\ : std_logic;
SIGNAL \counts[12]~56_combout\ : std_logic;
SIGNAL \counts[12]~57\ : std_logic;
SIGNAL \counts[13]~58_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \counts[13]~59\ : std_logic;
SIGNAL \counts[14]~60_combout\ : std_logic;
SIGNAL \counts[14]~61\ : std_logic;
SIGNAL \counts[15]~62_combout\ : std_logic;
SIGNAL \counts[15]~63\ : std_logic;
SIGNAL \counts[16]~64_combout\ : std_logic;
SIGNAL \counts[16]~65\ : std_logic;
SIGNAL \counts[17]~66_combout\ : std_logic;
SIGNAL \counts[17]~67\ : std_logic;
SIGNAL \counts[18]~68_combout\ : std_logic;
SIGNAL \counts[18]~69\ : std_logic;
SIGNAL \counts[19]~70_combout\ : std_logic;
SIGNAL \counts[19]~71\ : std_logic;
SIGNAL \counts[20]~72_combout\ : std_logic;
SIGNAL \counts[20]~73\ : std_logic;
SIGNAL \counts[21]~74_combout\ : std_logic;
SIGNAL \counts[21]~75\ : std_logic;
SIGNAL \counts[22]~76_combout\ : std_logic;
SIGNAL \counts[22]~77\ : std_logic;
SIGNAL \counts[23]~78_combout\ : std_logic;
SIGNAL \counts[23]~79\ : std_logic;
SIGNAL \counts[24]~80_combout\ : std_logic;
SIGNAL \counts[24]~81\ : std_logic;
SIGNAL \counts[25]~82_combout\ : std_logic;
SIGNAL \counts[25]~83\ : std_logic;
SIGNAL \counts[26]~84_combout\ : std_logic;
SIGNAL \counts[26]~85\ : std_logic;
SIGNAL \counts[27]~86_combout\ : std_logic;
SIGNAL \counts[27]~87\ : std_logic;
SIGNAL \counts[28]~88_combout\ : std_logic;
SIGNAL \counts[28]~89\ : std_logic;
SIGNAL \counts[29]~90_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \counts[29]~91\ : std_logic;
SIGNAL \counts[30]~92_combout\ : std_logic;
SIGNAL \counts[30]~93\ : std_logic;
SIGNAL \counts[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \indicator~0_combout\ : std_logic;
SIGNAL \indicator~q\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \outputs[9]~9_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \outputs[0]~10_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \outputs[8]~8_combout\ : std_logic;
SIGNAL \outputs[7]~7_combout\ : std_logic;
SIGNAL \outputs[6]~6_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \outputs[5]~5_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \outputs[4]~4_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \outputs[3]~3_combout\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \outputs[2]~2_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \outputs[1]~1_combout\ : std_logic;
SIGNAL \outputs[0]~0_combout\ : std_logic;
SIGNAL outputs : std_logic_vector(9 DOWNTO 0);
SIGNAL counts : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_indicator~q\ : std_logic;

BEGIN

tickIndicator <= ww_tickIndicator;
ww_clk <= clk;
ww_button <= button;
ww_switch <= switch;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_indicator~q\ <= NOT \indicator~q\;

-- Location: IOOBUF_X23_Y29_N9
\tickIndicator~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_indicator~q\,
	devoe => ww_devoe,
	o => \tickIndicator~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(0),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(1),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(2),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(3),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(4),
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(5),
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(6),
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(7),
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(8),
	devoe => ww_devoe,
	o => \led[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outputs(9),
	devoe => ww_devoe,
	o => \led[9]~output_o\);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X28_Y18_N0
\counts[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[0]~32_combout\ = counts(0) $ (VCC)
-- \counts[0]~33\ = CARRY(counts(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counts(0),
	datad => VCC,
	combout => \counts[0]~32_combout\,
	cout => \counts[0]~33\);

-- Location: FF_X28_Y18_N1
\counts[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[0]~32_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(0));

-- Location: LCCOMB_X28_Y18_N2
\counts[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[1]~34_combout\ = (counts(1) & (!\counts[0]~33\)) # (!counts(1) & ((\counts[0]~33\) # (GND)))
-- \counts[1]~35\ = CARRY((!\counts[0]~33\) # (!counts(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(1),
	datad => VCC,
	cin => \counts[0]~33\,
	combout => \counts[1]~34_combout\,
	cout => \counts[1]~35\);

-- Location: FF_X28_Y18_N3
\counts[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[1]~34_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(1));

-- Location: LCCOMB_X28_Y18_N4
\counts[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[2]~36_combout\ = (counts(2) & (\counts[1]~35\ $ (GND))) # (!counts(2) & (!\counts[1]~35\ & VCC))
-- \counts[2]~37\ = CARRY((counts(2) & !\counts[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(2),
	datad => VCC,
	cin => \counts[1]~35\,
	combout => \counts[2]~36_combout\,
	cout => \counts[2]~37\);

-- Location: FF_X28_Y18_N5
\counts[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[2]~36_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(2));

-- Location: LCCOMB_X28_Y18_N6
\counts[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[3]~38_combout\ = (counts(3) & (!\counts[2]~37\)) # (!counts(3) & ((\counts[2]~37\) # (GND)))
-- \counts[3]~39\ = CARRY((!\counts[2]~37\) # (!counts(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(3),
	datad => VCC,
	cin => \counts[2]~37\,
	combout => \counts[3]~38_combout\,
	cout => \counts[3]~39\);

-- Location: FF_X28_Y18_N7
\counts[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[3]~38_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(3));

-- Location: LCCOMB_X28_Y18_N8
\counts[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[4]~40_combout\ = (counts(4) & (\counts[3]~39\ $ (GND))) # (!counts(4) & (!\counts[3]~39\ & VCC))
-- \counts[4]~41\ = CARRY((counts(4) & !\counts[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(4),
	datad => VCC,
	cin => \counts[3]~39\,
	combout => \counts[4]~40_combout\,
	cout => \counts[4]~41\);

-- Location: FF_X28_Y18_N9
\counts[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[4]~40_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(4));

-- Location: LCCOMB_X28_Y18_N10
\counts[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[5]~42_combout\ = (counts(5) & (!\counts[4]~41\)) # (!counts(5) & ((\counts[4]~41\) # (GND)))
-- \counts[5]~43\ = CARRY((!\counts[4]~41\) # (!counts(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(5),
	datad => VCC,
	cin => \counts[4]~41\,
	combout => \counts[5]~42_combout\,
	cout => \counts[5]~43\);

-- Location: FF_X28_Y18_N11
\counts[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[5]~42_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(5));

-- Location: LCCOMB_X28_Y18_N12
\counts[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[6]~44_combout\ = (counts(6) & (\counts[5]~43\ $ (GND))) # (!counts(6) & (!\counts[5]~43\ & VCC))
-- \counts[6]~45\ = CARRY((counts(6) & !\counts[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(6),
	datad => VCC,
	cin => \counts[5]~43\,
	combout => \counts[6]~44_combout\,
	cout => \counts[6]~45\);

-- Location: FF_X28_Y18_N13
\counts[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[6]~44_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(6));

-- Location: LCCOMB_X28_Y18_N14
\counts[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[7]~46_combout\ = (counts(7) & (!\counts[6]~45\)) # (!counts(7) & ((\counts[6]~45\) # (GND)))
-- \counts[7]~47\ = CARRY((!\counts[6]~45\) # (!counts(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(7),
	datad => VCC,
	cin => \counts[6]~45\,
	combout => \counts[7]~46_combout\,
	cout => \counts[7]~47\);

-- Location: FF_X28_Y18_N15
\counts[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[7]~46_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(7));

-- Location: LCCOMB_X28_Y18_N16
\counts[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[8]~48_combout\ = (counts(8) & (\counts[7]~47\ $ (GND))) # (!counts(8) & (!\counts[7]~47\ & VCC))
-- \counts[8]~49\ = CARRY((counts(8) & !\counts[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(8),
	datad => VCC,
	cin => \counts[7]~47\,
	combout => \counts[8]~48_combout\,
	cout => \counts[8]~49\);

-- Location: FF_X28_Y18_N17
\counts[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[8]~48_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(8));

-- Location: LCCOMB_X28_Y18_N18
\counts[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[9]~50_combout\ = (counts(9) & (!\counts[8]~49\)) # (!counts(9) & ((\counts[8]~49\) # (GND)))
-- \counts[9]~51\ = CARRY((!\counts[8]~49\) # (!counts(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(9),
	datad => VCC,
	cin => \counts[8]~49\,
	combout => \counts[9]~50_combout\,
	cout => \counts[9]~51\);

-- Location: FF_X28_Y18_N19
\counts[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[9]~50_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(9));

-- Location: LCCOMB_X28_Y18_N20
\counts[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[10]~52_combout\ = (counts(10) & (\counts[9]~51\ $ (GND))) # (!counts(10) & (!\counts[9]~51\ & VCC))
-- \counts[10]~53\ = CARRY((counts(10) & !\counts[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(10),
	datad => VCC,
	cin => \counts[9]~51\,
	combout => \counts[10]~52_combout\,
	cout => \counts[10]~53\);

-- Location: FF_X28_Y18_N21
\counts[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[10]~52_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(10));

-- Location: LCCOMB_X28_Y18_N22
\counts[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[11]~54_combout\ = (counts(11) & (!\counts[10]~53\)) # (!counts(11) & ((\counts[10]~53\) # (GND)))
-- \counts[11]~55\ = CARRY((!\counts[10]~53\) # (!counts(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(11),
	datad => VCC,
	cin => \counts[10]~53\,
	combout => \counts[11]~54_combout\,
	cout => \counts[11]~55\);

-- Location: FF_X28_Y18_N23
\counts[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[11]~54_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(11));

-- Location: LCCOMB_X28_Y18_N24
\counts[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[12]~56_combout\ = (counts(12) & (\counts[11]~55\ $ (GND))) # (!counts(12) & (!\counts[11]~55\ & VCC))
-- \counts[12]~57\ = CARRY((counts(12) & !\counts[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(12),
	datad => VCC,
	cin => \counts[11]~55\,
	combout => \counts[12]~56_combout\,
	cout => \counts[12]~57\);

-- Location: FF_X28_Y18_N25
\counts[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[12]~56_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(12));

-- Location: LCCOMB_X28_Y18_N26
\counts[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[13]~58_combout\ = (counts(13) & (!\counts[12]~57\)) # (!counts(13) & ((\counts[12]~57\) # (GND)))
-- \counts[13]~59\ = CARRY((!\counts[12]~57\) # (!counts(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(13),
	datad => VCC,
	cin => \counts[12]~57\,
	combout => \counts[13]~58_combout\,
	cout => \counts[13]~59\);

-- Location: FF_X28_Y18_N27
\counts[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[13]~58_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(13));

-- Location: LCCOMB_X27_Y18_N8
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (counts(10) & ((counts(9)) # ((counts(7) & counts(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(10),
	datab => counts(9),
	datac => counts(7),
	datad => counts(8),
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X27_Y18_N30
\LessThan0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ((!counts(11) & (!\LessThan0~11_combout\ & !counts(12)))) # (!counts(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(13),
	datab => counts(11),
	datac => \LessThan0~11_combout\,
	datad => counts(12),
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X28_Y18_N28
\counts[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[14]~60_combout\ = (counts(14) & (\counts[13]~59\ $ (GND))) # (!counts(14) & (!\counts[13]~59\ & VCC))
-- \counts[14]~61\ = CARRY((counts(14) & !\counts[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(14),
	datad => VCC,
	cin => \counts[13]~59\,
	combout => \counts[14]~60_combout\,
	cout => \counts[14]~61\);

-- Location: FF_X28_Y18_N29
\counts[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[14]~60_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(14));

-- Location: LCCOMB_X28_Y18_N30
\counts[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[15]~62_combout\ = (counts(15) & (!\counts[14]~61\)) # (!counts(15) & ((\counts[14]~61\) # (GND)))
-- \counts[15]~63\ = CARRY((!\counts[14]~61\) # (!counts(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(15),
	datad => VCC,
	cin => \counts[14]~61\,
	combout => \counts[15]~62_combout\,
	cout => \counts[15]~63\);

-- Location: FF_X28_Y18_N31
\counts[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[15]~62_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(15));

-- Location: LCCOMB_X28_Y17_N0
\counts[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[16]~64_combout\ = (counts(16) & (\counts[15]~63\ $ (GND))) # (!counts(16) & (!\counts[15]~63\ & VCC))
-- \counts[16]~65\ = CARRY((counts(16) & !\counts[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(16),
	datad => VCC,
	cin => \counts[15]~63\,
	combout => \counts[16]~64_combout\,
	cout => \counts[16]~65\);

-- Location: FF_X28_Y17_N1
\counts[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[16]~64_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(16));

-- Location: LCCOMB_X28_Y17_N2
\counts[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[17]~66_combout\ = (counts(17) & (!\counts[16]~65\)) # (!counts(17) & ((\counts[16]~65\) # (GND)))
-- \counts[17]~67\ = CARRY((!\counts[16]~65\) # (!counts(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(17),
	datad => VCC,
	cin => \counts[16]~65\,
	combout => \counts[17]~66_combout\,
	cout => \counts[17]~67\);

-- Location: FF_X28_Y17_N3
\counts[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[17]~66_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(17));

-- Location: LCCOMB_X28_Y17_N4
\counts[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[18]~68_combout\ = (counts(18) & (\counts[17]~67\ $ (GND))) # (!counts(18) & (!\counts[17]~67\ & VCC))
-- \counts[18]~69\ = CARRY((counts(18) & !\counts[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(18),
	datad => VCC,
	cin => \counts[17]~67\,
	combout => \counts[18]~68_combout\,
	cout => \counts[18]~69\);

-- Location: FF_X28_Y17_N5
\counts[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[18]~68_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(18));

-- Location: LCCOMB_X28_Y17_N6
\counts[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[19]~70_combout\ = (counts(19) & (!\counts[18]~69\)) # (!counts(19) & ((\counts[18]~69\) # (GND)))
-- \counts[19]~71\ = CARRY((!\counts[18]~69\) # (!counts(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(19),
	datad => VCC,
	cin => \counts[18]~69\,
	combout => \counts[19]~70_combout\,
	cout => \counts[19]~71\);

-- Location: FF_X28_Y17_N7
\counts[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[19]~70_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(19));

-- Location: LCCOMB_X28_Y17_N8
\counts[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[20]~72_combout\ = (counts(20) & (\counts[19]~71\ $ (GND))) # (!counts(20) & (!\counts[19]~71\ & VCC))
-- \counts[20]~73\ = CARRY((counts(20) & !\counts[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(20),
	datad => VCC,
	cin => \counts[19]~71\,
	combout => \counts[20]~72_combout\,
	cout => \counts[20]~73\);

-- Location: FF_X28_Y17_N9
\counts[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[20]~72_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(20));

-- Location: LCCOMB_X28_Y17_N10
\counts[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[21]~74_combout\ = (counts(21) & (!\counts[20]~73\)) # (!counts(21) & ((\counts[20]~73\) # (GND)))
-- \counts[21]~75\ = CARRY((!\counts[20]~73\) # (!counts(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(21),
	datad => VCC,
	cin => \counts[20]~73\,
	combout => \counts[21]~74_combout\,
	cout => \counts[21]~75\);

-- Location: FF_X28_Y17_N11
\counts[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[21]~74_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(21));

-- Location: LCCOMB_X28_Y17_N12
\counts[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[22]~76_combout\ = (counts(22) & (\counts[21]~75\ $ (GND))) # (!counts(22) & (!\counts[21]~75\ & VCC))
-- \counts[22]~77\ = CARRY((counts(22) & !\counts[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(22),
	datad => VCC,
	cin => \counts[21]~75\,
	combout => \counts[22]~76_combout\,
	cout => \counts[22]~77\);

-- Location: FF_X28_Y17_N13
\counts[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[22]~76_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(22));

-- Location: LCCOMB_X28_Y17_N14
\counts[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[23]~78_combout\ = (counts(23) & (!\counts[22]~77\)) # (!counts(23) & ((\counts[22]~77\) # (GND)))
-- \counts[23]~79\ = CARRY((!\counts[22]~77\) # (!counts(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(23),
	datad => VCC,
	cin => \counts[22]~77\,
	combout => \counts[23]~78_combout\,
	cout => \counts[23]~79\);

-- Location: FF_X28_Y17_N15
\counts[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[23]~78_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(23));

-- Location: LCCOMB_X28_Y17_N16
\counts[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[24]~80_combout\ = (counts(24) & (\counts[23]~79\ $ (GND))) # (!counts(24) & (!\counts[23]~79\ & VCC))
-- \counts[24]~81\ = CARRY((counts(24) & !\counts[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(24),
	datad => VCC,
	cin => \counts[23]~79\,
	combout => \counts[24]~80_combout\,
	cout => \counts[24]~81\);

-- Location: FF_X28_Y17_N17
\counts[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[24]~80_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(24));

-- Location: LCCOMB_X28_Y17_N18
\counts[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[25]~82_combout\ = (counts(25) & (!\counts[24]~81\)) # (!counts(25) & ((\counts[24]~81\) # (GND)))
-- \counts[25]~83\ = CARRY((!\counts[24]~81\) # (!counts(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(25),
	datad => VCC,
	cin => \counts[24]~81\,
	combout => \counts[25]~82_combout\,
	cout => \counts[25]~83\);

-- Location: FF_X28_Y17_N19
\counts[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[25]~82_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(25));

-- Location: LCCOMB_X28_Y17_N20
\counts[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[26]~84_combout\ = (counts(26) & (\counts[25]~83\ $ (GND))) # (!counts(26) & (!\counts[25]~83\ & VCC))
-- \counts[26]~85\ = CARRY((counts(26) & !\counts[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(26),
	datad => VCC,
	cin => \counts[25]~83\,
	combout => \counts[26]~84_combout\,
	cout => \counts[26]~85\);

-- Location: FF_X28_Y17_N21
\counts[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[26]~84_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(26));

-- Location: LCCOMB_X28_Y17_N22
\counts[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[27]~86_combout\ = (counts(27) & (!\counts[26]~85\)) # (!counts(27) & ((\counts[26]~85\) # (GND)))
-- \counts[27]~87\ = CARRY((!\counts[26]~85\) # (!counts(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(27),
	datad => VCC,
	cin => \counts[26]~85\,
	combout => \counts[27]~86_combout\,
	cout => \counts[27]~87\);

-- Location: FF_X28_Y17_N23
\counts[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[27]~86_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(27));

-- Location: LCCOMB_X28_Y17_N24
\counts[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[28]~88_combout\ = (counts(28) & (\counts[27]~87\ $ (GND))) # (!counts(28) & (!\counts[27]~87\ & VCC))
-- \counts[28]~89\ = CARRY((counts(28) & !\counts[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(28),
	datad => VCC,
	cin => \counts[27]~87\,
	combout => \counts[28]~88_combout\,
	cout => \counts[28]~89\);

-- Location: FF_X28_Y17_N25
\counts[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[28]~88_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(28));

-- Location: LCCOMB_X28_Y17_N26
\counts[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[29]~90_combout\ = (counts(29) & (!\counts[28]~89\)) # (!counts(29) & ((\counts[28]~89\) # (GND)))
-- \counts[29]~91\ = CARRY((!\counts[28]~89\) # (!counts(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(29),
	datad => VCC,
	cin => \counts[28]~89\,
	combout => \counts[29]~90_combout\,
	cout => \counts[29]~91\);

-- Location: FF_X28_Y17_N27
\counts[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[29]~90_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(29));

-- Location: LCCOMB_X27_Y17_N10
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counts(28) & (!counts(27) & (!counts(26) & !counts(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(28),
	datab => counts(27),
	datac => counts(26),
	datad => counts(29),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y17_N28
\counts[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[30]~92_combout\ = (counts(30) & (\counts[29]~91\ $ (GND))) # (!counts(30) & (!\counts[29]~91\ & VCC))
-- \counts[30]~93\ = CARRY((counts(30) & !\counts[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts(30),
	datad => VCC,
	cin => \counts[29]~91\,
	combout => \counts[30]~92_combout\,
	cout => \counts[30]~93\);

-- Location: FF_X28_Y17_N29
\counts[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[30]~92_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(30));

-- Location: LCCOMB_X28_Y17_N30
\counts[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counts[31]~94_combout\ = counts(31) $ (\counts[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts(31),
	cin => \counts[30]~93\,
	combout => \counts[31]~94_combout\);

-- Location: FF_X28_Y17_N31
\counts[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counts[31]~94_combout\,
	sclr => \ALT_INV_LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts(31));

-- Location: LCCOMB_X27_Y17_N8
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counts(24) & (!counts(22) & (!counts(23) & !counts(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(24),
	datab => counts(22),
	datac => counts(23),
	datad => counts(25),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y17_N28
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counts(19)) # ((counts(17) & counts(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(19),
	datac => counts(17),
	datad => counts(18),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y17_N0
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~1_combout\ & (((!counts(20) & !\LessThan0~2_combout\)) # (!counts(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(21),
	datab => counts(20),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y17_N20
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (counts(31)) # ((\LessThan0~0_combout\ & (!counts(30) & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => counts(30),
	datac => counts(31),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y18_N26
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!counts(9) & (!counts(12) & (!counts(5) & !counts(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(9),
	datab => counts(12),
	datac => counts(5),
	datad => counts(11),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X27_Y18_N12
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (((!counts(3)) # (!counts(1))) # (!counts(0))) # (!counts(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(2),
	datab => counts(0),
	datac => counts(1),
	datad => counts(3),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X27_Y18_N10
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!counts(6) & (\LessThan0~8_combout\ & ((\LessThan0~9_combout\) # (!counts(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(4),
	datab => counts(6),
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X27_Y17_N12
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!counts(30) & (\LessThan0~1_combout\ & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counts(30),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y17_N2
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!counts(19) & (!counts(20) & \LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(19),
	datac => counts(20),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X27_Y17_N18
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!counts(14) & (!counts(15) & (!counts(16) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts(14),
	datab => counts(15),
	datac => counts(16),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X27_Y17_N16
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = (\LessThan0~4_combout\) # ((\LessThan0~7_combout\ & ((\LessThan0~12_combout\) # (\LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~13_combout\);

-- Location: LCCOMB_X27_Y18_N20
\indicator~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indicator~0_combout\ = \indicator~q\ $ (!\LessThan0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \indicator~q\,
	datad => \LessThan0~13_combout\,
	combout => \indicator~0_combout\);

-- Location: FF_X27_Y18_N21
indicator : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \indicator~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indicator~q\);

-- Location: IOIBUF_X0_Y21_N8
\button[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\button[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: LCCOMB_X22_Y17_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\button[0]~input_o\ & !\button[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\switch[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\switch[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\switch[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X26_Y17_N26
\outputs[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[9]~9_combout\ = (\Equal1~0_combout\ & ((outputs(0)))) # (!\Equal1~0_combout\ & (\switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \switch[9]~input_o\,
	datad => outputs(0),
	combout => \outputs[9]~9_combout\);

-- Location: LCCOMB_X22_Y17_N22
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\button[0]~input_o\ & \button[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X27_Y17_N24
\outputs[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[0]~10_combout\ = (!\LessThan0~13_combout\ & ((!\button[0]~input_o\) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[1]~input_o\,
	datac => \button[0]~input_o\,
	datad => \LessThan0~13_combout\,
	combout => \outputs[0]~10_combout\);

-- Location: FF_X26_Y17_N27
\outputs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[9]~9_combout\,
	asdata => outputs(8),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(9));

-- Location: IOIBUF_X0_Y26_N1
\switch[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: LCCOMB_X26_Y17_N8
\outputs[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[8]~8_combout\ = (\Equal1~0_combout\ & (outputs(9))) # (!\Equal1~0_combout\ & ((\switch[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => outputs(9),
	datab => \switch[8]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \outputs[8]~8_combout\);

-- Location: FF_X26_Y17_N9
\outputs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[8]~8_combout\,
	asdata => outputs(7),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(8));

-- Location: LCCOMB_X26_Y17_N30
\outputs[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[7]~7_combout\ = (\Equal1~0_combout\ & ((outputs(8)))) # (!\Equal1~0_combout\ & (\switch[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => outputs(8),
	datad => \Equal1~0_combout\,
	combout => \outputs[7]~7_combout\);

-- Location: FF_X26_Y17_N31
\outputs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[7]~7_combout\,
	asdata => outputs(6),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(7));

-- Location: LCCOMB_X27_Y17_N6
\outputs[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[6]~6_combout\ = (\Equal1~0_combout\ & ((outputs(7)))) # (!\Equal1~0_combout\ & (\switch[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \Equal1~0_combout\,
	datad => outputs(7),
	combout => \outputs[6]~6_combout\);

-- Location: FF_X27_Y17_N7
\outputs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[6]~6_combout\,
	asdata => outputs(5),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(6));

-- Location: IOIBUF_X0_Y22_N15
\switch[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X27_Y17_N26
\outputs[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[5]~5_combout\ = (\Equal1~0_combout\ & (outputs(6))) # (!\Equal1~0_combout\ & ((\switch[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => outputs(6),
	datab => \Equal1~0_combout\,
	datad => \switch[5]~input_o\,
	combout => \outputs[5]~5_combout\);

-- Location: FF_X27_Y17_N27
\outputs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[5]~5_combout\,
	asdata => outputs(4),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(5));

-- Location: IOIBUF_X0_Y27_N22
\switch[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: LCCOMB_X27_Y17_N4
\outputs[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[4]~4_combout\ = (\Equal1~0_combout\ & (outputs(5))) # (!\Equal1~0_combout\ & ((\switch[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => outputs(5),
	datab => \Equal1~0_combout\,
	datad => \switch[4]~input_o\,
	combout => \outputs[4]~4_combout\);

-- Location: FF_X27_Y17_N5
\outputs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[4]~4_combout\,
	asdata => outputs(3),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(4));

-- Location: IOIBUF_X0_Y23_N8
\switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: LCCOMB_X27_Y17_N30
\outputs[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[3]~3_combout\ = (\Equal1~0_combout\ & (outputs(4))) # (!\Equal1~0_combout\ & ((\switch[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => outputs(4),
	datab => \Equal1~0_combout\,
	datad => \switch[3]~input_o\,
	combout => \outputs[3]~3_combout\);

-- Location: FF_X27_Y17_N31
\outputs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[3]~3_combout\,
	asdata => outputs(2),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(3));

-- Location: IOIBUF_X0_Y25_N22
\switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: LCCOMB_X27_Y17_N14
\outputs[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[2]~2_combout\ = (\Equal1~0_combout\ & (outputs(3))) # (!\Equal1~0_combout\ & ((\switch[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => outputs(3),
	datab => \Equal1~0_combout\,
	datad => \switch[2]~input_o\,
	combout => \outputs[2]~2_combout\);

-- Location: FF_X27_Y17_N15
\outputs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[2]~2_combout\,
	asdata => outputs(1),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(2));

-- Location: IOIBUF_X0_Y27_N1
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X27_Y17_N22
\outputs[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[1]~1_combout\ = (\Equal1~0_combout\ & (outputs(2))) # (!\Equal1~0_combout\ & ((\switch[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => outputs(2),
	datab => \switch[1]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \outputs[1]~1_combout\);

-- Location: FF_X27_Y17_N23
\outputs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[1]~1_combout\,
	asdata => outputs(0),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(1));

-- Location: LCCOMB_X26_Y17_N16
\outputs[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outputs[0]~0_combout\ = (\Equal1~0_combout\ & ((outputs(1)))) # (!\Equal1~0_combout\ & (\switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \switch[0]~input_o\,
	datad => outputs(1),
	combout => \outputs[0]~0_combout\);

-- Location: FF_X26_Y17_N17
\outputs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputs[0]~0_combout\,
	asdata => outputs(9),
	sload => \Equal1~1_combout\,
	ena => \outputs[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outputs(0));

ww_tickIndicator <= \tickIndicator~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(8) <= \led[8]~output_o\;

ww_led(9) <= \led[9]~output_o\;
END structure;


