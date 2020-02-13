library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
use packageshiftL00.all;

entity topshiftL00 is
	port(
		clk0: inout std_logic;
		cdiv00: in std_logic_vector(4 downto 0);
		en0: in std_logic;
		insl0: in std_logic_vector(7 downto 0);
		saltos0: in std_logic_vector(2 downto 0);
		sel0: in std_logic_vector(1 downto 0);
		outsl0: out std_logic_vector(7 downto 0));
end topshiftL00;

architecture topshiftL0 of topshiftL00 isbegin

	SL00 : topdiv00 port map(	oscout0=>clk0,
								cdiv0=> cdiv00);
								
	Sl011: shiftL00 port map(	clksl=> clk0,
								enable=> en0,
								insl=>insl0,
								saltos=> saltos0,
								sel=> sel0,
								outsl=> outsl0);

end topshiftL0;