library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
 
entity decodifica00 is
  port(
	   outlevel: out std_logic_vector(23 downto 0);
	   outfan: out std_logic_vector(1 downto 0);
	   inadc0: in std_logic_vector(7 downto 0);
	   inanillo0: in std_logic_vector(3 downto 0);
       out7seg0: out std_logic_vector(6 downto 0));
end decodifica00; 

architecture decodifica0 of decodifica00 is
signal decenas: std_logic_vector(6 downto 0);
signal unidades: std_logic_vector(6 downto 0);
begin
  pcontr: process(inadc0)
  begin
	 case inadc0 is
		--15
		when "00000101" =>
			decenas <= "1001111";
			unidades <= "0100100";
			outfan <= "00";
			outlevel <= "100000000000000000000000";
		--16
		when "00000110" =>
			decenas <= "1001111";
			unidades <= "0100000";
			outfan <= "00";
			outlevel <= "100000000000000000000000";
		--17
		when "00000111" =>
			decenas <= "1001111";
			unidades <= "0001111";
			outfan <= "00";
			outlevel <= "100000000000000000000000";
		--18
		when "00001000" =>
			decenas <= "1001111";
			unidades <= "0000000";
			outfan <= "00";
			outlevel <= "100000000000000000000000";
		--19
		when "00001001" =>
			decenas <= "1001111";
			unidades <= "0000100";
			outfan <= "00";
			outlevel <= "110000000000000000000000";
		--20
		when "00001010" =>
			decenas <= "0010010";
			unidades <= "0000001";
			outfan <= "00";
			outlevel <= "111000000000000000000000";
		--21
		when "00001011" =>
			decenas <= "0010010";
			unidades <= "1001111";
			outfan <= "00";
			outlevel <= "111100000000000000000000";
		--22
		when "00001100" =>
			decenas <= "0010010";
			unidades <= "0010010";
			outfan <= "00";
			outlevel <= "111110000000000000000000";
		--23
		when "00001101" =>
			decenas <= "0010010";
			unidades <= "0000110";
			outfan <= "00";
			outlevel <= "111111000000000000000000";
		--24
		when "00001110" =>
			decenas <= "0010010";
			unidades <= "1001100";
			outfan <= "00";
			outlevel <= "111111100000000000000000";
		--25
		when "00001111" =>
			decenas <= "0010010";
			unidades <= "0100100";
			outfan <= "00";
			outlevel <= "111111110000000000000000";
		--26
		when "00010000" =>
			decenas <= "0010010";
			unidades <= "0100000";
			outfan <= "00";
			outlevel <= "111111110000000000000000";
		--27
		when "00010001" =>
			decenas <= "0010010";
			unidades <= "0001111";
			outfan <= "00";
			outlevel <= "111111110000000000000000";
		--28
		when "00010010" =>
			decenas <= "0010010";
			unidades <= "0000000";
			outfan <= "00";
			outlevel <= "111111111000000000000000";
		--29
		when "00010011" =>
			decenas <= "0010010";
			unidades <= "0000100";
			outfan <= "00";
			outlevel <= "111111111100000000000000";
		--30
		when "00010100" =>
			decenas <= "0000110";
			unidades <= "0000001";
			outfan <= "11";
			outlevel <= "111111111110000000000000";
		--31
		when "00010101" =>
			decenas <= "0000110";
			unidades <= "1001111";
			outfan <= "11";
			outlevel <= "111111111111000000000000";
		--32
		when "00010110" =>
			decenas <= "0000110";
			unidades <= "0010010";
			outfan <= "11";
			outlevel <= "111111111111100000000000";
		--33
		when "00010111" =>
			decenas <= "0000110";
			unidades <= "0000110";
			outfan <= "11";
			outlevel <= "111111111111110000000000";
		--34
		when "00011000" =>
			decenas <= "0000110";
			unidades <= "1001100";
			outfan <= "11";
			outlevel <= "111111111111111000000000";
		--35
		when "00011001" =>
			decenas <= "0000110";
			unidades <= "0100100";
			outfan <= "11";
			outlevel <= "111111111111111100000000";
		--36
		when "00011010" =>
			decenas <= "0000110";
			unidades <= "0100000";
			outfan <= "11";
			outlevel <= "111111111111111110000000";
		--37
		when "00011011" =>
			decenas <= "0000110";
			unidades <= "0001111";
			outfan <= "11";
			outlevel <= "111111111111111111000000";
		--38
		when "00011100" =>
			decenas <= "0000110";
			unidades <= "0000000";
			outfan <= "11";
			outlevel <= "111111111111111111100000";
		--39
		when "00011101" =>
			decenas <= "0000110";
			unidades <= "0000100";
			outfan <= "11";
			outlevel <= "111111111111111111110000";
		--40
		when "00011110" =>
			decenas <= "1001100";
			unidades <= "0000100";
			outfan <= "11";
			outlevel <= "111111111111111111111000";
		--41
		when "00011111" =>
			decenas <= "1001100";
			unidades <= "1001111";
			outfan <= "11";
			outlevel <= "111111111111111111111100";
		--42
		when "00100000" =>
			decenas <= "1001100";
			unidades <= "0010010";
			outfan <= "11";
			outlevel <= "111111111111111111111110";
		--43
		when "00100001" =>
			decenas <= "1001100";
			unidades <= "0000100";
			outfan <= "11";
			outlevel <= "111111111111111111111111";
		when others => 
			decenas <= "0000100";
			unidades <= "0000100";
			outfan <= "11";
			outlevel <= "111111111111111111111111";		
	  end case;
  end process pcontr;
  
  muestra: process(inanillo0)
  begin
		case inanillo0 is
		when "1110" =>
					   --abcdefg
			out7seg0 <= decenas;
		when "1101" =>
			out7seg0 <= unidades;
		when "1011" =>
			out7seg0 <= "0011100";
		when "0111" => 
			out7seg0 <= "0110001";			
		when others => null; 
	  end case;
  end process muestra;
  
  
  
end decodifica0;