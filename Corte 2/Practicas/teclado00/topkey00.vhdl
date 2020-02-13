library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagekey00.all; 

entity topkey00 is
  port(
       clk00: inout std_logic;
	   cdiv00: in std_logic_vector(4 downto 0);
	   en00: in std_logic;
	   inkey00: in std_logic_vector(3 downto 0);
	   outr00: out std_logic_vector(4 downto 0);
	   outled00: out std_logic_vector(4 downto 0);
	   outcoder00: out std_logic_vector(6 downto 0);
	   outcontc00: inout std_logic_vector(4 downto 0);
	   inFlagc00: in std_logic;
	   outFlagc00: out std_logic;
       outtransist00: out std_logic_vector(3 downto 0));
end topkey00;

architecture topkey0 of topkey00 is 
signal soutr0: std_logic_vector(4 downto 0);
begin 
outtransist00 <= "1110";
outr00 <= soutr0; 
outled00 <= soutr0;

  K00: toposc00 port map(clk0 => clk00,
                         cdiv0 => cdiv00);
  
  K01: contring00 port map(clkcr => clk00,
                           encr => en00,
						   outcr => soutr0);
						
  K02: coder00 port map(clkc => clk00, 
					    enc => en00, 
					    inkey => inkey00, 
					    incont => soutr0, 
					    outcoder => outcoder00, 
						outcontc => outcontc00,
						inFlagc => inFlagc00,
					    outFlagc => outFlagc00);

end topkey0;