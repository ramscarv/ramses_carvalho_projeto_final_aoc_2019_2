library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity ROMMemory is
	port(entrada : in std_logic_vector(7 downto 0);
		  saida: out std_logic_vector(7 downto 0)
	);
end ROMMemory;

architecture hardware of ROMMemory is
	type rom_array is array (0 to 255) of std_logic_vector (7 downto 0);
	--type ROMMemory is array (0 to 2) of std_logic_vector (7 downto 0);
	constant data : rom_array := (
		0 => "10000000", -- ADD
		1 => "01000000", -- SUB
		2 => "00100000", -- LW
		3 => "00011000", -- SW
		4 => "00000111", -- BNE
		5 => "00001111", -- JUMP
		others => "00000000");
begin
	saida <= data(conv_integer(unsigned(entrada)));
end hardware;