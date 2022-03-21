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

-- DATE "03/07/2022 14:17:47"

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

ENTITY 	Block6 IS
    PORT (
	Ladda : OUT std_logic;
	CLK50M : IN std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	D : IN std_logic;
	CLEAR : IN std_logic;
	Start : IN std_logic;
	Rakna : OUT std_logic;
	A_out : OUT std_logic;
	clk_163 : OUT std_logic;
	jk1 : OUT std_logic;
	jk0 : OUT std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	klar1 : OUT std_logic;
	Klar : IN std_logic;
	SW_CLK : IN std_logic
	);
END Block6;

-- Design Ports Information
-- Ladda	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Rakna	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A_out	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk_163	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- jk1	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- jk0	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- QA	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QD	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- klar1	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Klar	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW_CLK	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Start	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK50M	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLEAR	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block6 IS
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
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_CLEAR : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Rakna : std_logic;
SIGNAL ww_A_out : std_logic;
SIGNAL ww_clk_163 : std_logic;
SIGNAL ww_jk1 : std_logic;
SIGNAL ww_jk0 : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL ww_klar1 : std_logic;
SIGNAL ww_Klar : std_logic;
SIGNAL ww_SW_CLK : std_logic;
SIGNAL \inst|clk_divider[6]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Klar~input_o\ : std_logic;
SIGNAL \SW_CLK~input_o\ : std_logic;
SIGNAL \Ladda~output_o\ : std_logic;
SIGNAL \Rakna~output_o\ : std_logic;
SIGNAL \A_out~output_o\ : std_logic;
SIGNAL \clk_163~output_o\ : std_logic;
SIGNAL \jk1~output_o\ : std_logic;
SIGNAL \jk0~output_o\ : std_logic;
SIGNAL \QA~output_o\ : std_logic;
SIGNAL \QB~output_o\ : std_logic;
SIGNAL \QC~output_o\ : std_logic;
SIGNAL \QD~output_o\ : std_logic;
SIGNAL \klar1~output_o\ : std_logic;
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
SIGNAL \CLEAR~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst4|sub|68~0_combout\ : std_logic;
SIGNAL \inst4|sub|68~1_combout\ : std_logic;
SIGNAL \inst4|sub|34~q\ : std_logic;
SIGNAL \inst4|sub|109~combout\ : std_logic;
SIGNAL \inst4|sub|115~0_combout\ : std_logic;
SIGNAL \inst4|sub|111~q\ : std_logic;
SIGNAL \inst4|sub|128~0_combout\ : std_logic;
SIGNAL \inst4|sub|120~combout\ : std_logic;
SIGNAL \inst4|sub|126~0_combout\ : std_logic;
SIGNAL \inst4|sub|122~q\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \inst4|sub|131~combout\ : std_logic;
SIGNAL \inst4|sub|137~0_combout\ : std_logic;
SIGNAL \inst4|sub|134~q\ : std_logic;
SIGNAL \inst4|sub|128~combout\ : std_logic;
SIGNAL \inst2|iq~0_combout\ : std_logic;
SIGNAL \inst2|iq~q\ : std_logic;
SIGNAL \inst3|iq~0_combout\ : std_logic;
SIGNAL \inst3|iq~q\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst|clk_divider\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst4|sub|ALT_INV_128~combout\ : std_logic;
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
ww_C <= C;
ww_B <= B;
ww_A <= A;
ww_D <= D;
ww_CLEAR <= CLEAR;
ww_Start <= Start;
Rakna <= ww_Rakna;
A_out <= ww_A_out;
clk_163 <= ww_clk_163;
jk1 <= ww_jk1;
jk0 <= ww_jk0;
QA <= ww_QA;
QB <= ww_QB;
QC <= ww_QC;
QD <= ww_QD;
klar1 <= ww_klar1;
ww_Klar <= Klar;
ww_SW_CLK <= SW_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_divider[6]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_divider\(6));

\CLK50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK50M~input_o\);
\inst4|sub|ALT_INV_128~combout\ <= NOT \inst4|sub|128~combout\;
\ALT_INV_inst24~combout\ <= NOT \inst24~combout\;
\ALT_INV_inst11~combout\ <= NOT \inst11~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X36_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X53_Y12_N2
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X53_Y9_N23
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

