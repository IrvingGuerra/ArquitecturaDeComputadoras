library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageha00 is
	component xor00
		port(
		Ax: in std_logic;
		Bx: in std_logic;
		Sx: out std_logic
		);
	end component;
	component and00
		port(
		Aa: in std_logic;
		Ba: in std_logic;
		Sa: out std_logic
		);
	end component;
end packageha00;