library ieee;
use ieee.std_logic_1164.all;
--librerias arith y unsigned
library lattice;
use lattice.all;

entity div00 is port(
	clkdiv: in std_logic;
	indiv: in std_logic_vector(4 downto 0;
	oscout: out std_logic);
end div00;

architecture div0 of div00 is
signal sdiv:std_logic_vector(21 downto 0);
begin
	pdiv: process(clkdiv)
	begin
		if(clkdiv'event and clkdiv='1') then
			case indiv is
			when "00000" =>
				if(sdiv > "1000000000000000000000") then
					oscout <= not(oscout);
					sdiv <= "0000000000000000000000"
				else
					oscout <= oscout;
					sdiv <= sdiv + '1';
				end if;
			when others => null;
			end case;
		end if;
	end process;
end div0;