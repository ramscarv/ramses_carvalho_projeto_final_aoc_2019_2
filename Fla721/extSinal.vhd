Library ieee;
use ieee.std_logic_1164.all;

entity extSinal is
   Port( entrada1: in std_logic_vector(1 DOWNTO 0);
			saida: out std_logic_vector(7 DOWNTO 0)
		  );
end extSinal;

architecture extsignal of extSinal is

begin
	saida(7 downto 2) <= "000000";
	saida(1 downto 0) <= entrada1;
end extsignal;
