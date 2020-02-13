library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

package packageshiftL00 is

	component topdiv00
		port(
	--sclk: inout std_logic;
		cdiv0: in std_logic_vector(4 downto 0);
		oscout0: inout std_logic
	);
	end component;
	
	component shiftL00
		port(
		clksl: in std_logic;
		enable: in std_logic;
		insl: in std_logic_vector(7 downto 0);
		saltos: in std_logic_vector(2 downto 0);
		sel: in std_logic_vector(1 downto 0);
		outsl: out std_logic_vector(7 downto 0));
	end component;
	
end packageshiftL00;
