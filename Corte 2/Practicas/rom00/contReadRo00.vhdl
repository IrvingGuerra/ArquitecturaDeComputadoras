library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contReadRo00 is
  port(
       clkcr: in std_logic;
	   enablecr: in std_logic;
       outcontcr: inout std_logic_vector(4 downto 0));
end contReadRo00; 

architecture contReadRo0 of contReadRo00 is
begin
  processCR: process(clkcr, enablecr)
  begin
     if (clkcr'event and clkcr = '1') then
	   case enablecr is
	     when '0' =>
		   outcontcr <= "00000";
		 when '1' =>
		   if (outcontcr < "10000") then 
		     outcontcr <= outcontcr +  '1';
		   else
		     outcontcr <= outcontcr; 
		   end if;
		 when others => null;
	   end case;
	 end if;
  end process processCR;
end contReadRo0;