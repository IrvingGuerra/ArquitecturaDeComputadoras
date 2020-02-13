library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity hotWheel00 is
  port( 
       btn0: in std_logic_vector(1 downto 0);
	   outputWheel0: out std_logic_vector(1 downto 0)
	   ); 
end hotWheel00; 

architecture hotWheel0 of hotWheel00 is
begin
	boton: process(btn0)
	begin
		case btn0 is
			when "00" =>
				outputWheel0 <= "00";
			when "01" =>
				outputWheel0 <= "01";
			when "10" =>
				outputWheel0 <= "10";
			when "11" =>
				outputWheel0 <= "00";
			when others => null;
		end case;
	end process boton;
end hotWheel0;