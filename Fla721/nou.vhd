library ieee;
use ieee.std_logic_1164.all;

entity nou is
	port(a : in std_logic;
		  b :out std_logic
		);
end nou;

architecture behavior of nou is

begin
		b <= not a;
END behavior;