LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Somador is
    Port (
        clock : in std_logic;
        entrada : in std_logic_vector (7 DOWNTO 0);
        saida : out std_logic_vector (7 DOWNTO 0));
end Somador;

architecture hardware of Somador is
begin
    process (clock)
    begin
        saida <= entrada + "00000001";
    end process;
end hardware;