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
-- Generated on "12/02/2019 22:51:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Multip2x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Multip2x1_vhd_vec_tst IS
END Multip2x1_vhd_vec_tst;
ARCHITECTURE Multip2x1_arch OF Multip2x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entrada1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entrada2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL seletor : STD_LOGIC;
COMPONENT Multip2x1
	PORT (
	entrada1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	entrada2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	seletor : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Multip2x1
	PORT MAP (
-- list connections between master ports and signals
	entrada1 => entrada1,
	entrada2 => entrada2,
	saida => saida,
	seletor => seletor
	);
-- entrada1[7]
t_prcs_entrada1_7: PROCESS
BEGIN
	entrada1(7) <= '0';
WAIT;
END PROCESS t_prcs_entrada1_7;
-- entrada1[6]
t_prcs_entrada1_6: PROCESS
BEGIN
	entrada1(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada1_6;
-- entrada1[5]
t_prcs_entrada1_5: PROCESS
BEGIN
	entrada1(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada1_5;
-- entrada1[4]
t_prcs_entrada1_4: PROCESS
BEGIN
	entrada1(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada1_4;
-- entrada1[3]
t_prcs_entrada1_3: PROCESS
BEGIN
	entrada1(3) <= '0';
	WAIT FOR 800000 ps;
	entrada1(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada1_3;
-- entrada1[2]
t_prcs_entrada1_2: PROCESS
BEGIN
	entrada1(2) <= '0';
	WAIT FOR 400000 ps;
	entrada1(2) <= '1';
	WAIT FOR 400000 ps;
	entrada1(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada1_2;
-- entrada1[1]
t_prcs_entrada1_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		entrada1(1) <= '0';
		WAIT FOR 200000 ps;
		entrada1(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	entrada1(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada1_1;
-- entrada1[0]
t_prcs_entrada1_0: PROCESS
BEGIN
LOOP
	entrada1(0) <= '0';
	WAIT FOR 100000 ps;
	entrada1(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada1_0;
-- entrada2[7]
t_prcs_entrada2_7: PROCESS
BEGIN
	entrada2(7) <= '0';
WAIT;
END PROCESS t_prcs_entrada2_7;
-- entrada2[6]
t_prcs_entrada2_6: PROCESS
BEGIN
	entrada2(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada2_6;
-- entrada2[5]
t_prcs_entrada2_5: PROCESS
BEGIN
	entrada2(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada2_5;
-- entrada2[4]
t_prcs_entrada2_4: PROCESS
BEGIN
	entrada2(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada2_4;
-- entrada2[3]
t_prcs_entrada2_3: PROCESS
BEGIN
	entrada2(3) <= '0';
	WAIT FOR 800000 ps;
	entrada2(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada2_3;
-- entrada2[2]
t_prcs_entrada2_2: PROCESS
BEGIN
	entrada2(2) <= '0';
	WAIT FOR 400000 ps;
	entrada2(2) <= '1';
	WAIT FOR 400000 ps;
	entrada2(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada2_2;
-- entrada2[1]
t_prcs_entrada2_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		entrada2(1) <= '0';
		WAIT FOR 200000 ps;
		entrada2(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	entrada2(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada2_1;
-- entrada2[0]
t_prcs_entrada2_0: PROCESS
BEGIN
LOOP
	entrada2(0) <= '0';
	WAIT FOR 100000 ps;
	entrada2(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada2_0;

-- seletor
t_prcs_seletor: PROCESS
BEGIN
LOOP
	seletor <= '0';
	WAIT FOR 100000 ps;
	seletor <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_seletor;
END Multip2x1_arch;
