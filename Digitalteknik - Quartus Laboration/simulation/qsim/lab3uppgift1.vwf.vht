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
-- Generated on "02/28/2022 16:01:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab3uppgift1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab3uppgift1_vhd_vec_tst IS
END lab3uppgift1_vhd_vec_tst;
ARCHITECTURE lab3uppgift1_arch OF lab3uppgift1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL L : STD_LOGIC;
SIGNAL P : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL QA : STD_LOGIC;
SIGNAL QB : STD_LOGIC;
SIGNAL QC : STD_LOGIC;
SIGNAL QD : STD_LOGIC;
SIGNAL RCO : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT lab3uppgift1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	CLR : IN STD_LOGIC;
	D : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	L : IN STD_LOGIC;
	P : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	QA : OUT STD_LOGIC;
	QB : OUT STD_LOGIC;
	QC : OUT STD_LOGIC;
	QD : OUT STD_LOGIC;
	RCO : OUT STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab3uppgift1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	CLK => CLK,
	CLR => CLR,
	D => D,
	J => J,
	K => K,
	L => L,
	P => P,
	Q => Q,
	QA => QA,
	QB => QB,
	QC => QC,
	QD => QD,
	RCO => RCO,
	T => T
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 4000000 ps;
	C <= '1';
	WAIT FOR 14000000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 14000000 ps;
	CLK <= '0';
	WAIT FOR 2000000 ps;
	CLK <= '1';
	WAIT FOR 2000000 ps;
	FOR i IN 1 TO 20
	LOOP
		CLK <= '0';
		WAIT FOR 2000000 ps;
		CLK <= '1';
		WAIT FOR 2000000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- CLR
t_prcs_CLR: PROCESS
BEGIN
	CLR <= '1';
	WAIT FOR 14000000 ps;
	CLR <= '0';
	WAIT FOR 4000000 ps;
	CLR <= '1';
WAIT;
END PROCESS t_prcs_CLR;

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '0';
WAIT;
END PROCESS t_prcs_D;

-- J
t_prcs_J: PROCESS
BEGIN
	J <= '0';
	WAIT FOR 4000000 ps;
	J <= '1';
	WAIT FOR 14000000 ps;
	J <= '0';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '0';
WAIT;
END PROCESS t_prcs_K;

-- L
t_prcs_L: PROCESS
BEGIN
	L <= '1';
	WAIT FOR 18000000 ps;
	L <= '0';
	WAIT FOR 4000000 ps;
	L <= '1';
WAIT;
END PROCESS t_prcs_L;

-- P
t_prcs_P: PROCESS
BEGIN
	P <= '0';
	WAIT FOR 22000000 ps;
	P <= '1';
	WAIT FOR 38000000 ps;
	P <= '0';
WAIT;
END PROCESS t_prcs_P;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '0';
	WAIT FOR 24000000 ps;
	T <= '1';
	WAIT FOR 28000000 ps;
	T <= '0';
WAIT;
END PROCESS t_prcs_T;
END lab3uppgift1_arch;
