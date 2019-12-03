library ieee;
use ieee.std_logic_1164.all;

entity Bancoreg is 
	port (clock, regwrite: in std_logic;
			endreg1, endreg2: in std_logic_vector(3 DOWNTO 0);
			entrada, writedata : in std_logic_vector(7 DOWNTO 0);
			dataread1, dataread2: out std_logic_vector(7 DOWNTO 0)
	);
end Bancoreg;
	
architecture banco of Bancoreg is 

	component multiplexador is
			Port (seletor:in STD_LOGIC_VECTOR (3 downto 0);
                    entrada: in std_logic_vector (7 downto 0);
                    regdst: in std_logic;
					saidaFinal: out std_logic_vector (7 downto 0)
					);
	end component;
	
    signal saida00, saida01: std_logic_vector(7 downto 0);
begin
	 process (clock)
		begin
        if rising_edge(clock) then
            if (regwrite = '1') then
                Mux1 <= multiplexador port map (endreg1, saida00, dataread1);
                Mux2 <= multiplexador port map (endreg2, saida01, dataread2);
            end if;
        end if;
    end process;
end banco;