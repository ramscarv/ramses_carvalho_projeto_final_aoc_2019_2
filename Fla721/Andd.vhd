library ieee;
use ieee.std_LOGIC_1164.all;
 
entity Andd is port
 (
     A 		: in std_logic;
     B 		: in std_logic;
     x 	  	: out std_logic	
 );
end entity;
 
architecture hardware of Andd is
 begin
     x <= A and B;
end hardware;