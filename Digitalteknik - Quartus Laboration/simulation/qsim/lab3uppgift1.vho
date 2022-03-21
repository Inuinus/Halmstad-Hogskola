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

-- DATE "02/28/2022 16:01:56"

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

ENTITY 	lab3uppgift1 IS
    PORT (
	QA : OUT std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	T : IN std_logic;
	D : IN std_logic;
	CLR : IN std_logic;
	CLK : IN std_logic;
	P : IN std_logic;
	L : IN std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	RCO : OUT std_logic;
	Q : OUT std_logic;
	K : IN std_logic;
	J : IN std_logic
	);
END lab3uppgift1;

-- Design Ports Information
-- QA	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QD	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RCO	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3uppgift1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL ww_RCO : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \QA~output_o\ : std_logic;
SIGNAL \QB~output_o\ : std_logic;
SIGNAL \QC~output_o\ : std_logic;
SIGNAL \QD~output_o\ : std_logic;
SIGNAL \RCO~output_o\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \L~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \inst1|sub|72~combout\ : std_logic;
SIGNAL \inst1|sub|68~0_combout\ : std_logic;
SIGNAL \inst1|sub|34~q\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst1|sub|109~combout\ : std_logic;
SIGNAL \inst1|sub|115~0_combout\ : std_logic;
SIGNAL \inst1|sub|111~q\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst1|sub|119~0_combout\ : std_logic;
SIGNAL \inst1|sub|126~0_combout\ : std_logic;
SIGNAL \inst1|sub|126~1_combout\ : std_logic;
SIGNAL \inst1|sub|122~q\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \inst1|sub|131~combout\ : std_logic;
SIGNAL \inst1|sub|137~0_combout\ : std_logic;
SIGNAL \inst1|sub|134~q\ : std_logic;
SIGNAL \inst1|sub|128~0_combout\ : std_logic;
SIGNAL \inst1|sub|128~1_combout\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

QA <= ww_QA;
ww_C <= C;
ww_B <= B;
ww_A <= A;
ww_T <= T;
ww_D <= D;
ww_CLR <= CLR;
ww_CLK <= CLK;
ww_P <= P;
ww_L <= L;
QB <= ww_QB;
QC <= ww_QC;
QD <= ww_QD;
RCO <= ww_RCO;
Q <= ww_Q;
ww_K <= K;
ww_J <= J;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y21_N23
\QA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|34~q\,
	devoe => ww_devoe,
	o => \QA~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\QB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|111~q\,
	devoe => ww_devoe,
	o => \QB~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\QC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|122~q\,
	devoe => ww_devoe,
	o => \QC~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\QD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|134~q\,
	devoe => ww_devoe,
	o => \QD~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\RCO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|128~1_combout\,
	devoe => ww_devoe,
	o => \RCO~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y12_N1
\L~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L,
	o => \L~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\T~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: LCCOMB_X52_Y17_N0
