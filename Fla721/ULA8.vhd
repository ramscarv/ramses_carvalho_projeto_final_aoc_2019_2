Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;

Entity ULA8 is
	Port (A, B: in std_logic_vector(7 downto 0);
			ULAop: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(7 downto 0);
			zero: out std_logic);
		  
end ULA8;

Architecture ULA of ULA8 is

Begin
	Process (A, B, ULAop)
	Begin
		if(ULAop = "0000") then
			S <= A + B;			-- ADD
		end if;
		
		if(ULAop = "0001") then
			S <= A - B;			-- SUB
		end if;
		
		L1: if(ULAop = "0100") then    -- BEQ
			S <= A - B;	
			L2: if( A - B = "0000000") then
					zero <= '1';
				 else
					zero <= '0';
				end if L2;
		end if L1;
		
		if(ULAop = "0010") then
			S <= A + B;			-- LW
		end if;
		
		if(ULAop = "0011") then
			S <= A + B;			-- SW
		end if;
	End process;
	
end ULA;