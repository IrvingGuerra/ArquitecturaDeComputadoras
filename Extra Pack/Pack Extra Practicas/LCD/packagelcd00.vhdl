library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packagelcd00 is

  component toposc00
    port(
       indiv0: in std_logic_vector(4 downto 0);
       oscout0: inout std_logic);
  end component;
  
  component lcdcontconfig00
    port(
       clkcc:in std_logic;
	   resetcc: in std_logic;
	   inFlagcc: in std_logic;
	   outcontcc: inout std_logic_vector(4 downto 0);
       outFlagcc: out std_logic);
  end component;
  
  component lcdconfig00
    port(
       clkc: in std_logic;
	   resetc: in std_logic;
	   inFlagc: in std_logic;
	   incontc: in std_logic_vector(4 downto 0);
	   comandoc: out std_logic_vector(7 downto 0);
	   outFlagc: out std_logic;
	   RWc: out std_logic;
	   RSc: out std_logic;
       ENc: out std_logic);
  end component;
  
  component lcdcontdata00
    port(
       clkcd: in std_logic;
	   resetcd: in std_logic;
	   inFlagcd: in std_logic;
	   outcd: inout std_logic_vector(4 downto 0);
	   RWcd: out std_logic;
	   RScd: out std_logic;
	   ENcd: out std_logic;
       outFlagcd: out std_logic);
  end component;
  
  component lcddata00
    port(
       clkdd: in std_logic;
	   resetdd: in std_logic;
	   inFlagdd: in std_logic;
	   inFlagcf: in std_logic;
	   indirdd: in std_logic_vector(4 downto 0);
	   outworddd: out std_logic_vector(7 downto 0);
       outFlagdd: out std_logic);
  end component;
  
  component lcdmux00
    port(
       clklm: in std_logic;
	   resetlm: in std_logic;
	   inFlagclm: in std_logic;--Logica fuerte
	   inFlagdlm: in std_logic;--viene de la rom
	   inwordclm: in std_logic_vector(7 downto 0);
	   inworddlm: in std_logic_vector(7 downto 0);
	   RWc: in std_logic;
	   RSc: in std_logic;
	   ENc: in std_logic;
	   RWd: in std_logic;
	   RSd: in std_logic;
	   ENdd: in std_logic;
	   outwordlm: out std_logic_vector(7 downto 0);
	   RWlm: out std_logic;
	   RSlm: out std_logic;
       ENlm: out std_logic);
  end component;

end packagelcd00;