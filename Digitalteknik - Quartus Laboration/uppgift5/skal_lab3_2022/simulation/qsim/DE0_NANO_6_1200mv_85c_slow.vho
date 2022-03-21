-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "12/09/2021 14:57:35"

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
	Start : IN std_logic;
	Klar : IN std_logic;
	Rakna : OUT std_logic;
	A_out : OUT std_logic;
	clk_163 : OUT std_logic;
	jk1 : OUT std_logic;
	jk0 : OUT std_logic;
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
-- SW_CLK	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Start	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Klar	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK50M	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_Start : std_logic;
SIGNAL ww_Klar : std_logic;
SIGNAL ww_Rakna : std_logic;
SIGNAL ww_A_out : std_logic;
SIGNAL ww_clk_163 : std_logic;
SIGNAL ww_jk1 : std_logic;
SIGNAL ww_jk0 : std_logic;
SIGNAL ww_SW_CLK : std_logic;
SIGNAL \inst|clk_divider[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|clk_divider[0]~75_combout\ : std_logic;
SIGNAL \inst|clk_divider[1]~25_combout\ : std_logic;
SIGNAL \inst|clk_divider[1]~26\ : std_logic;
SIGNAL \inst|clk_divider[2]~27_combout\ : std_logic;
SIGNAL \inst|clk_divider[2]~28\ : std_logic;
SIGNAL \inst|clk_divider[3]~29_combout\ : std_logic;
SIGNAL \inst|clk_divider[3]~30\ : std_logic;
SIGNAL \inst|clk_divider[4]~31_combout\ : std_logic;
SIGNAL \inst|clk_divider[4]~32\ : std_logic;
SIGNAL \inst|clk_divider[5]~33_combout\ : std_logic;
SIGNAL \inst|clk_divider[5]~34\ : std_logic;
SIGNAL \inst|clk_divider[6]~35_combout\ : std_logic;
SIGNAL \inst|clk_divider[6]~36\ : std_logic;
SIGNAL \inst|clk_divider[7]~37_combout\ : std_logic;
SIGNAL \inst|clk_divider[7]~38\ : std_logic;
SIGNAL \inst|clk_divider[8]~39_combout\ : std_logic;
SIGNAL \inst|clk_divider[8]~40\ : std_logic;
SIGNAL \inst|clk_divider[9]~41_combout\ : std_logic;
SIGNAL \inst|clk_divider[9]~42\ : std_logic;
SIGNAL \inst|clk_divider[10]~43_combout\ : std_logic;
SIGNAL \inst|clk_divider[10]~44\ : std_logic;
SIGNAL \inst|clk_divider[11]~45_combout\ : std_logic;
SIGNAL \inst|clk_divider[11]~46\ : std_logic;
SIGNAL \inst|clk_divider[12]~47_combout\ : std_logic;
SIGNAL \inst|clk_divider[12]~48\ : std_logic;
SIGNAL \inst|clk_divider[13]~49_combout\ : std_logic;
SIGNAL \inst|clk_divider[13]~50\ : std_logic;
SIGNAL \inst|clk_divider[14]~51_combout\ : std_logic;
SIGNAL \inst|clk_divider[14]~52\ : std_logic;
SIGNAL \inst|clk_divider[15]~53_combout\ : std_logic;
SIGNAL \inst|clk_divider[15]~54\ : std_logic;
SIGNAL \inst|clk_divider[16]~55_combout\ : std_logic;
SIGNAL \inst|clk_divider[16]~56\ : std_logic;
SIGNAL \inst|clk_divider[17]~57_combout\ : std_logic;
SIGNAL \inst|clk_divider[17]~58\ : std_logic;
SIGNAL \inst|clk_divider[18]~59_combout\ : std_logic;
SIGNAL \inst|clk_divider[18]~60\ : std_logic;
SIGNAL \inst|clk_divider[19]~61_combout\ : std_logic;
SIGNAL \inst|clk_divider[19]~62\ : std_logic;
SIGNAL \inst|clk_divider[20]~63_combout\ : std_logic;
SIGNAL \inst|clk_divider[20]~64\ : std_logic;
SIGNAL \inst|clk_divider[21]~65_combout\ : std_logic;
SIGNAL \inst|clk_divider[21]~66\ : std_logic;
SIGNAL \inst|clk_divider[22]~67_combout\ : std_logic;
SIGNAL \inst|clk_divider[22]~68\ : std_logic;
SIGNAL \inst|clk_divider[23]~69_combout\ : std_logic;
SIGNAL \inst|clk_divider[23]~70\ : std_logic;
SIGNAL \inst|clk_divider[24]~71_combout\ : std_logic;
SIGNAL \inst|clk_divider[24]~72\ : std_logic;
SIGNAL \inst|clk_divider[25]~73_combout\ : std_logic;
SIGNAL \inst|clk_divider[25]~clkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \Klar~input_o\ : std_logic;
SIGNAL \JK_0~0_combout\ : std_logic;
SIGNAL \JK_0~q\ : std_logic;
SIGNAL \inst3|iq~0_combout\ : std_logic;
SIGNAL \inst3|iq~q\ : std_logic;
SIGNAL \inst31~combout\ : std_logic;
SIGNAL \inst30~combout\ : std_logic;
SIGNAL \inst|clk_divider\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_inst30~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Ladda <= ww_Ladda;
ww_CLK50M <= CLK50M;
ww_Start <= Start;
ww_Klar <= Klar;
Rakna <= ww_Rakna;
A_out <= ww_A_out;
clk_163 <= ww_clk_163;
jk1 <= ww_jk1;
jk0 <= ww_jk0;
ww_SW_CLK <= SW_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_divider[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_divider\(25));

\CLK50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK50M~input_o\);
\ALT_INV_inst30~combout\ <= NOT \inst30~combout\;
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
	i => \inst31~combout\,
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
	i => \inst30~combout\,
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
	i => \ALT_INV_inst30~combout\,
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
	i => \inst|clk_divider\(25),
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
	i => \JK_0~q\,
	devoe => ww_devoe,
	o => \jk0~output_o\);

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

