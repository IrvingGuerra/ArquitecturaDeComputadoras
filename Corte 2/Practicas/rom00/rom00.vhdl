library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity rom00 is
  port(
       clkrom: in std_logic;
	   enablerom: in std_logic;
	   indirReadrom: in std_logic_vector(4 downto 0);
       outwordrom: out std_logic_vector(6 downto 0));
end rom00;

architecture rom0 of rom00 is
type arrayrom is array(0 to 64) of std_logic_vector(6 downto 0);
							---abcdefg
constant wordrom: arrayrom:= ("0111000", --F 
                              "0110000", --E
							  "1000010", --d 
                              "0110001", --c
							  "1100000", --b 
                              "0001000", --A
							  "0000100", --9 
                              "0000000", --8
							  "0001111", --7 
							  "0100000", --6
							  "0100100", --5
							  "1001100", --4
							  "0000110", --3
							  "0010010", --2
							  "1001111", --1
							  others => "0000001"); --0 
begin
  prom: process(clkrom)
  begin
     if (clkrom'event and clkrom = '1') then
       case enablerom is
	     when '0' =>
		   outwordrom <= "1111111";
		 when '1' =>
			
			if(indirReadrom <= "10000") then
		 
				outwordrom <= wordrom(conv_integer(indirReadrom));
		   
		   end if;
		   
		 when others => null;
		 
	   end case;
	 end if;
  end process prom;
end rom0;