library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity andg00 is
  port(
       clkga: in std_logic;
	   inFlaga: in std_logic;
	   codopga: in std_logic_vector(4 downto 0);
	   portAga: in std_logic_vector(7 downto 0);
	   portBga: in std_logic_vector(7 downto 0);
	   outga: out std_logic_vector(7 downto 0);
       outFlaga: out std_logic);
end andg00;

architecture andg0 of andg00 is
begin
  pandg: process(clkga)
  variable aux: bit:='0';
  begin
    if (clkga'event and clkga = '1') then
		if (codopga = "00000") then
		  case inFlaga is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outga <= portAga and portBga;
				 outFlaga <= '1';
			   else
				 outFlaga <= '1';
			   end if;
			when '0' =>
			   outFlaga <= '0';
			when others => null;
		  end case;
		else
		  outga <= (others => 'Z');
		  outFlaga <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process pandg;
end andg0;