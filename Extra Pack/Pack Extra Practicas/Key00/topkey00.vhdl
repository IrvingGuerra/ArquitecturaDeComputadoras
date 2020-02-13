library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
use packagekey00.all;

entity topkey00 is
  port(
       clk0: inout std_logic;
	   cdiv00: in std_logic_vector(4 downto 0);
	   en0: in std_logic;
	   inkey0: in std_logic_vector(3 downto 0);
	   outr0: inout std_logic_vector(3 downto 0);
	   outtransist0: out std_logic_vector(3 downto 0);
       outcoder0: out std_logic_vector(6 downto 0));
end topkey00;

architecture topkey0 of topkey00 is
begin
  outtransist0 <= "1110";
  K00: topdiv00 port map(oscout0 => clk0,
                         cdiv0 => cdiv00);
  
  K01: contring00 port map(clkr => clk0,
                           enable => en0,
                           outr => outr0);
  
  K02: coder00 port map(clkc => clk0,
                        inkey => inkey0,
						incont => outr0,
                        outcoder => outcoder0);


end topkey0;