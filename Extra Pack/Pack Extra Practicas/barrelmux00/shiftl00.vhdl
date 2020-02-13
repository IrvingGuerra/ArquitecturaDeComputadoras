library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

entity shiftL00 is
	port(
		clksl: in std_logic;
		enable: in std_logic;
		insl: in std_logic_vector(7 downto 0);
		saltos: in std_logic_vector(2 downto 0);
		sel: in std_logic_vector(1 downto 0);
		outsl: out std_logic_vector(7 downto 0));
end shiftL00;

architecture shiftL0 of shiftL00 is
signal sinsl: std_logic_vector(7 downto 0);
signal cont_saltos: std_logic_vector(2 downto 0);
begin
	psl: process(clksl)
	begin
	if(clksl'event and clksl = '1') then
		case enable is
		when '0' =>
			outsl<=(others=>'0'); --"00000000"
			sinsl<= insl;
			cont_saltos<="000";
		when '1' =>
		if(saltos = cont_saltos) then
		outsl<=sinsl;
		else
			case sel is
			when "00" =>
				sinsl(7) <= '0';
				sinsl(6 downto 0)<= sinsl(7 downto 1);
			when "01" =>
				sinsl(7) <= sinsl(0);
				sinsl(6 downto 0)<= sinsl(7 downto 1);
			when "10" =>
				sinsl(0) <= '0';
				sinsl(7 downto 1)<= sinsl(6 downto 0);
			when "11" =>
				sinsl(0) <= sinsl(7);
				sinsl(7 downto 1)<= sinsl(6 downto 0);
			when others => null;
			end case;
			outsl<= sinsl;
				case cont_saltos is
					when "000"=> cont_saltos <= "001";
					when "001"=> cont_saltos <= "010";
					when "010"=> cont_saltos <= "011";
					when "011"=> cont_saltos <= "100";
					when "100"=> cont_saltos <= "101";
					when "101"=> cont_saltos <= "110";
					when "110"=> cont_saltos <= "111";
					when "111"=> cont_saltos <= "000";
					when others => null;
				end case;
		end if;
		when others => null;
		end case;
	end if;
	end process psl;
end shiftL0;