library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity muxra00 is
  port(
       enablem: in std_logic;
	   rwm: in std_logic;
	   inwordkeym: in std_logic_vector(6 downto 0);
       inwordramm: in std_logic_vector(6 downto 0);
	   outwordm: out std_logic_vector(6 downto 0));
end muxra00;

architecture muxra0 of muxra00 is
begin
  pmux: process(inwordkeym, inwordramm)
  begin
    case enablem is
	  when '0' =>
	    outwordm <= (others => '1');
	  when '1' =>
	    case rwm is
		  when '0' =>
		    outwordm <= inwordkeym;
		  when '1' =>
		    outwordm <= inwordramm;
		  when others => null;
		end case;
	  when others => null;
	end case;
  end process pmux;
end muxra0;