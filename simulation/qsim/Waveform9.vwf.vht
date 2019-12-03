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
-- Generated on "12/02/2019 23:55:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ram8bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ram8bit_vhd_vec_tst IS
END ram8bit_vhd_vec_tst;
ARCHITECTURE ram8bit_arch OF ram8bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL datain : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ende : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL memtoread : STD_LOGIC;
SIGNAL memwrite : STD_LOGIC;
COMPONENT ram8bit
	PORT (
	clock : IN STD_LOGIC;
	datain : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ende : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	memtoread : IN STD_LOGIC;
	memwrite : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ram8bit
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	datain => datain,
	dataout => dataout,
	ende => ende,
	memtoread => memtoread,
	memwrite => memwrite
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
-- datain[7]
t_prcs_datain_7: PROCESS
BEGIN
	datain(7) <= '0';
WAIT;
END PROCESS t_prcs_datain_7;
-- datain[6]
t_prcs_datain_6: PROCESS
BEGIN
	datain(6) <= '0';
WAIT;
END PROCESS t_prcs_datain_6;
-- datain[5]
t_prcs_datain_5: PROCESS
BEGIN
	datain(5) <= '0';
WAIT;
END PROCESS t_prcs_datain_5;
-- datain[4]
t_prcs_datain_4: PROCESS
BEGIN
	datain(4) <= '0';
WAIT;
END PROCESS t_prcs_datain_4;
-- datain[3]
t_prcs_datain_3: PROCESS
BEGIN
	datain(3) <= '0';
	WAIT FOR 800000 ps;
	datain(3) <= '1';
WAIT;
END PROCESS t_prcs_datain_3;
-- datain[2]
t_prcs_datain_2: PROCESS
BEGIN
	datain(2) <= '0';
	WAIT FOR 400000 ps;
	datain(2) <= '1';
	WAIT FOR 400000 ps;
	datain(2) <= '0';
WAIT;
END PROCESS t_prcs_datain_2;
-- datain[1]
t_prcs_datain_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		datain(1) <= '0';
		WAIT FOR 200000 ps;
		datain(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	datain(1) <= '0';
WAIT;
END PROCESS t_prcs_datain_1;
-- datain[0]
t_prcs_datain_0: PROCESS
BEGIN
LOOP
	datain(0) <= '0';
	WAIT FOR 100000 ps;
	datain(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_datain_0;
-- ende[7]
t_prcs_ende_7: PROCESS
BEGIN
	ende(7) <= '0';
WAIT;
END PROCESS t_prcs_ende_7;
-- ende[6]
t_prcs_ende_6: PROCESS
BEGIN
	ende(6) <= '0';
WAIT;
END PROCESS t_prcs_ende_6;
-- ende[5]
t_prcs_ende_5: PROCESS
BEGIN
	ende(5) <= '0';
WAIT;
END PROCESS t_prcs_ende_5;
-- ende[4]
t_prcs_ende_4: PROCESS
BEGIN
	ende(4) <= '0';
WAIT;
END PROCESS t_prcs_ende_4;
-- ende[3]
t_prcs_ende_3: PROCESS
BEGIN
	ende(3) <= '0';
	WAIT FOR 800000 ps;
	ende(3) <= '1';
WAIT;
END PROCESS t_prcs_ende_3;
-- ende[2]
t_prcs_ende_2: PROCESS
BEGIN
	ende(2) <= '0';
	WAIT FOR 400000 ps;
	ende(2) <= '1';
	WAIT FOR 400000 ps;
	ende(2) <= '0';
WAIT;
END PROCESS t_prcs_ende_2;
-- ende[1]
t_prcs_ende_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ende(1) <= '0';
		WAIT FOR 200000 ps;
		ende(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	ende(1) <= '0';
WAIT;
END PROCESS t_prcs_ende_1;
-- ende[0]
t_prcs_ende_0: PROCESS
BEGIN
LOOP
	ende(0) <= '0';
	WAIT FOR 100000 ps;
	ende(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ende_0;

-- memtoread
t_prcs_memtoread: PROCESS
BEGIN
LOOP
	memtoread <= '0';
	WAIT FOR 100000 ps;
	memtoread <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_memtoread;

-- memwrite
t_prcs_memwrite: PROCESS
BEGIN
LOOP
	memwrite <= '0';
	WAIT FOR 100000 ps;
	memwrite <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_memwrite;
END ram8bit_arch;
