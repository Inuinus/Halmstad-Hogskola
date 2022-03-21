-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/08/2022 13:09:38"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	uppgift5 IS
    PORT (
	Ladda : OUT std_logic;
	CLK50M : IN std_logic;
	Klar : IN std_logic;
	Start : IN std_logic;
	Rakna : OUT std_logic;
	A_out : OUT std_logic;
	clk_163 : OUT std_logic;
	jk1 : OUT std_logic;
	jk0 : OUT std_logic;
	SW_CLK : IN std_logic
	);
END uppgift5;

-- Design Ports Information
-- Ladda	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rakna	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_163	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jk1	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jk0	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_CLK	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Klar	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK50M	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uppgift5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ladda : std_logic;
SIGNAL ww_CLK50M : std_logic;
SIGNAL ww_Klar : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Rakna : std_logic;
SIGNAL ww_A_out : std_logic;
SIGNAL ww_clk_163 : std_logic;
SIGNAL ww_jk1 : std_logic;
SIGNAL ww_jk0 : std_logic;
SIGNAL ww_SW_CLK : std_logic;
SIGNAL \inst|clk_divider[6]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW_CLK~input_o\ : std_logic;
SIGNAL \Ladda~output_o\ : std_logic;
SIGNAL \Rakna~output_o\ : std_logic;
SIGNAL \A_out~output_o\ : std_logic;
SIGNAL \clk_163~output_o\ : std_logic;
SIGNAL \jk1~output_o\ : std_logic;
SIGNAL \jk0~output_o\ : std_logic;
SIGNAL \CLK50M~input_o\ : std_logic;
SIGNAL \CLK50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|clk_divider[0]~18_combout\ : std_logic;
SIGNAL \inst|clk_divider[1]~6_combout\ : std_logic;
SIGNAL \inst|clk_divider[1]~7\ : std_logic;
SIGNAL \inst|clk_divider[2]~8_combout\ : std_logic;
SIGNAL \inst|clk_divider[2]~9\ : std_logic;
SIGNAL \inst|clk_divider[3]~10_combout\ : std_logic;
SIGNAL \inst|clk_divider[3]~11\ : std_logic;
SIGNAL \inst|clk_divider[4]~12_combout\ : std_logic;
SIGNAL \inst|clk_divider[4]~13\ : std_logic;
SIGNAL \inst|clk_divider[5]~14_combout\ : std_logic;
SIGNAL \inst|clk_divider[5]~15\ : std_logic;
SIGNAL \inst|clk_divider[6]~16_combout\ : std_logic;
SIGNAL \inst|clk_divider[6]~clkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \Klar~input_o\ : std_logic;
SIGNAL \inst2|iq~0_combout\ : std_logic;
SIGNAL \inst2|iq~q\ : std_logic;
SIGNAL \inst3|iq~0_combout\ : std_logic;
SIGNAL \inst3|iq~q\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \inst|clk_divider\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_inst24~combout\ : std_logic;
SIGNAL \ALT_INV_inst11~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Ladda <= ww_Ladda;
ww_CLK50M <= CLK50M;
ww_Klar <= Klar;
ww_Start <= Start;
Rakna <= ww_Rakna;
A_out <= ww_A_out;
clk_163 <= ww_clk_163;
jk1 <= ww_jk1;
jk0 <= ww_jk0;
ww_SW_CLK <= SW_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_divider[6]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_divider\(6));

\CLK50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK50M~input_o\);
\ALT_INV_inst24~combout\ <= NOT \inst24~combout\;
\ALT_INV_inst11~combout\ <= NOT \inst11~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N16
\Ladda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst11~combout\,
	devoe => ww_devoe,
	o => \Ladda~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Rakna~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24~combout\,
	devoe => ww_devoe,
	o => \Rakna~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\A_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst24~combout\,
	devoe => ww_devoe,
	o => \A_out~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\clk_163~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clk_divider\(6),
	devoe => ww_devoe,
	o => \clk_163~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\jk1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|iq~q\,
	devoe => ww_devoe,
	o => \jk1~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\jk0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|iq~q\,
	devoe => ww_devoe,
	o => \jk0~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK50M,
	o => \CLK50M~input_o\);

-- Location: CLKCTRL_G2
\CLK50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y1_N26
\inst|clk_divider[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[0]~18_combout\ = !\inst|clk_divider\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_divider\(0),
	combout => \inst|clk_divider[0]~18_combout\);

-- Location: FF_X28_Y1_N27
\inst|clk_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(0));

