library ieee;
use ieee.std_logic_1164.all;

entity PC is 
	port (
	clock: in STD_LOGIC;
	inputPC: in STD_LOGIC_VECTOR(7 DOWNTO 0);
	output: out STD_LOGIC_VECTOR(7 DOWNTO 0));
end PC;
	
architecture hardware of PC is 
	begin
	process (clock) is
	begin
		if rising_edge(clock) then
			output <= inputPC;
		end if;
	end process;
end hardware;