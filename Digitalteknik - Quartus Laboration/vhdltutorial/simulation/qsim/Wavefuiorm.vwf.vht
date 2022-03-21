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
-- Generated on "02/28/2022 16:43:31"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL j : STD_LOGIC;
SIGNAL k : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT first_test
	PORT (
	clk : IN STD_LOGIC;
	j : IN STD_LOGIC;
	k : IN STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : first_test
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	j => j,
	k => k,
	Q => Q
	);

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

-- j
t_prcs_j: PROCESS
BEGIN
	j <= '0';
	WAIT FOR 10000000 ps;
	j <= '1';
	WAIT FOR 6000000 ps;
	j <= '0';
	WAIT FOR 24000000 ps;
	j <= '1';
	WAIT FOR 6000000 ps;
	j <= '0';
WAIT;
END PROCESS t_prcs_j;

-- k
t_prcs_k: PROCESS
BEGIN
	k <= '0';
	WAIT FOR 20000000 ps;
	k <= '1';
	WAIT FOR 6000000 ps;
	k <= '0';
	WAIT FOR 14000000 ps;
	k <= '1';
	WAIT FOR 6000000 ps;
	k <= '0';
WAIT;
END PROCESS t_prcs_k;
END first_test_arch;
