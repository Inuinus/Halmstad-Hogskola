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
-- Generated on "03/07/2022 13:38:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          uppgift3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY uppgift3_vhd_vec_tst IS
END uppgift3_vhd_vec_tst;
ARCHITECTURE uppgift3_arch OF uppgift3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL clk3 : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL L : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT uppgift3
	PORT (
	A : OUT STD_LOGIC;
	clk3 : IN STD_LOGIC;
	K : IN STD_LOGIC;
	L : OUT STD_LOGIC;
	R : OUT STD_LOGIC;
	X : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : uppgift3
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	clk3 => clk3,
	K => K,
	L => L,
	R => R,
	X => X
	);

-- clk3
t_prcs_clk3: PROCESS
BEGIN
LOOP
	clk3 <= '0';
	WAIT FOR 5000000 ps;
	clk3 <= '1';
	WAIT FOR 5000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk3;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '0';
	WAIT FOR 84000000 ps;
	K <= '1';
	WAIT FOR 6000000 ps;
	K <= '0';
WAIT;
END PROCESS t_prcs_K;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
	WAIT FOR 14000000 ps;
	X <= '1';
	WAIT FOR 6000000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;
END uppgift3_arch;
