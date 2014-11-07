-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"
-- CREATED		"Sun Nov 02 19:26:12 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY FFT IS 
	PORT
	(
		T :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		CLKout :  OUT  STD_LOGIC
	);
END FFT;

ARCHITECTURE bdf_type OF FFT IS 



BEGIN 



PROCESS(CLK)
VARIABLE CLKout_synthesized_var : STD_LOGIC;
BEGIN
IF (RISING_EDGE(CLK)) THEN
	CLKout_synthesized_var := CLKout_synthesized_var XOR T;
END IF;
	CLKout <= CLKout_synthesized_var;
END PROCESS;


END bdf_type;