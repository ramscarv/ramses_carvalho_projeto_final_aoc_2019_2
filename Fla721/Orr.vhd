library ieee;
use ieee.std_LOGIC_1164.all;

entity Orr is port
(
	A 		: in std_logic;
	B 		: in std_logic;
	x 	  	: out std_logic	
);
end entity;

architecture hardware of Orr is
begin
	x <= A OR B;
end hardware;