-- Location: IOOBUF_X53_Y6_N16
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

-- Location: IOOBUF_X53_Y22_N9
\QA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sub|34~q\,
	devoe => ww_devoe,
	o => \QA~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\QB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sub|111~q\,
	devoe => ww_devoe,
	o => \QB~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\QC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sub|122~q\,
	devoe => ww_devoe,
	o => \QC~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\QD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sub|134~q\,
	devoe => ww_devoe,
	o => \QD~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\klar1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sub|ALT_INV_128~combout\,
	devoe => ww_devoe,
	o => \klar1~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK50M,
	o => \CLK50M~input_o\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X25_Y33_N26
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

-- Location: FF_X25_Y33_N27
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

-- Location: LCCOMB_X25_Y33_N8
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

-- Location: FF_X25_Y33_N9
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

-- Location: LCCOMB_X25_Y33_N10
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

-- Location: FF_X25_Y33_N11
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

-- Location: LCCOMB_X25_Y33_N12
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

-- Location: FF_X25_Y33_N13
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

-- Location: LCCOMB_X25_Y33_N14
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

-- Location: FF_X25_Y33_N15
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

-- Location: LCCOMB_X25_Y33_N16
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

-- Location: FF_X25_Y33_N17
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

-- Location: LCCOMB_X25_Y33_N18
\inst|clk_divider[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[6]~16_combout\ = \inst|clk_divider[5]~15\ $ (\inst|clk_divider\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|clk_divider\(6),
	cin => \inst|clk_divider[5]~15\,
	combout => \inst|clk_divider[6]~16_combout\);

-- Location: FF_X25_Y33_N19
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

-- Location: CLKCTRL_G11
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

-- Location: IOIBUF_X53_Y15_N8
\Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\CLEAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLEAR,
	o => \CLEAR~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X52_Y14_N12
\inst4|sub|68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|68~0_combout\ = (\CLEAR~input_o\ & ((\inst3|iq~q\ & ((!\inst4|sub|34~q\))) # (!\inst3|iq~q\ & (\A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \A~input_o\,
	datac => \inst3|iq~q\,
	datad => \inst4|sub|34~q\,
	combout => \inst4|sub|68~0_combout\);

-- Location: LCCOMB_X52_Y14_N20
\inst4|sub|68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|68~1_combout\ = (\inst2|iq~q\ & (((\inst4|sub|68~0_combout\)))) # (!\inst2|iq~q\ & (\CLEAR~input_o\ & (\inst4|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \inst2|iq~q\,
	datac => \inst4|sub|34~q\,
	datad => \inst4|sub|68~0_combout\,
	combout => \inst4|sub|68~1_combout\);

-- Location: FF_X52_Y14_N21
\inst4|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[6]~clkctrl_outclk\,
	d => \inst4|sub|68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sub|34~q\);