-- Location: LCCOMB_X28_Y1_N8
\inst|clk_divider[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[1]~6_combout\ = (\inst|clk_divider\(0) & (\inst|clk_divider\(1) $ (VCC))) # (!\inst|clk_divider\(0) & (\inst|clk_divider\(1) & VCC))
-- \inst|clk_divider[1]~7\ = CARRY((\inst|clk_divider\(0) & \inst|clk_divider\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(0),
	datab => \inst|clk_divider\(1),
	datad => VCC,
	combout => \inst|clk_divider[1]~6_combout\,
	cout => \inst|clk_divider[1]~7\);

-- Location: FF_X28_Y1_N9
\inst|clk_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(1));

-- Location: LCCOMB_X28_Y1_N10
\inst|clk_divider[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[2]~8_combout\ = (\inst|clk_divider\(2) & (!\inst|clk_divider[1]~7\)) # (!\inst|clk_divider\(2) & ((\inst|clk_divider[1]~7\) # (GND)))
-- \inst|clk_divider[2]~9\ = CARRY((!\inst|clk_divider[1]~7\) # (!\inst|clk_divider\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(2),
	datad => VCC,
	cin => \inst|clk_divider[1]~7\,
	combout => \inst|clk_divider[2]~8_combout\,
	cout => \inst|clk_divider[2]~9\);

-- Location: FF_X28_Y1_N11
\inst|clk_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(2));

-- Location: LCCOMB_X28_Y1_N12
\inst|clk_divider[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[3]~10_combout\ = (\inst|clk_divider\(3) & (\inst|clk_divider[2]~9\ $ (GND))) # (!\inst|clk_divider\(3) & (!\inst|clk_divider[2]~9\ & VCC))
-- \inst|clk_divider[3]~11\ = CARRY((\inst|clk_divider\(3) & !\inst|clk_divider[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(3),
	datad => VCC,
	cin => \inst|clk_divider[2]~9\,
	combout => \inst|clk_divider[3]~10_combout\,
	cout => \inst|clk_divider[3]~11\);

-- Location: FF_X28_Y1_N13
\inst|clk_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(3));

-- Location: LCCOMB_X28_Y1_N14
\inst|clk_divider[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[4]~12_combout\ = (\inst|clk_divider\(4) & (!\inst|clk_divider[3]~11\)) # (!\inst|clk_divider\(4) & ((\inst|clk_divider[3]~11\) # (GND)))
-- \inst|clk_divider[4]~13\ = CARRY((!\inst|clk_divider[3]~11\) # (!\inst|clk_divider\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(4),
	datad => VCC,
	cin => \inst|clk_divider[3]~11\,
	combout => \inst|clk_divider[4]~12_combout\,
	cout => \inst|clk_divider[4]~13\);

-- Location: FF_X28_Y1_N15
\inst|clk_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(4));

-- Location: LCCOMB_X28_Y1_N16
\inst|clk_divider[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[5]~14_combout\ = (\inst|clk_divider\(5) & (\inst|clk_divider[4]~13\ $ (GND))) # (!\inst|clk_divider\(5) & (!\inst|clk_divider[4]~13\ & VCC))
-- \inst|clk_divider[5]~15\ = CARRY((\inst|clk_divider\(5) & !\inst|clk_divider[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(5),
	datad => VCC,
	cin => \inst|clk_divider[4]~13\,
	combout => \inst|clk_divider[5]~14_combout\,
	cout => \inst|clk_divider[5]~15\);

-- Location: FF_X28_Y1_N17
\inst|clk_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(5));

-- Location: LCCOMB_X28_Y1_N18
\inst|clk_divider[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[6]~16_combout\ = \inst|clk_divider\(6) $ (\inst|clk_divider[5]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(6),
	cin => \inst|clk_divider[5]~15\,
	combout => \inst|clk_divider[6]~16_combout\);

-- Location: FF_X28_Y1_N19
\inst|clk_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(6));

-- Location: CLKCTRL_G17
\inst|clk_divider[6]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_divider[6]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_divider[6]~clkctrl_outclk\);

-- Location: IOIBUF_X53_Y17_N1
\Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\Klar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Klar,
	o => \Klar~input_o\);

-- Location: LCCOMB_X15_Y1_N28
\inst2|iq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|iq~0_combout\ = (\inst2|iq~q\ & (((!\inst3|iq~q\)))) # (!\inst2|iq~q\ & ((\inst3|iq~q\ & ((!\Klar~input_o\))) # (!\inst3|iq~q\ & (\Start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \Klar~input_o\,
	datac => \inst2|iq~q\,
	datad => \inst3|iq~q\,
	combout => \inst2|iq~0_combout\);

-- Location: FF_X15_Y1_N29
\inst2|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[6]~clkctrl_outclk\,
	d => \inst2|iq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|iq~q\);

-- Location: LCCOMB_X15_Y1_N6
\inst3|iq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|iq~0_combout\ = (\inst3|iq~q\ & (((\inst2|iq~q\) # (!\Klar~input_o\)))) # (!\inst3|iq~q\ & (!\Start~input_o\ & ((\inst2|iq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \Klar~input_o\,
	datac => \inst3|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst3|iq~0_combout\);

-- Location: FF_X15_Y1_N7
\inst3|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[6]~clkctrl_outclk\,
	d => \inst3|iq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|iq~q\);

-- Location: LCCOMB_X15_Y1_N20
inst11 : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (!\inst3|iq~q\ & \inst2|iq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst11~combout\);

-- Location: LCCOMB_X15_Y1_N26
inst24 : cycloneive_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (\inst3|iq~q\ & \inst2|iq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst24~combout\);

-- Location: IOIBUF_X53_Y17_N8
\SW_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_CLK,
	o => \SW_CLK~input_o\);

ww_Ladda <= \Ladda~output_o\;

ww_Rakna <= \Rakna~output_o\;

ww_A_out <= \A_out~output_o\;

ww_clk_163 <= \clk_163~output_o\;

ww_jk1 <= \jk1~output_o\;

ww_jk0 <= \jk0~output_o\;
END structure;


