library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity contring00 is
  port(
       clkcr: in std_logic;
	   encr: in std_logic;
       outcr: out std_logic_vector(4 downto 0));
end contring00;

architecture contring0 of contring00 is
signal sshift: std_logic_vector(4 downto 0);
begin
  pcontr: process(clkcr)
  begin
    if (clkcr'event and clkcr = '1') then
	  case encr is
	    when '0' => 
		  outcr <= (others => '0');
		  sshift <= "10000";
		when '1' =>
		  sshift(4) <= sshift(0);
		  sshift(3 downto 0) <= sshift(4 downto 1);
		  outcr <= sshift;
		when others => null;
	  end case;
	end if;
  end process pcontr;
end contring0;