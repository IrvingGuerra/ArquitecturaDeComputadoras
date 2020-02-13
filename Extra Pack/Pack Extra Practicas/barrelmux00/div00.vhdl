library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity div00 is
	port(
		clkdiv: in std_logic;
		indiv: in std_logic_vector(4 downto 0);
		outdiv: inout std_logic
	);
end div00;

architecture div0 of div00 is
signal sdiv: std_logic_vector(22 downto 0);
begin
	pdiv: process(clkdiv)
	begin
	if(clkdiv'event and clkdiv='1') then
		case indiv is
			when "00000" =>
				if (sdiv<"10000000000000000000000") then
					sdiv<=sdiv+'1';
				else
					sdiv<="00000000000000000000000";
					outdiv <=not(outdiv);
				end if;
			when "00001" =>
				if (sdiv<"01000000000000000000000") then
					sdiv<=sdiv+'1';
				else
					sdiv<="00000000000000000000000";
					outdiv <=not(outdiv);
				end if;
			when "00011" =>
				if (sdiv<"00100000000000000000000") then
					sdiv<=sdiv+'1';
				else
					sdiv<="00000000000000000000000";
					outdiv <=not(outdiv);
				end if;
			when "00111" =>
				if (sdiv<"00010000000000000000000") then
					sdiv<=sdiv+'1';
				else
					sdiv<="00000000000000000000000";
					outdiv <=not(outdiv);
				end if;	
			when "01111" =>
				if (sdiv<"00001000000000000000000") then
					sdiv<=sdiv+'1';
				else
					sdiv<="00000000000000000000000";
					outdiv <=not(outdiv);
				end if;
			when "11111" =>
				if (sdiv<"00000010000000000000000") then
					sdiv<=sdiv+'1';
				else
					sdiv<="00000000000000000000000";
					outdiv <=not(outdiv);
				end if;	
			when "11110" =>
				if (sdiv<"00000001000000000000000") then
					sdiv<=sdiv+'1';
				else
					sdiv<="00000000000000000000000";
					outdiv <=not(outdiv);
				end if;
			when others => null;
		end case;
		end if;
	end process pdiv;
end div0;