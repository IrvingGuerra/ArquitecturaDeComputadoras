library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagekey00 is

  component toposc00
    port(
       clk0: inout std_logic;
       cdiv0: in std_logic_vector(4 downto 0));
  end component;
  
  component contring00 
    port(
       clkcr: in std_logic;
	   encr: in std_logic;
       outcr: out std_logic_vector(4 downto 0));
  end component;
  
  component coder00
    port(
       clkc: in std_logic;
	   enc: in std_logic;
	   inFlagc: in std_logic;
       inkey: in std_logic_vector(3 downto 0);
	   incont: in std_logic_vector(4 downto 0);
	   outcontc: inout std_logic_vector(4 downto 0);
       outcoder: out std_logic_vector(6 downto 0);
	   outFlagc: out std_logic);
  end component;

end packagekey00;