\inst1|sub|72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|72~combout\ = \inst1|sub|34~q\ $ (((\T~input_o\ & \P~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T~input_o\,
	datac => \P~input_o\,
	datad => \inst1|sub|34~q\,
	combout => \inst1|sub|72~combout\);

-- Location: LCCOMB_X52_Y17_N16
\inst1|sub|68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|68~0_combout\ = (\CLR~input_o\ & ((\L~input_o\ & ((\inst1|sub|72~combout\))) # (!\L~input_o\ & (\A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~input_o\,
	datab => \CLR~input_o\,
	datac => \A~input_o\,
	datad => \inst1|sub|72~combout\,
	combout => \inst1|sub|68~0_combout\);

-- Location: FF_X52_Y17_N17
\inst1|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|sub|68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|34~q\);

-- Location: IOIBUF_X53_Y16_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X52_Y17_N18
\inst1|sub|109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|109~combout\ = \inst1|sub|111~q\ $ (((\T~input_o\ & (\P~input_o\ & \inst1|sub|34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T~input_o\,
	datab => \P~input_o\,
	datac => \inst1|sub|34~q\,
	datad => \inst1|sub|111~q\,
	combout => \inst1|sub|109~combout\);

-- Location: LCCOMB_X52_Y17_N14
\inst1|sub|115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|115~0_combout\ = (\CLR~input_o\ & ((\L~input_o\ & ((\inst1|sub|109~combout\))) # (!\L~input_o\ & (\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~input_o\,
	datab => \CLR~input_o\,
	datac => \B~input_o\,
	datad => \inst1|sub|109~combout\,
	combout => \inst1|sub|115~0_combout\);

-- Location: FF_X52_Y17_N15
\inst1|sub|111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|sub|115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|111~q\);

-- Location: IOIBUF_X53_Y14_N8
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X52_Y17_N28
\inst1|sub|119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|119~0_combout\ = (\T~input_o\ & (\P~input_o\ & (\inst1|sub|111~q\ & \inst1|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T~input_o\,
	datab => \P~input_o\,
	datac => \inst1|sub|111~q\,
	datad => \inst1|sub|34~q\,
	combout => \inst1|sub|119~0_combout\);

-- Location: LCCOMB_X52_Y17_N6
\inst1|sub|126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|126~0_combout\ = (\L~input_o\ & (\CLR~input_o\ & (\inst1|sub|122~q\ $ (\inst1|sub|119~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~input_o\,
	datab => \CLR~input_o\,
	datac => \inst1|sub|122~q\,
	datad => \inst1|sub|119~0_combout\,
	combout => \inst1|sub|126~0_combout\);

-- Location: LCCOMB_X52_Y17_N12
\inst1|sub|126~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|126~1_combout\ = (\inst1|sub|126~0_combout\) # ((!\L~input_o\ & (\CLR~input_o\ & \C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~input_o\,
	datab => \CLR~input_o\,
	datac => \C~input_o\,
	datad => \inst1|sub|126~0_combout\,
	combout => \inst1|sub|126~1_combout\);

-- Location: FF_X52_Y17_N13
\inst1|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|sub|126~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|122~q\);

-- Location: IOIBUF_X53_Y22_N8
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X52_Y17_N24
\inst1|sub|131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|131~combout\ = \inst1|sub|134~q\ $ (((\inst1|sub|122~q\ & \inst1|sub|119~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|134~q\,
	datac => \inst1|sub|122~q\,
	datad => \inst1|sub|119~0_combout\,
	combout => \inst1|sub|131~combout\);

-- Location: LCCOMB_X52_Y17_N22
\inst1|sub|137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|137~0_combout\ = (\CLR~input_o\ & ((\L~input_o\ & ((\inst1|sub|131~combout\))) # (!\L~input_o\ & (\D~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~input_o\,
	datab => \CLR~input_o\,
	datac => \D~input_o\,
	datad => \inst1|sub|131~combout\,
	combout => \inst1|sub|137~0_combout\);

-- Location: FF_X52_Y17_N23
\inst1|sub|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|sub|137~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|134~q\);

-- Location: LCCOMB_X52_Y17_N20
\inst1|sub|128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|128~0_combout\ = (\inst1|sub|134~q\ & (\inst1|sub|122~q\ & (\T~input_o\ & \inst1|sub|111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|134~q\,
	datab => \inst1|sub|122~q\,
	datac => \T~input_o\,
	datad => \inst1|sub|111~q\,
	combout => \inst1|sub|128~0_combout\);

-- Location: LCCOMB_X52_Y17_N26
\inst1|sub|128~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sub|128~1_combout\ = (\inst1|sub|34~q\ & \inst1|sub|128~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|34~q\,
	datac => \inst1|sub|128~0_combout\,
	combout => \inst1|sub|128~1_combout\);

-- Location: IOIBUF_X43_Y34_N22
\J~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\K~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: LCCOMB_X44_Y33_N4
\inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\inst3~q\ & ((!\K~input_o\))) # (!\inst3~q\ & (\J~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J~input_o\,
	datac => \inst3~q\,
	datad => \K~input_o\,
	combout => \inst3~0_combout\);

-- Location: FF_X44_Y33_N5
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

ww_QA <= \QA~output_o\;

ww_QB <= \QB~output_o\;

ww_QC <= \QC~output_o\;

ww_QD <= \QD~output_o\;

ww_RCO <= \RCO~output_o\;

ww_Q <= \Q~output_o\;
END structure;


