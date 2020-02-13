library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagediv00.all;
use packagegeneric00.all;

entity topgeneric00 is
  port(
       clk0: inout std_logic;
	   cdiv0: in std_logic_vector(3 downto 0);
	   enableg0: in std_logic;
	   codopg0: in std_logic_vector(4 downto 0);
	   inFlagg0: inout std_logic;
	   outFlagg0: inout std_logic;
	   portgA0: in std_logic_vector(7 downto 0);
	   portgB0: in std_logic_vector(7 downto 0);
       outg0: out std_logic_vector(7 downto 0));
end topgeneric00;

architecture topgeneric0 of topgeneric00 is
signal soutg: std_logic_vector(7 downto 0);
begin

 G00: topdiv00 port map(outdiv0 => clk0,
                         indiv0 => cdiv0);
  
  G01: andg00 port map(clkga => clk0,
                       codopga => codopg0,
					   portAga => portgA0,
					   portBga => portgB0,
					   inFlaga => outFlagg0,
					   outga => soutg,
                       outFlaga => inFlagg0);
  
  G02: xorg00 port map(clkgx => clk0,
                       codopgx => codopg0,
					   portAgx => portgA0,
					   portBgx => portgB0,
					   inFlagx => outFlagg0,
					   outgx => soutg,
                       outFlagx => inFlagg0);
  
  G03: uc00 port map(clkuc => clk0,
                     enableuc => enableg0,
					 inuc => soutg,
					 inFlaguc => inFlagg0,
					 outuc => outg0,
                     outFlaguc => outFlagg0);

end topgeneric0;