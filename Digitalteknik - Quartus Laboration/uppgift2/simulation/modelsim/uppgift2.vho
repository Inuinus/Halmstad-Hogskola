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

-- DATE "02/28/2022 17:12:05"

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

ENTITY 	uppgift2 IS
    PORT (
	U7 : OUT std_logic;
	clk : IN std_logic;
	M : IN std_logic;
	SIN : IN std_logic;
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	U6 : OUT std_logic;
	U5 : OUT std_logic;
	U4 : OUT std_logic;
	U3 : OUT std_logic;
	U2 : OUT std_logic;
	U1 : OUT std_logic;
	U0 : OUT std_logic;
	Sout : OUT std_logic
	);
END uppgift2;

-- Design Ports Information
-- U7	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U6	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U5	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U4	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U3	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U0	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sout	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A5	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A6	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A7	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIN	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uppgift2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_U7 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_SIN : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_U6 : std_logic;
SIGNAL ww_U5 : std_logic;
SIGNAL ww_U4 : std_logic;
SIGNAL ww_U3 : std_logic;
SIGNAL ww_U2 : std_logic;
SIGNAL ww_U1 : std_logic;
SIGNAL ww_U0 : std_logic;
SIGNAL ww_Sout : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U7~output_o\ : std_logic;
SIGNAL \U6~output_o\ : std_logic;
SIGNAL \U5~output_o\ : std_logic;
SIGNAL \U4~output_o\ : std_logic;
SIGNAL \U3~output_o\ : std_logic;
SIGNAL \U2~output_o\ : std_logic;
SIGNAL \U1~output_o\ : std_logic;
SIGNAL \U0~output_o\ : std_logic;
SIGNAL \Sout~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \A5~input_o\ : std_logic;
SIGNAL \A6~input_o\ : std_logic;
SIGNAL \SIN~input_o\ : std_logic;
SIGNAL \A7~input_o\ : std_logic;
SIGNAL \inst20|5~0_combout\ : std_logic;
SIGNAL \inst|iq~q\ : std_logic;
SIGNAL \inst21|5~0_combout\ : std_logic;
SIGNAL \inst1|iq~q\ : std_logic;
SIGNAL \inst22|5~0_combout\ : std_logic;
SIGNAL \inst2|iq~q\ : std_logic;
SIGNAL \inst23|5~0_combout\ : std_logic;
SIGNAL \inst3|iq~q\ : std_logic;
SIGNAL \inst24|5~0_combout\ : std_logic;
SIGNAL \inst5|iq~q\ : std_logic;
SIGNAL \inst25|5~0_combout\ : std_logic;
SIGNAL \inst6|iq~q\ : std_logic;
SIGNAL \inst26|5~0_combout\ : std_logic;
SIGNAL \inst7|iq~q\ : std_logic;
SIGNAL \inst27|5~0_combout\ : std_logic;
SIGNAL \inst8|iq~q\ : std_logic;
SIGNAL \inst32|iq~feeder_combout\ : std_logic;
SIGNAL \inst32|iq~q\ : std_logic;
SIGNAL \inst31|iq~feeder_combout\ : std_logic;
SIGNAL \inst31|iq~q\ : std_logic;
SIGNAL \inst30|iq~feeder_combout\ : std_logic;
SIGNAL \inst30|iq~q\ : std_logic;
SIGNAL \inst29|iq~feeder_combout\ : std_logic;
SIGNAL \inst29|iq~q\ : std_logic;
SIGNAL \inst28|iq~feeder_combout\ : std_logic;
SIGNAL \inst28|iq~q\ : std_logic;
SIGNAL \inst19|iq~feeder_combout\ : std_logic;
SIGNAL \inst19|iq~q\ : std_logic;
SIGNAL \inst18|iq~feeder_combout\ : std_logic;
SIGNAL \inst18|iq~q\ : std_logic;
SIGNAL \inst9|iq~feeder_combout\ : std_logic;
SIGNAL \inst9|iq~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

U7 <= ww_U7;
ww_clk <= clk;
ww_M <= M;
ww_SIN <= SIN;
ww_A7 <= A7;
ww_A6 <= A6;
ww_A5 <= A5;
ww_A4 <= A4;
ww_A3 <= A3;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
U6 <= ww_U6;
U5 <= ww_U5;
U4 <= ww_U4;
U3 <= ww_U3;
U2 <= ww_U2;
U1 <= ww_U1;
U0 <= ww_U0;
Sout <= ww_Sout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y15_N9
\U7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|iq~q\,
	devoe => ww_devoe,
	o => \U7~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\U6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|iq~q\,
	devoe => ww_devoe,
	o => \U6~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\U5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|iq~q\,
	devoe => ww_devoe,
	o => \U5~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\U4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|iq~q\,
	devoe => ww_devoe,
	o => \U4~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\U3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|iq~q\,
	devoe => ww_devoe,
	o => \U3~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\U2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|iq~q\,
	devoe => ww_devoe,
	o => \U2~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\U1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|iq~q\,
	devoe => ww_devoe,
	o => \U1~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\U0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|iq~q\,
	devoe => ww_devoe,
	o => \U0~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\Sout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|iq~q\,
	devoe => ww_devoe,
	o => \Sout~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X53_Y17_N8
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\A3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\A4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\A5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A5,
	o => \A5~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\A6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A6,
	o => \A6~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\SIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIN,
	o => \SIN~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\A7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A7,
	o => \A7~input_o\);

-- Location: LCCOMB_X52_Y13_N18
\inst20|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|5~0_combout\ = (\M~input_o\ & ((\A7~input_o\))) # (!\M~input_o\ & (\SIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN~input_o\,
	datac => \A7~input_o\,
	datad => \M~input_o\,
	combout => \inst20|5~0_combout\);

