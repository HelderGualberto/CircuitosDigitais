-- full subtractor

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY fullSubtractor is
	port(
		A,B,Ta : in std_logic;
		S,Te : out std_logic
	);
	
end fullSubtractor;

ARCHITECTURE comport  of fullSubtractor is
	begin 
	S <= (not(A) and (b xor Ta)) or (A and (B xnor Ta));
	Te <=(not(A) and (b xor Ta)) or (B and Ta);
	
end comport;