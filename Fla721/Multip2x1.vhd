Library ieee;
use ieee.std_logic_1164.all;

Entity Multip2x1 is
	Port( seletor: in std_logic;
			entrada1, entrada2: in std_logic_vector(7 downto 0);
			saida: out std_logic_vector(7 downto 0)
		 );
end Multip2x1;

Architecture Multiplexador of Multip2x1 is
begin
with seletor select 
	saida <= entrada1 when '0',
			 entrada2 when '1';
end Multiplexador;