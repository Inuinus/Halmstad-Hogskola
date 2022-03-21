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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/09/2021 15:03:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Block6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Block6_vhd_vec_tst IS
END Block6_vhd_vec_tst;
ARCHITECTURE Block6_arch OF Block6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_out : STD_LOGIC;
SIGNAL CLK50M : STD_LOGIC;
SIGNAL clk_163 : STD_LOGIC;
SIGNAL jk0 : STD_LOGIC;
SIGNAL jk1 : STD_LOGIC;
SIGNAL Klar : STD_LOGIC;
SIGNAL Ladda : STD_LOGIC;
SIGNAL Rakna : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
SIGNAL SW_CLK : STD_LOGIC;
COMPONENT Block6
	PORT (
	A_out : OUT STD_LOGIC;
	CLK50M : IN STD_LOGIC;
	clk_163 : OUT STD_LOGIC;
	jk0 : OUT STD_LOGIC;
	jk1 : OUT STD_LOGIC;
	Klar : IN STD_LOGIC;
	Ladda : OUT STD_LOGIC;
	Rakna : OUT STD_LOGIC;
	Start : IN STD_LOGIC;
	SW_CLK : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Block6
	PORT MAP (
-- list connections between master ports and signals
	A_out => A_out,
	CLK50M => CLK50M,
	clk_163 => clk_163,
	jk0 => jk0,
	jk1 => jk1,
	Klar => Klar,
	Ladda => Ladda,
	Rakna => Rakna,
	Start => Start,
	SW_CLK => SW_CLK
	);

-- CLK50M
t_prcs_CLK50M: PROCESS
BEGIN
LOOP
	CLK50M <= '0';
	WAIT FOR 10000 ps;
	CLK50M <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK50M;

-- Klar
t_prcs_Klar: PROCESS
BEGIN
	Klar <= '0';
WAIT;
END PROCESS t_prcs_Klar;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;

-- SW_CLK
t_prcs_SW_CLK: PROCESS
BEGIN
	SW_CLK <= '0';
WAIT;
END PROCESS t_prcs_SW_CLK;
END Block6_arch;
