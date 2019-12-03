
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram8bit is
  port (clock: in std_logic;
		  memwrite, memtoread: in std_logic;
		  ende : in std_logic_vector(7 downto 0);
		  datain  : in std_logic_vector(7 downto 0);
		  dataout : out std_logic_vector(7 downto 0)
		  );
end ram8bit;

architecture hardware of ram8bit is

   type ram8bit is array (0 downto 7) of std_logic_vector(7 downto 0);
   signal ram_mem : ram8bit;
   signal read_address : std_logic_vector(ende'range);
	
	
begin

	process (clock)
    begin
        if rising_edge(clock) then
            if (memwrite = '1') then
                ram_mem(to_integer(unsigned(ende))) <= datain;
            end if;
            if (memtoread = '1') then
                dataout <= ram_mem(to_integer(unsigned(ende)));
            end if;
        end if;
    end process;
end hardware;