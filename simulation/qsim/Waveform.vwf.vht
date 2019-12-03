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
-- Generated on "12/02/2019 19:24:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PC_vhd_vec_tst IS
END PC_vhd_vec_tst;
ARCHITECTURE PC_arch OF PC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL inputPC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT PC
	PORT (
	clock : IN STD_LOGIC;
	inputPC : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PC
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	inputPC => inputPC,
	output => output
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 100000 ps;
	clock <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- inputPC[7]
t_prcs_inputPC_7: PROCESS
BEGIN
	inputPC(7) <= '0';
WAIT;
END PROCESS t_prcs_inputPC_7;
-- inputPC[6]
t_prcs_inputPC_6: PROCESS
BEGIN
	inputPC(6) <= '0';
WAIT;
END PROCESS t_prcs_inputPC_6;
-- inputPC[5]
t_prcs_inputPC_5: PROCESS
BEGIN
	inputPC(5) <= '0';
WAIT;
END PROCESS t_prcs_inputPC_5;
-- inputPC[4]
t_prcs_inputPC_4: PROCESS
BEGIN
	inputPC(4) <= '0';
WAIT;
END PROCESS t_prcs_inputPC_4;
-- inputPC[3]
t_prcs_inputPC_3: PROCESS
BEGIN
	inputPC(3) <= '0';
	WAIT FOR 800000 ps;
	inputPC(3) <= '1';
WAIT;
END PROCESS t_prcs_inputPC_3;
-- inputPC[2]
t_prcs_inputPC_2: PROCESS
BEGIN
	inputPC(2) <= '0';
	WAIT FOR 400000 ps;
	inputPC(2) <= '1';
	WAIT FOR 400000 ps;
	inputPC(2) <= '0';
WAIT;
END PROCESS t_prcs_inputPC_2;
-- inputPC[1]
t_prcs_inputPC_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		inputPC(1) <= '0';
		WAIT FOR 200000 ps;
		inputPC(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	inputPC(1) <= '0';
WAIT;
END PROCESS t_prcs_inputPC_1;
-- inputPC[0]
t_prcs_inputPC_0: PROCESS
BEGIN
LOOP
	inputPC(0) <= '0';
	WAIT FOR 100000 ps;
	inputPC(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_inputPC_0;
END PC_arch;
