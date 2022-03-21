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
-- Generated on "02/28/2022 14:54:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          first_test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY first_test_vhd_vec_tst IS
END first_test_vhd_vec_tst;
ARCHITECTURE first_test_arch OF first_test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
COMPONENT first_test
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : first_test
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 3000000 ps;
	A <= '1';
	WAIT FOR 3000000 ps;
	A <= '0';
	WAIT FOR 5000000 ps;
	A <= '1';
	WAIT FOR 3000000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 9000000 ps;
	B <= '1';
	WAIT FOR 5000000 ps;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;
END first_test_arch;
