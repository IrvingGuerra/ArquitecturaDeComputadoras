library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity xorg00 is
  port(
       clkgx: in std_logic;
	   inFlagx: in std_logic;
	   codopgx: in std_logic_vector(4 downto 0);
	   portAgx: in std_logic_vector(7 downto 0);
	   portBgx: in std_logic_vector(7 downto 0);
	   outgx: out std_logic_vector(7 downto 0);
       outFlagx: out std_logic);
end xorg00;

architecture xorg0 of xorg00 is
begin
  pxorg: process(clkgx)
  variable aux: bit:='0';
  begin
    if (clkgx'event and clkgx = '1') then
		if (codopgx = "00010") then
		  case inFlagx is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outgx <= portAgx xor portBgx;
				 outFlagx <= '1';
			   else
				 outFlagx <= '0';
			   end if;
			when '0' =>
			   outFlagx <= '0';
			when others => null;
		  end case;
		else
		  outgx <= (others => 'Z');
		  outFlagx <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process pxorg;
end xorg0;