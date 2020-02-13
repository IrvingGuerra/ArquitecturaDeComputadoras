library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packageram00 is

  component toposc00
    port(
       indiv0: in std_logic_vector(4 downto 0);
       oscout0: inout std_logic);
  end component;
  
  component contring00
    port(
       clkcr: in std_logic;
	   enablecr: in std_logic;
	   rwcr: in std_logic;
       outcr: out std_logic_vector(3 downto 0));
  end component;
  
  component coder00
    port(
       clkcd: in std_logic;
	   enablecd: in std_logic;
	   rwcd: in std_logic;
	   inkeycd: in std_logic_vector(3 downto 0);
	   incontcd: in std_logic_vector(3 downto 0);
       outcodercd: out std_logic_vector(6 downto 0);
	   outcontwcd: inout std_logic_vector(4 downto 0);
	   outFlagcd: out std_logic);
  end component;
  
  component ram00
    port(
       clkra: in std_logic;
	   enablera: in std_logic;
	   rwra: in std_logic;
	   inFlagra: in std_logic;
	   indirWra: in std_logic_vector(4 downto 0);
	   indirRra: in std_logic_vector(4 downto 0);
	   inwordra: in std_logic_vector(6 downto 0);
       outwordra: out std_logic_vector(6 downto 0));
  end component;
  
  component muxra00
    port(
       enablem: in std_logic;
	   rwm: in std_logic;
	   inwordkeym: in std_logic_vector(6 downto 0);
       inwordramm: in std_logic_vector(6 downto 0);
	   outwordm: out std_logic_vector(6 downto 0));
  end component;
  
  component contReadRa00
    port(
       clkrd: in std_logic;
	   enablerd: in std_logic;
	   rwrd: in std_logic;
	   incontWrd: in std_logic_vector(4 downto 0);
       outcontRrd: inout std_logic_vector(4 downto 0));
  end component;

end packageram00;