-- Location: FF_X52_Y13_N19
\inst|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|iq~q\);

-- Location: LCCOMB_X52_Y13_N28
\inst21|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|5~0_combout\ = (\M~input_o\ & (\A6~input_o\)) # (!\M~input_o\ & ((\inst|iq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \A6~input_o\,
	datad => \inst|iq~q\,
	combout => \inst21|5~0_combout\);

-- Location: FF_X52_Y13_N29
\inst1|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst21|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iq~q\);

-- Location: LCCOMB_X52_Y13_N22
\inst22|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|5~0_combout\ = (\M~input_o\ & (\A5~input_o\)) # (!\M~input_o\ & ((\inst1|iq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \A5~input_o\,
	datad => \inst1|iq~q\,
	combout => \inst22|5~0_combout\);

-- Location: FF_X52_Y13_N23
\inst2|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|iq~q\);

-- Location: LCCOMB_X52_Y13_N20
\inst23|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|5~0_combout\ = (\M~input_o\ & (\A4~input_o\)) # (!\M~input_o\ & ((\inst2|iq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4~input_o\,
	datab => \M~input_o\,
	datac => \inst2|iq~q\,
	combout => \inst23|5~0_combout\);

-- Location: FF_X52_Y13_N21
\inst3|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst23|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|iq~q\);

-- Location: LCCOMB_X52_Y13_N10
\inst24|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|5~0_combout\ = (\M~input_o\ & (\A3~input_o\)) # (!\M~input_o\ & ((\inst3|iq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \A3~input_o\,
	datad => \inst3|iq~q\,
	combout => \inst24|5~0_combout\);

-- Location: FF_X52_Y13_N11
\inst5|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst24|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|iq~q\);

-- Location: LCCOMB_X52_Y13_N12
\inst25|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|5~0_combout\ = (\M~input_o\ & (\A2~input_o\)) # (!\M~input_o\ & ((\inst5|iq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \A2~input_o\,
	datad => \inst5|iq~q\,
	combout => \inst25|5~0_combout\);

-- Location: FF_X52_Y13_N13
\inst6|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst25|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|iq~q\);

-- Location: LCCOMB_X52_Y13_N2
\inst26|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|5~0_combout\ = (\M~input_o\ & (\A1~input_o\)) # (!\M~input_o\ & ((\inst6|iq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \A1~input_o\,
	datad => \inst6|iq~q\,
	combout => \inst26|5~0_combout\);

-- Location: FF_X52_Y13_N3
\inst7|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst26|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|iq~q\);

-- Location: LCCOMB_X52_Y13_N4
\inst27|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|5~0_combout\ = (\M~input_o\ & (\A0~input_o\)) # (!\M~input_o\ & ((\inst7|iq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \M~input_o\,
	datad => \inst7|iq~q\,
	combout => \inst27|5~0_combout\);

-- Location: FF_X52_Y13_N5
\inst8|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst27|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|iq~q\);

-- Location: LCCOMB_X52_Y13_N24
\inst32|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|iq~feeder_combout\ = \inst8|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|iq~q\,
	combout => \inst32|iq~feeder_combout\);

-- Location: FF_X52_Y13_N25
\inst32|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst32|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|iq~q\);

-- Location: LCCOMB_X52_Y13_N6
\inst31|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|iq~feeder_combout\ = \inst32|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst32|iq~q\,
	combout => \inst31|iq~feeder_combout\);

-- Location: FF_X52_Y13_N7
\inst31|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst31|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|iq~q\);

-- Location: LCCOMB_X52_Y13_N8
\inst30|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|iq~feeder_combout\ = \inst31|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|iq~q\,
	combout => \inst30|iq~feeder_combout\);

-- Location: FF_X52_Y13_N9
\inst30|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst30|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|iq~q\);

-- Location: LCCOMB_X52_Y13_N30
\inst29|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|iq~feeder_combout\ = \inst30|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|iq~q\,
	combout => \inst29|iq~feeder_combout\);

-- Location: FF_X52_Y13_N31
\inst29|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst29|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|iq~q\);

-- Location: LCCOMB_X52_Y13_N0
\inst28|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|iq~feeder_combout\ = \inst29|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|iq~q\,
	combout => \inst28|iq~feeder_combout\);

-- Location: FF_X52_Y13_N1
\inst28|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst28|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|iq~q\);

-- Location: LCCOMB_X52_Y13_N26
\inst19|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|iq~feeder_combout\ = \inst28|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|iq~q\,
	combout => \inst19|iq~feeder_combout\);

-- Location: FF_X52_Y13_N27
\inst19|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|iq~q\);

-- Location: LCCOMB_X52_Y13_N16
\inst18|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|iq~feeder_combout\ = \inst19|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|iq~q\,
	combout => \inst18|iq~feeder_combout\);

-- Location: FF_X52_Y13_N17
\inst18|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|iq~q\);

-- Location: LCCOMB_X52_Y13_N14
\inst9|iq~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|iq~feeder_combout\ = \inst18|iq~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|iq~q\,
	combout => \inst9|iq~feeder_combout\);

-- Location: FF_X52_Y13_N15
\inst9|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|iq~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|iq~q\);

ww_U7 <= \U7~output_o\;

ww_U6 <= \U6~output_o\;

ww_U5 <= \U5~output_o\;

ww_U4 <= \U4~output_o\;

ww_U3 <= \U3~output_o\;

ww_U2 <= \U2~output_o\;

ww_U1 <= \U1~output_o\;

ww_U0 <= \U0~output_o\;

ww_Sout <= \Sout~output_o\;
END structure;


