library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity adder4bit00 is port(
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		S: in std_logic;
		R: out std_logic_vector(7 downto 0)
		
);
end adder4bit00;

architecture adder4bit0 of adder4bit00 is
begin
	process(S)
	begin
	if(S='0') then
		R <= A + B;
		else
		R <= A - B;
	end if;
	end process;	


end adder4bit0;