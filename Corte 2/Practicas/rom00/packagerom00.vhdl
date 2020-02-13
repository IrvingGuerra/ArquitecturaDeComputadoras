library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packagerom00 is

  component toposc00
    port(
       cdiv0: in std_logic_vector(4 downto 0);
       clk0: inout std_logic);
  end component;
  
  component contReadRo00
    port(
       clkcr: in std_logic;
	   enablecr: in std_logic;
       outcontcr: inout std_logic_vector(4 downto 0));
  end component;
  
  component rom00
    port(
       clkrom: in std_logic;
	   enablerom: in std_logic;
	   indirReadrom: in std_logic_vector(4 downto 0);
       outwordrom: out std_logic_vector(6 downto 0));
  end component;
 
 end packagerom00;