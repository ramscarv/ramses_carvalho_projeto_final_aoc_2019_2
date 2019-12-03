library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ucontrol is
	port(	opcode : in std_logic_vector(3 downto 0); -- Opcode
			branch : out std_logic;
			memtoread : out std_logic;
			memtoreg : out std_logic;	
			ULAop : out std_logic_vector(3 downto 0); -- 4bits
			memtowrite: out std_logic;
			ulasrc : out std_logic;
			regwrite : out std_logic;
			regdst: out std_logic);
end ucontrol;

architecture behavior of ucontrol is
	
begin	
	process (opcode)
		begin
			if(opcode = "0000") then --add
				branch <= '0';
				memtoread <= '1';
				regdst <= '1';
				memtoreg <= '1';
				ULAop <= "0000";
				memtowrite <= '1';
				ulasrc <= '1';
				regwrite <= '1';
			end if;	
			
			if(opcode = "0001") then --sub
				branch <= '0';
				memtoread <= '1';
				regdst <= '1';
				memtoreg <= '1';
				ULAop <= "0001";
				memtowrite <= '1';
				ulasrc <= '1';
				regwrite <= '1';
			end if;
			
			if(opcode = "0010") then --lw
				branch <= '0';
				memtoread <= '1';
				regdst <= '1';	
				memtoreg <= '1';
				ULAop <= "0010";
				memtowrite <= '1';
				ulasrc <= '1';
				regwrite <= '1';
			end if;
			
			if(opcode = "0011") then --sw
				branch <= '0';
				memtoread <= '0';
				regdst <= '0';
				memtoreg <= '0';
				ULAop <= "0011";
				memtowrite <= '1';
				ulasrc <= '1';
				regwrite <= '0';
			end if;
			
			if(opcode = "0100") then --beq
				branch <= '1';
				memtoread <= '0';
				regdst <= '0';
				memtoreg <= '0';
				ULAop <= "0100";
				memtowrite <= '0';
				ulasrc <= '0';
				regwrite <= '0'; 
			end if;
			
			if(opcode = "0101") then --jump
				branch <= '0';
				memtoread <= '0';
				regdst <= '0';
				memtoreg <= '0';
				ULAop <= "0101";
				memtowrite <= '0';
				ulasrc <= '0';
				regwrite <= '0';
			end if;
		end process;
 end behavior;