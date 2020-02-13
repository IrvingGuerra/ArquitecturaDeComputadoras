library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity test00 is 
					port(
						BCDI: in std_logic_vector(6 downto 0);
						TIn: in std_logic_vector(1 downto 0);
						TOu: out std_logic_vector(3 downto 0)
					);	
end test00;

architecture test0 of test00 is 
	begin 
			 process(TIn)
				begin
						if(TIn = "00") then 
							TOu(0) <= '0';   --Actvar Transistor 0
							TOu(1) <= '1';
							TOu(2) <= '1';
							TOu(3) <= '1';
						elsif(TIn = "01") then 
							TOu(1) <= '0';	--Actvar Transistor 1
							TOu(0) <= '1';
							TOu(2) <= '1';
							TOu(3) <= '1';
						elsif(TIn  <="10") then 
							TOu(2) <= '0';	--Actvar Transistor 2
							TOu(0) <= '1';
							TOu(1) <= '1';
							TOu(3) <= '1';
						else					
							TOu(3) <= '0';	--Actvar Transistor 3
							TOu(0) <= '1';
							TOu(1) <= '1';
							TOu(2) <= '1';
						end if;
			end process ;
end test0;