library ieee;
use ieee.std_logic_1164.all;

entity Banco8bits is 
	port (  clock, regdst: in std_logic;
			end_reg1, end_reg2: in std_logic_vector(1 DOWNTO 0);
			datawriteA, datawriteB: in std_logic_vector(7 DOWNTO 0);
			readata1, readata2: out std_logic_vector(7 DOWNTO 0);
			regA, regB: in std_logic_vector(7 downto 0)
	    );
end Banco8bits;
	
architecture hardware of Banco8bits is
    
    component Multiplexador is
			Port (seletor:in STD_LOGIC_VECTOR (1 downto 0);
					entrada1, entrada2: in std_logic_vector (7 downto 0);
					saida: out std_logic_vector (7 downto 0)
					);
    end component;
	begin
		mux1: multiplexador port map (end_reg1, saida, readata1);
		mux2: multiplexador port map (end_reg2, saida, readata2);
	
end hardware;