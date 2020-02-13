library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagediv00.all; 

entity topdiv00 is
	port(
	--sclk: inout std_logic;
		cdiv0: in std_logic_vector(4 downto 0);
		oscout0: inout std_logic
	);
end topdiv00;

architecture topdiv0 of topdiv00 is
signal sclk: std_logic;
begin
	D00: osc00 port map(osc_int =>sclk);
	
	D01: div00 port map(
			clkdiv => sclk,
			indiv => cdiv0,
			outdiv => oscout0
	);
end topdiv0;