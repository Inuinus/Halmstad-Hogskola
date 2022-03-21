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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/09/2022 16:06:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          uppgift2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY uppgift2_vhd_vec_tst IS
END uppgift2_vhd_vec_tst;
ARCHITECTURE uppgift2_arch OF uppgift2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL A4 : STD_LOGIC;
SIGNAL A5 : STD_LOGIC;
SIGNAL A6 : STD_LOGIC;
SIGNAL A7 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL M : STD_LOGIC;
SIGNAL SIN : STD_LOGIC;
SIGNAL Sout : STD_LOGIC;
SIGNAL U0 : STD_LOGIC;
SIGNAL U1 : STD_LOGIC;
SIGNAL U2 : STD_LOGIC;
SIGNAL U3 : STD_LOGIC;
SIGNAL U4 : STD_LOGIC;
SIGNAL U5 : STD_LOGIC;
SIGNAL U6 : STD_LOGIC;
SIGNAL U7 : STD_LOGIC;
COMPONENT uppgift2
	PORT (
	A0 : IN STD_LOGIC;
	A1 : IN STD_LOGIC;
	A2 : IN STD_LOGIC;
	A3 : IN STD_LOGIC;
	A4 : IN STD_LOGIC;
	A5 : IN STD_LOGIC;
	A6 : IN STD_LOGIC;
	A7 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	M : IN STD_LOGIC;
	SIN : IN STD_LOGIC;
	Sout : OUT STD_LOGIC;
	U0 : OUT STD_LOGIC;
	U1 : OUT STD_LOGIC;
	U2 : OUT STD_LOGIC;
	U3 : OUT STD_LOGIC;
	U4 : OUT STD_LOGIC;
	U5 : OUT STD_LOGIC;
	U6 : OUT STD_LOGIC;
	U7 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : uppgift2
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	A4 => A4,
	A5 => A5,
	A6 => A6,
	A7 => A7,
	clk => clk,
	M => M,
	SIN => SIN,
	Sout => Sout,
	U0 => U0,
	U1 => U1,
	U2 => U2,
	U3 => U3,
	U4 => U4,
	U5 => U5,
	U6 => U6,
	U7 => U7
	);

-- A0
t_prcs_A0: PROCESS
BEGIN
	A0 <= '0';
WAIT;
END PROCESS t_prcs_A0;

-- A1
t_prcs_A1: PROCESS
BEGIN
	A1 <= '1';
WAIT;
END PROCESS t_prcs_A1;

-- A2
t_prcs_A2: PROCESS
BEGIN
	A2 <= '1';
WAIT;
END PROCESS t_prcs_A2;

-- A3
t_prcs_A3: PROCESS
BEGIN
	A3 <= '0';
WAIT;
END PROCESS t_prcs_A3;

-- A4
t_prcs_A4: PROCESS
BEGIN
	A4 <= '1';
WAIT;
END PROCESS t_prcs_A4;

-- A5
t_prcs_A5: PROCESS
BEGIN
	A5 <= '1';
WAIT;
END PROCESS t_prcs_A5;

-- A6
t_prcs_A6: PROCESS
BEGIN
	A6 <= '0';
WAIT;
END PROCESS t_prcs_A6;

-- A7
t_prcs_A7: PROCESS
BEGIN
	A7 <= '0';
WAIT;
END PROCESS t_prcs_A7;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000000 ps;
	clk <= '1';
	WAIT FOR 5000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- M
t_prcs_M: PROCESS
BEGIN
	M <= '1';
	WAIT FOR 22000000 ps;
	M <= '0';
WAIT;
END PROCESS t_prcs_M;

-- SIN
t_prcs_SIN: PROCESS
BEGIN
	SIN <= '0';
WAIT;
END PROCESS t_prcs_SIN;
END uppgift2_arch;
