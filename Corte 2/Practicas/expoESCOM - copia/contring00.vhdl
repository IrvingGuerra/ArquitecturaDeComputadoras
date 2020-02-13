library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
 
entity contring00 is
  port(
       clkcr: in std_logic;
	   resetcr: in std_logic;
       outcr0: inout std_logic_vector(3 downto 0));
end contring00;
 
architecture contring0 of contring00 is
signal sshift: std_logic_vector(3 downto 0);
begin
  pcontr: process(clkcr)
  begin 
    if(clkcr'event and clkcr = '1') then
		case resetcr is
			when '0' =>
			  sshift <= "1110";
			  outcr0 <= "1111";
			when '1' => 
			  sshift(3) <= sshift(0);
			  sshift(2 downto 0) <= sshift(3 downto 1);
			  outcr0 <= sshift;
			when others => null; 
		end case;
	end if;
  end process pcontr; 
end contring0;