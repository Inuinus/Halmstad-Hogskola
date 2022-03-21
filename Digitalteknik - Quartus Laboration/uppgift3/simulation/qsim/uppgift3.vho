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

-- DATE "03/07/2022 13:38:40"

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

ENTITY 	uppgift3 IS
    PORT (
	A : OUT std_logic;
	clk3 : IN std_logic;
	K : IN std_logic;
	X : IN std_logic;
	L : OUT std_logic;
	R : OUT std_logic
	);
END uppgift3;

-- Design Ports Information
-- A	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk3	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uppgift3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_clk3 : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \clk3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~output_o\ : std_logic;
SIGNAL \L~output_o\ : std_logic;
SIGNAL \R~output_o\ : std_logic;
SIGNAL \clk3~input_o\ : std_logic;
SIGNAL \clk3~inputclkctrl_outclk\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst2|iq~0_combout\ : std_logic;
SIGNAL \inst2|iq~q\ : std_logic;
SIGNAL \inst|iq~2_combout\ : std_logic;
SIGNAL \inst|iq~q\ : std_logic;
SIGNAL \inst|iq~0_combout\ : std_logic;
SIGNAL \inst|iq~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_iq~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_iq~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_clk3 <= clk3;
ww_K <= K;
ww_X <= X;
L <= ww_L;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk3~input_o\);
\inst|ALT_INV_iq~1_combout\ <= NOT \inst|iq~1_combout\;
\inst|ALT_INV_iq~0_combout\ <= NOT \inst|iq~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y9_N16
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_iq~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\L~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_iq~1_combout\,
	devoe => ww_devoe,
	o => \L~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\R~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|iq~0_combout\,
	devoe => ww_devoe,
	o => \R~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk3,
	o => \clk3~input_o\);

-- Location: CLKCTRL_G2
\clk3~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk3~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk3~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y7_N8
\K~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X52_Y6_N28
\inst2|iq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|iq~0_combout\ = (\inst2|iq~q\ & (((!\inst|iq~q\)))) # (!\inst2|iq~q\ & ((\inst|iq~q\ & (!\K~input_o\)) # (!\inst|iq~q\ & ((\X~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datab => \X~input_o\,
	datac => \inst2|iq~q\,
	datad => \inst|iq~q\,
	combout => \inst2|iq~0_combout\);

-- Location: FF_X52_Y6_N29
\inst2|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk3~inputclkctrl_outclk\,
	d => \inst2|iq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|iq~q\);

-- Location: LCCOMB_X52_Y6_N18
\inst|iq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|iq~2_combout\ = (\inst|iq~q\ & (((\inst2|iq~q\)) # (!\K~input_o\))) # (!\inst|iq~q\ & (((!\X~input_o\ & \inst2|iq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datab => \X~input_o\,
	datac => \inst|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst|iq~2_combout\);

-- Location: FF_X52_Y6_N19
\inst|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk3~inputclkctrl_outclk\,
	d => \inst|iq~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|iq~q\);

-- Location: LCCOMB_X52_Y6_N4
\inst|iq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|iq~0_combout\ = (\inst|iq~q\ & \inst2|iq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst|iq~0_combout\);

-- Location: LCCOMB_X52_Y6_N6
\inst|iq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|iq~1_combout\ = (!\inst|iq~q\ & \inst2|iq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|iq~q\,
	datad => \inst2|iq~q\,
	combout => \inst|iq~1_combout\);

ww_A <= \A~output_o\;

ww_L <= \L~output_o\;

ww_R <= \R~output_o\;
END structure;


