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
-- Generated on "12/02/2019 22:07:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROMMemory
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROMMemory_vhd_vec_tst IS
END ROMMemory_vhd_vec_tst;
ARCHITECTURE ROMMemory_arch OF ROMMemory_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entrada : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ROMMemory
	PORT (
	entrada : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROMMemory
	PORT MAP (
-- list connections between master ports and signals
	entrada => entrada,
	saida => saida
	);
-- entrada[7]
t_prcs_entrada_7: PROCESS
BEGIN
	entrada(7) <= '0';
WAIT;
END PROCESS t_prcs_entrada_7;
-- entrada[6]
t_prcs_entrada_6: PROCESS
BEGIN
	entrada(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_6;
-- entrada[5]
t_prcs_entrada_5: PROCESS
BEGIN
	entrada(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_5;
-- entrada[4]
t_prcs_entrada_4: PROCESS
BEGIN
	entrada(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_4;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '0';
	WAIT FOR 800000 ps;
	entrada(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '0';
	WAIT FOR 400000 ps;
	entrada(2) <= '1';
	WAIT FOR 400000 ps;
	entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		entrada(1) <= '0';
		WAIT FOR 200000 ps;
		entrada(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
LOOP
	entrada(0) <= '0';
	WAIT FOR 100000 ps;
	entrada(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada_0;
END ROMMemory_arch;
