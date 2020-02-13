library ieee;
use ieee.std_logic_1164.all;



package packagegeneric00 is

  component topdiv00
    port(
       indiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
  end component;
  
  component andg00
    port(
       clkga: in std_logic;
	   inFlaga: in std_logic;
	   codopga: in std_logic_vector(4 downto 0);
	   portAga: in std_logic_vector(7 downto 0);
	   portBga: in std_logic_vector(7 downto 0);
	   outga: out std_logic_vector(7 downto 0);
       outFlaga: out std_logic);
  end component;
  
  component xorg00
   port(
       clkgx: in std_logic;
	   inFlagx: in std_logic;
	   codopgx: in std_logic_vector(4 downto 0);
	   portAgx: in std_logic_vector(7 downto 0);
	   portBgx: in std_logic_vector(7 downto 0);
	   outgx: out std_logic_vector(7 downto 0);
       outFlagx: out std_logic);
  end component;
  
  component uc00
    port(
       clkuc: in std_logic;
	   enableuc: in std_logic;
	   inuc: in std_logic_vector(7 downto 0);
	   inFlaguc: in std_logic;
	   outuc: out std_logic_vector(7 downto 0);
       outFlaguc: out std_logic);
  end component;

end packagegeneric00;