-- Location: LCCOMB_X28_Y2_N4
\inst|clk_divider[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[0]~75_combout\ = !\inst|clk_divider\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_divider\(0),
	combout => \inst|clk_divider[0]~75_combout\);

-- Location: FF_X28_Y2_N5
\inst|clk_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(0));

-- Location: LCCOMB_X28_Y2_N8
\inst|clk_divider[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[1]~25_combout\ = (\inst|clk_divider\(0) & (\inst|clk_divider\(1) $ (VCC))) # (!\inst|clk_divider\(0) & (\inst|clk_divider\(1) & VCC))
-- \inst|clk_divider[1]~26\ = CARRY((\inst|clk_divider\(0) & \inst|clk_divider\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(0),
	datab => \inst|clk_divider\(1),
	datad => VCC,
	combout => \inst|clk_divider[1]~25_combout\,
	cout => \inst|clk_divider[1]~26\);

-- Location: FF_X28_Y2_N9
\inst|clk_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(1));

-- Location: LCCOMB_X28_Y2_N10
\inst|clk_divider[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[2]~27_combout\ = (\inst|clk_divider\(2) & (!\inst|clk_divider[1]~26\)) # (!\inst|clk_divider\(2) & ((\inst|clk_divider[1]~26\) # (GND)))
-- \inst|clk_divider[2]~28\ = CARRY((!\inst|clk_divider[1]~26\) # (!\inst|clk_divider\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(2),
	datad => VCC,
	cin => \inst|clk_divider[1]~26\,
	combout => \inst|clk_divider[2]~27_combout\,
	cout => \inst|clk_divider[2]~28\);

-- Location: FF_X28_Y2_N11
\inst|clk_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(2));

-- Location: LCCOMB_X28_Y2_N12
\inst|clk_divider[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[3]~29_combout\ = (\inst|clk_divider\(3) & (\inst|clk_divider[2]~28\ $ (GND))) # (!\inst|clk_divider\(3) & (!\inst|clk_divider[2]~28\ & VCC))
-- \inst|clk_divider[3]~30\ = CARRY((\inst|clk_divider\(3) & !\inst|clk_divider[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(3),
	datad => VCC,
	cin => \inst|clk_divider[2]~28\,
	combout => \inst|clk_divider[3]~29_combout\,
	cout => \inst|clk_divider[3]~30\);

-- Location: FF_X28_Y2_N13
\inst|clk_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(3));

-- Location: LCCOMB_X28_Y2_N14
\inst|clk_divider[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[4]~31_combout\ = (\inst|clk_divider\(4) & (!\inst|clk_divider[3]~30\)) # (!\inst|clk_divider\(4) & ((\inst|clk_divider[3]~30\) # (GND)))
-- \inst|clk_divider[4]~32\ = CARRY((!\inst|clk_divider[3]~30\) # (!\inst|clk_divider\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(4),
	datad => VCC,
	cin => \inst|clk_divider[3]~30\,
	combout => \inst|clk_divider[4]~31_combout\,
	cout => \inst|clk_divider[4]~32\);

-- Location: FF_X28_Y2_N15
\inst|clk_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(4));

-- Location: LCCOMB_X28_Y2_N16
\inst|clk_divider[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[5]~33_combout\ = (\inst|clk_divider\(5) & (\inst|clk_divider[4]~32\ $ (GND))) # (!\inst|clk_divider\(5) & (!\inst|clk_divider[4]~32\ & VCC))
-- \inst|clk_divider[5]~34\ = CARRY((\inst|clk_divider\(5) & !\inst|clk_divider[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(5),
	datad => VCC,
	cin => \inst|clk_divider[4]~32\,
	combout => \inst|clk_divider[5]~33_combout\,
	cout => \inst|clk_divider[5]~34\);

-- Location: FF_X28_Y2_N17
\inst|clk_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(5));

-- Location: LCCOMB_X28_Y2_N18
\inst|clk_divider[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[6]~35_combout\ = (\inst|clk_divider\(6) & (!\inst|clk_divider[5]~34\)) # (!\inst|clk_divider\(6) & ((\inst|clk_divider[5]~34\) # (GND)))
-- \inst|clk_divider[6]~36\ = CARRY((!\inst|clk_divider[5]~34\) # (!\inst|clk_divider\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(6),
	datad => VCC,
	cin => \inst|clk_divider[5]~34\,
	combout => \inst|clk_divider[6]~35_combout\,
	cout => \inst|clk_divider[6]~36\);

-- Location: FF_X28_Y2_N19
\inst|clk_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(6));

-- Location: LCCOMB_X28_Y2_N20
\inst|clk_divider[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[7]~37_combout\ = (\inst|clk_divider\(7) & (\inst|clk_divider[6]~36\ $ (GND))) # (!\inst|clk_divider\(7) & (!\inst|clk_divider[6]~36\ & VCC))
-- \inst|clk_divider[7]~38\ = CARRY((\inst|clk_divider\(7) & !\inst|clk_divider[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(7),
	datad => VCC,
	cin => \inst|clk_divider[6]~36\,
	combout => \inst|clk_divider[7]~37_combout\,
	cout => \inst|clk_divider[7]~38\);

-- Location: FF_X28_Y2_N21
\inst|clk_divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(7));

-- Location: LCCOMB_X28_Y2_N22
\inst|clk_divider[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[8]~39_combout\ = (\inst|clk_divider\(8) & (!\inst|clk_divider[7]~38\)) # (!\inst|clk_divider\(8) & ((\inst|clk_divider[7]~38\) # (GND)))
-- \inst|clk_divider[8]~40\ = CARRY((!\inst|clk_divider[7]~38\) # (!\inst|clk_divider\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(8),
	datad => VCC,
	cin => \inst|clk_divider[7]~38\,
	combout => \inst|clk_divider[8]~39_combout\,
	cout => \inst|clk_divider[8]~40\);

-- Location: FF_X28_Y2_N23
\inst|clk_divider[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(8));

-- Location: LCCOMB_X28_Y2_N24
\inst|clk_divider[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[9]~41_combout\ = (\inst|clk_divider\(9) & (\inst|clk_divider[8]~40\ $ (GND))) # (!\inst|clk_divider\(9) & (!\inst|clk_divider[8]~40\ & VCC))
-- \inst|clk_divider[9]~42\ = CARRY((\inst|clk_divider\(9) & !\inst|clk_divider[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(9),
	datad => VCC,
	cin => \inst|clk_divider[8]~40\,
	combout => \inst|clk_divider[9]~41_combout\,
	cout => \inst|clk_divider[9]~42\);

-- Location: FF_X28_Y2_N25
\inst|clk_divider[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(9));

-- Location: LCCOMB_X28_Y2_N26
\inst|clk_divider[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[10]~43_combout\ = (\inst|clk_divider\(10) & (!\inst|clk_divider[9]~42\)) # (!\inst|clk_divider\(10) & ((\inst|clk_divider[9]~42\) # (GND)))
-- \inst|clk_divider[10]~44\ = CARRY((!\inst|clk_divider[9]~42\) # (!\inst|clk_divider\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(10),
	datad => VCC,
	cin => \inst|clk_divider[9]~42\,
	combout => \inst|clk_divider[10]~43_combout\,
	cout => \inst|clk_divider[10]~44\);

-- Location: FF_X28_Y2_N27
\inst|clk_divider[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(10));

-- Location: LCCOMB_X28_Y2_N28
\inst|clk_divider[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[11]~45_combout\ = (\inst|clk_divider\(11) & (\inst|clk_divider[10]~44\ $ (GND))) # (!\inst|clk_divider\(11) & (!\inst|clk_divider[10]~44\ & VCC))
-- \inst|clk_divider[11]~46\ = CARRY((\inst|clk_divider\(11) & !\inst|clk_divider[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(11),
	datad => VCC,
	cin => \inst|clk_divider[10]~44\,
	combout => \inst|clk_divider[11]~45_combout\,
	cout => \inst|clk_divider[11]~46\);

-- Location: FF_X28_Y2_N29
\inst|clk_divider[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(11));

-- Location: LCCOMB_X28_Y2_N30
\inst|clk_divider[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[12]~47_combout\ = (\inst|clk_divider\(12) & (!\inst|clk_divider[11]~46\)) # (!\inst|clk_divider\(12) & ((\inst|clk_divider[11]~46\) # (GND)))
-- \inst|clk_divider[12]~48\ = CARRY((!\inst|clk_divider[11]~46\) # (!\inst|clk_divider\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(12),
	datad => VCC,
	cin => \inst|clk_divider[11]~46\,
	combout => \inst|clk_divider[12]~47_combout\,
	cout => \inst|clk_divider[12]~48\);

-- Location: FF_X28_Y2_N31
\inst|clk_divider[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(12));

-- Location: LCCOMB_X28_Y1_N0
\inst|clk_divider[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[13]~49_combout\ = (\inst|clk_divider\(13) & (\inst|clk_divider[12]~48\ $ (GND))) # (!\inst|clk_divider\(13) & (!\inst|clk_divider[12]~48\ & VCC))
-- \inst|clk_divider[13]~50\ = CARRY((\inst|clk_divider\(13) & !\inst|clk_divider[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(13),
	datad => VCC,
	cin => \inst|clk_divider[12]~48\,
	combout => \inst|clk_divider[13]~49_combout\,
	cout => \inst|clk_divider[13]~50\);

-- Location: FF_X28_Y1_N1
\inst|clk_divider[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(13));

-- Location: LCCOMB_X28_Y1_N2
\inst|clk_divider[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[14]~51_combout\ = (\inst|clk_divider\(14) & (!\inst|clk_divider[13]~50\)) # (!\inst|clk_divider\(14) & ((\inst|clk_divider[13]~50\) # (GND)))
-- \inst|clk_divider[14]~52\ = CARRY((!\inst|clk_divider[13]~50\) # (!\inst|clk_divider\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(14),
	datad => VCC,
	cin => \inst|clk_divider[13]~50\,
	combout => \inst|clk_divider[14]~51_combout\,
	cout => \inst|clk_divider[14]~52\);

-- Location: FF_X28_Y1_N3
\inst|clk_divider[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(14));

-- Location: LCCOMB_X28_Y1_N4
\inst|clk_divider[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[15]~53_combout\ = (\inst|clk_divider\(15) & (\inst|clk_divider[14]~52\ $ (GND))) # (!\inst|clk_divider\(15) & (!\inst|clk_divider[14]~52\ & VCC))
-- \inst|clk_divider[15]~54\ = CARRY((\inst|clk_divider\(15) & !\inst|clk_divider[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(15),
	datad => VCC,
	cin => \inst|clk_divider[14]~52\,
	combout => \inst|clk_divider[15]~53_combout\,
	cout => \inst|clk_divider[15]~54\);

-- Location: FF_X28_Y1_N5
\inst|clk_divider[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(15));

-- Location: LCCOMB_X28_Y1_N6
\inst|clk_divider[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[16]~55_combout\ = (\inst|clk_divider\(16) & (!\inst|clk_divider[15]~54\)) # (!\inst|clk_divider\(16) & ((\inst|clk_divider[15]~54\) # (GND)))
-- \inst|clk_divider[16]~56\ = CARRY((!\inst|clk_divider[15]~54\) # (!\inst|clk_divider\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(16),
	datad => VCC,
	cin => \inst|clk_divider[15]~54\,
	combout => \inst|clk_divider[16]~55_combout\,
	cout => \inst|clk_divider[16]~56\);

-- Location: FF_X28_Y1_N7
\inst|clk_divider[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(16));

-- Location: LCCOMB_X28_Y1_N8
\inst|clk_divider[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[17]~57_combout\ = (\inst|clk_divider\(17) & (\inst|clk_divider[16]~56\ $ (GND))) # (!\inst|clk_divider\(17) & (!\inst|clk_divider[16]~56\ & VCC))
-- \inst|clk_divider[17]~58\ = CARRY((\inst|clk_divider\(17) & !\inst|clk_divider[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(17),
	datad => VCC,
	cin => \inst|clk_divider[16]~56\,
	combout => \inst|clk_divider[17]~57_combout\,
	cout => \inst|clk_divider[17]~58\);

-- Location: FF_X28_Y1_N9
\inst|clk_divider[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(17));

-- Location: LCCOMB_X28_Y1_N10
\inst|clk_divider[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[18]~59_combout\ = (\inst|clk_divider\(18) & (!\inst|clk_divider[17]~58\)) # (!\inst|clk_divider\(18) & ((\inst|clk_divider[17]~58\) # (GND)))
-- \inst|clk_divider[18]~60\ = CARRY((!\inst|clk_divider[17]~58\) # (!\inst|clk_divider\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(18),
	datad => VCC,
	cin => \inst|clk_divider[17]~58\,
	combout => \inst|clk_divider[18]~59_combout\,
	cout => \inst|clk_divider[18]~60\);

-- Location: FF_X28_Y1_N11
\inst|clk_divider[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(18));

-- Location: LCCOMB_X28_Y1_N12
\inst|clk_divider[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[19]~61_combout\ = (\inst|clk_divider\(19) & (\inst|clk_divider[18]~60\ $ (GND))) # (!\inst|clk_divider\(19) & (!\inst|clk_divider[18]~60\ & VCC))
-- \inst|clk_divider[19]~62\ = CARRY((\inst|clk_divider\(19) & !\inst|clk_divider[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(19),
	datad => VCC,
	cin => \inst|clk_divider[18]~60\,
	combout => \inst|clk_divider[19]~61_combout\,
	cout => \inst|clk_divider[19]~62\);

-- Location: FF_X28_Y1_N13
\inst|clk_divider[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(19));

-- Location: LCCOMB_X28_Y1_N14
\inst|clk_divider[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[20]~63_combout\ = (\inst|clk_divider\(20) & (!\inst|clk_divider[19]~62\)) # (!\inst|clk_divider\(20) & ((\inst|clk_divider[19]~62\) # (GND)))
-- \inst|clk_divider[20]~64\ = CARRY((!\inst|clk_divider[19]~62\) # (!\inst|clk_divider\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(20),
	datad => VCC,
	cin => \inst|clk_divider[19]~62\,
	combout => \inst|clk_divider[20]~63_combout\,
	cout => \inst|clk_divider[20]~64\);

-- Location: FF_X28_Y1_N15
\inst|clk_divider[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(20));

-- Location: LCCOMB_X28_Y1_N16
\inst|clk_divider[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[21]~65_combout\ = (\inst|clk_divider\(21) & (\inst|clk_divider[20]~64\ $ (GND))) # (!\inst|clk_divider\(21) & (!\inst|clk_divider[20]~64\ & VCC))
-- \inst|clk_divider[21]~66\ = CARRY((\inst|clk_divider\(21) & !\inst|clk_divider[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(21),
	datad => VCC,
	cin => \inst|clk_divider[20]~64\,
	combout => \inst|clk_divider[21]~65_combout\,
	cout => \inst|clk_divider[21]~66\);

-- Location: FF_X28_Y1_N17
\inst|clk_divider[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(21));

-- Location: LCCOMB_X28_Y1_N18
\inst|clk_divider[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[22]~67_combout\ = (\inst|clk_divider\(22) & (!\inst|clk_divider[21]~66\)) # (!\inst|clk_divider\(22) & ((\inst|clk_divider[21]~66\) # (GND)))
-- \inst|clk_divider[22]~68\ = CARRY((!\inst|clk_divider[21]~66\) # (!\inst|clk_divider\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(22),
	datad => VCC,
	cin => \inst|clk_divider[21]~66\,
	combout => \inst|clk_divider[22]~67_combout\,
	cout => \inst|clk_divider[22]~68\);

-- Location: FF_X28_Y1_N19
\inst|clk_divider[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(22));

-- Location: LCCOMB_X28_Y1_N20
\inst|clk_divider[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[23]~69_combout\ = (\inst|clk_divider\(23) & (\inst|clk_divider[22]~68\ $ (GND))) # (!\inst|clk_divider\(23) & (!\inst|clk_divider[22]~68\ & VCC))
-- \inst|clk_divider[23]~70\ = CARRY((\inst|clk_divider\(23) & !\inst|clk_divider[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(23),
	datad => VCC,
	cin => \inst|clk_divider[22]~68\,
	combout => \inst|clk_divider[23]~69_combout\,
	cout => \inst|clk_divider[23]~70\);

-- Location: FF_X28_Y1_N21
\inst|clk_divider[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(23));

-- Location: LCCOMB_X28_Y1_N22
\inst|clk_divider[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[24]~71_combout\ = (\inst|clk_divider\(24) & (!\inst|clk_divider[23]~70\)) # (!\inst|clk_divider\(24) & ((\inst|clk_divider[23]~70\) # (GND)))
-- \inst|clk_divider[24]~72\ = CARRY((!\inst|clk_divider[23]~70\) # (!\inst|clk_divider\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider\(24),
	datad => VCC,
	cin => \inst|clk_divider[23]~70\,
	combout => \inst|clk_divider[24]~71_combout\,
	cout => \inst|clk_divider[24]~72\);

-- Location: FF_X28_Y1_N23
\inst|clk_divider[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(24));

-- Location: LCCOMB_X28_Y1_N24
\inst|clk_divider[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider[25]~73_combout\ = \inst|clk_divider\(25) $ (!\inst|clk_divider[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider\(25),
	cin => \inst|clk_divider[24]~72\,
	combout => \inst|clk_divider[25]~73_combout\);

-- Location: FF_X28_Y1_N25
\inst|clk_divider[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50M~inputclkctrl_outclk\,
	d => \inst|clk_divider[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider\(25));

-- Location: CLKCTRL_G15
\inst|clk_divider[25]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_divider[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_divider[25]~clkctrl_outclk\);

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

-- Location: LCCOMB_X52_Y6_N18
\JK_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK_0~0_combout\ = (\JK_0~q\ & (((!\inst3|iq~q\)))) # (!\JK_0~q\ & ((\inst3|iq~q\ & ((!\Klar~input_o\))) # (!\inst3|iq~q\ & (\Start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \Klar~input_o\,
	datac => \JK_0~q\,
	datad => \inst3|iq~q\,
	combout => \JK_0~0_combout\);

-- Location: FF_X52_Y6_N19
JK_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[25]~clkctrl_outclk\,
	d => \JK_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK_0~q\);

-- Location: LCCOMB_X52_Y6_N16
\inst3|iq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|iq~0_combout\ = (\inst3|iq~q\ & (((\JK_0~q\) # (!\Klar~input_o\)))) # (!\inst3|iq~q\ & (!\Start~input_o\ & ((\JK_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \Klar~input_o\,
	datac => \inst3|iq~q\,
	datad => \JK_0~q\,
	combout => \inst3|iq~0_combout\);

-- Location: FF_X52_Y6_N17
\inst3|iq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider[25]~clkctrl_outclk\,
	d => \inst3|iq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|iq~q\);

-- Location: LCCOMB_X52_Y6_N4
inst31 : cycloneive_lcell_comb
-- Equation(s):
-- \inst31~combout\ = (\inst3|iq~q\) # (!\JK_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|iq~q\,
	datad => \JK_0~q\,
	combout => \inst31~combout\);

-- Location: LCCOMB_X52_Y6_N2
inst30 : cycloneive_lcell_comb
-- Equation(s):
-- \inst30~combout\ = (\inst3|iq~q\ & \JK_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|iq~q\,
	datad => \JK_0~q\,
	combout => \inst30~combout\);

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
END structure;


