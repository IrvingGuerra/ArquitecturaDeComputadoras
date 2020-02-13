library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contReadRo00 is
  port(
       clkrro: in std_logic;
	   enablerro: in std_logic;
       outcontrro: inout std_logic_vector(3 downto 0));
end contReadRo00;

architecture contReadRo0 of contReadRo00 is
begin
  pcontrom: process(clkrro, enablerro)
  begin
     if (clkrro'event and clkrro = '1') then
	   case enablerro is
	     when '0' =>
		   outcontrro <= "0000";
		 when '1' =>
		   if (outcontrro < "1101") then 
		     outcontrro <= outcontrro +  '1';
		   else
		     outcontrro <= outcontrro; 
		   end if;
		 when others => null;
	   end case;
	 end if;
  end process pcontrom;
end contReadRo0;