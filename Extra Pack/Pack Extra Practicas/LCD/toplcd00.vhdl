library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagelcd00.all;

entity toplcd00 is
  port(
       clk0: inout std_logic;
	   cdiv0: in std_logic_vector(4 downto 0);
	   reset0: in std_logic;
	   outFlagc0: inout std_logic;
	   outFlagcc0: inout std_logic;
	   outFlagcd0: inout std_logic;
	   outFlagdd0: inout std_logic;
	   outcontcc0: inout std_logic_vector(4 downto 0);
	   outcd0: inout std_logic_vector(4 downto 0);
	   outwordlcd0: out std_logic_vector(7 downto 0);
	   outwordled0: out std_logic_vector(7 downto 0);
	   RW0: out std_logic;
	   RS0: out std_logic;
       EN0: out std_logic);
end toplcd00;

architecture toplcd0 of toplcd00 is
signal scomandoc: std_logic_vector(7 downto 0);
signal soutworddd: std_logic_vector(7 downto 0);
signal sword: std_logic_vector(7 downto 0);
signal sRWc, sRSc, sENc: std_logic;
signal sRWcd, sRScd, sENcd: std_logic;
begin

outwordlcd0 <= sword;
outwordled0 <= sword;

  L00: toposc00 port map(oscout0 => clk0,
                         indiv0 => cdiv0);
  
  L01: lcdcontconfig00 port map(clkcc => clk0,
                                resetcc => reset0,
								inFlagcc => outFlagc0,
								outcontcc => outcontcc0,
                                outFlagcc => outFlagcc0);
  
  L02: lcdconfig00 port map(clkc => clk0,
                            resetc => reset0,
							inFlagc => outFlagcc0,
							incontc => outcontcc0,
							comandoc => scomandoc,
							outFlagc => outFlagc0,
							RWc => sRWc,
							RSc => sRSc,
                            ENc => sENc);
  
  L03: lcdcontdata00 port map(clkcd => clk0,
                              resetcd => reset0,
							  inFlagcd => outFlagc0,
							  outcd => outcd0,
							  RWcd => sRWcd,
							  RScd => sRScd,
							  ENcd => sENcd,
                              outFlagcd => outFlagcd0);
  
  L04: lcddata00 port map(clkdd => clk0,
                          resetdd => reset0,
						  inFlagdd => outFlagcd0,
						  inFlagcf => outFlagc0,
						  indirdd => outcd0,
						  outworddd => soutworddd,
                          outFlagdd => outFlagdd0);
  
  L05: lcdmux00 port map(clklm => clk0,
                         resetlm => reset0,
						 inFlagclm => outFlagc0,
						 inFlagdlm => outFlagdd0,
						 inwordclm => scomandoc,
						 inworddlm => soutworddd,
						 RWc => sRWc,
						 RSc => sRSc,
						 ENc => sENc,
						 RWd => sRWcd,
						 RSd => sRScd,
						 ENdd => sENcd,
						 outwordlm => sword,
						 RWlm => RW0,
						 RSlm => RS0,
                         ENlm => EN0);

end toplcd0;