-- Location: LCCOMB_X52_Y14_N10
\inst4|sub|109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|109~combout\ = \inst4|sub|111~q\ $ (((\inst2|iq~q\ & (\inst3|iq~q\ & \inst4|sub|34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|iq~q\,
	datab => \inst4|sub|111~q\,
	datac => \inst3|iq~q\,
	datad => \inst4|sub|34~q\,
	combout => \inst4|sub|109~combout\);

-- Location: LCCOMB_X52_Y14_N14
\inst4|sub|115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|115~0_combout\ = (\CLEAR~input_o\ & ((\inst11~combout\ & (\B~input_o\)) # (!\inst11~combout\ & ((\inst4|sub|109~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \B~input_o\,
	datac => \inst11~combout\,
	datad => \inst4|sub|109~combout\,
	combout => \inst4|sub|115~0_combout\);

-- Location: FF_X52_Y14_N15
\inst4|sub|111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[6]~clkctrl_outclk\,
	d => \inst4|sub|115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sub|111~q\);

-- Location: LCCOMB_X52_Y14_N0
\inst4|sub|128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|128~0_combout\ = (\inst4|sub|111~q\ & \inst4|sub|34~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sub|111~q\,
	datad => \inst4|sub|34~q\,
	combout => \inst4|sub|128~0_combout\);

-- Location: LCCOMB_X52_Y14_N2
\inst4|sub|120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|120~combout\ = \inst4|sub|122~q\ $ (((\inst3|iq~q\ & (\inst2|iq~q\ & \inst4|sub|128~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|iq~q\,
	datab => \inst2|iq~q\,
	datac => \inst4|sub|122~q\,
	datad => \inst4|sub|128~0_combout\,
	combout => \inst4|sub|120~combout\);

-- Location: LCCOMB_X52_Y14_N24
\inst4|sub|126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|126~0_combout\ = (\CLEAR~input_o\ & ((\inst11~combout\ & (\C~input_o\)) # (!\inst11~combout\ & ((\inst4|sub|120~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \C~input_o\,
	datac => \inst11~combout\,
	datad => \inst4|sub|120~combout\,
	combout => \inst4|sub|126~0_combout\);

-- Location: FF_X52_Y14_N25
\inst4|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[6]~clkctrl_outclk\,
	d => \inst4|sub|126~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sub|122~q\);

-- Location: LCCOMB_X52_Y14_N22
inst24 : cycloneive_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (\inst3|iq~q\ & \inst2|iq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst24~combout\);

-- Location: LCCOMB_X52_Y14_N16
\inst4|sub|131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|131~combout\ = \inst4|sub|134~q\ $ (((\inst4|sub|122~q\ & (\inst24~combout\ & \inst4|sub|128~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sub|134~q\,
	datab => \inst4|sub|122~q\,
	datac => \inst24~combout\,
	datad => \inst4|sub|128~0_combout\,
	combout => \inst4|sub|131~combout\);

-- Location: LCCOMB_X52_Y14_N26
\inst4|sub|137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|137~0_combout\ = (\CLEAR~input_o\ & ((\inst11~combout\ & (\D~input_o\)) # (!\inst11~combout\ & ((\inst4|sub|131~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \D~input_o\,
	datac => \inst11~combout\,
	datad => \inst4|sub|131~combout\,
	combout => \inst4|sub|137~0_combout\);

-- Location: FF_X52_Y14_N27
\inst4|sub|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[6]~clkctrl_outclk\,
	d => \inst4|sub|137~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sub|134~q\);

-- Location: LCCOMB_X52_Y14_N6
\inst4|sub|128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sub|128~combout\ = (((\inst11~combout\) # (!\inst4|sub|128~0_combout\)) # (!\inst4|sub|122~q\)) # (!\inst4|sub|134~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sub|134~q\,
	datab => \inst4|sub|122~q\,
	datac => \inst11~combout\,
	datad => \inst4|sub|128~0_combout\,
	combout => \inst4|sub|128~combout\);

-- Location: LCCOMB_X52_Y14_N28
\inst2|iq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|iq~0_combout\ = (\inst3|iq~q\ & (((!\inst2|iq~q\ & \inst4|sub|128~combout\)))) # (!\inst3|iq~q\ & ((\Start~input_o\) # ((\inst2|iq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \inst3|iq~q\,
	datac => \inst2|iq~q\,
	datad => \inst4|sub|128~combout\,
	combout => \inst2|iq~0_combout\);

-- Location: FF_X52_Y14_N29
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

-- Location: LCCOMB_X52_Y14_N30
\inst3|iq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|iq~0_combout\ = (\inst2|iq~q\ & (((\inst3|iq~q\)) # (!\Start~input_o\))) # (!\inst2|iq~q\ & (((\inst3|iq~q\ & \inst4|sub|128~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \inst2|iq~q\,
	datac => \inst3|iq~q\,
	datad => \inst4|sub|128~combout\,
	combout => \inst3|iq~0_combout\);

-- Location: FF_X52_Y14_N31
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

-- Location: LCCOMB_X52_Y14_N4
inst11 : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (!\inst3|iq~q\ & \inst2|iq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst11~combout\);

-- Location: IOIBUF_X53_Y6_N22
\Klar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Klar,
	o => \Klar~input_o\);

-- Location: IOIBUF_X53_Y16_N8
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

ww_QA <= \QA~output_o\;

ww_QB <= \QB~output_o\;

ww_QC <= \QC~output_o\;

ww_QD <= \QD~output_o\;

ww_klar1 <= \klar1~output_o\;
END structure;


