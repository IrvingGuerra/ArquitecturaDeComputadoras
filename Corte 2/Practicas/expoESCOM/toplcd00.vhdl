library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagelcd00.all;

entity toplcd00 is
  port(
	   -- Variables contring 
	   outcr00 : inout std_logic_vector(3 downto 0);
	   --Variables decodifica
	   outlevel00: out std_logic_vector(23 downto 0);
	   outfan00: out std_logic_vector(1 downto 0);
	   inadc00: in std_logic_vector(7 downto 0);
	   out7seg00: out std_logic_vector(6 downto 0);
	   ------------------
       clk00: inout std_logic;
	   cdiv00: in std_logic_vector(4 downto 0);
	   reset0: in std_logic;
	   soutFlagcontconfig0: inout std_logic;
	   outFlagconfig0: inout std_logic;
	   outFlagdata0: inout std_logic;
	   outFlagcontdata0: inout std_logic;
	   outword0: out std_logic_vector(7 downto 0);
	   outwordled0: out std_logic_vector(7 downto 0);
	   outcontconfig0: inout std_logic_vector(4 downto 0);
	   outcontdata0: inout std_logic_vector(4 downto 0);
	   RW0: out std_logic;
	   RS0: out std_logic;
       EN0: out std_logic;
	   ENled0: out std_logic);
end toplcd00;

architecture toplcd0 of toplcd00 is
signal soutword0: std_logic_vector(7 downto 0);
signal souflagcc: std_logic;
signal swordconfig: std_logic_vector(7 downto 0);
signal sworddata: std_logic_vector(7 downto 0);
signal sRWc, sRSc, sENc: std_logic;
signal sRWd, sRSd, sENd: std_logic;
signal sEN0: std_logic;
signal auxCONT : std_logic_vector(3 downto 0);
signal auxiliar : std_logic_vector(3 downto 0);
begin

outword0 <= soutword0;
outwordled0 <= soutword0;
EN0 <= sEN0;
ENled0 <= sEN0;


  L00: toposc00 port map(oscout0 => clk00,
                         indiv0 => cdiv00);
  
  L01: lcdContConfig00 port map(clkcc => clk00,
                                resetcc => reset0,
								inFlagcc => outFlagconfig0,
								outcontcc => outcontconfig0,
                                outFlagcc => soutFlagcontconfig0);
  
  L02: lcdconfig00 port map(clkc => clk00,
                            resetc => reset0,
							inFlagc => soutFlagcontconfig0,
							incontc => outcontconfig0,
							outWordc => swordconfig,
							outFlagc => outFlagconfig0,
							RWc => sRWc,
							RSc => sRSc,
                            ENc => sENc);
  
  L03: lcdcontdata00 port map(clkcd => clk00,
                              resetcd => reset0,
							  inFlagconfigcd => outFlagconfig0,
							  inFlagdatacd => outFlagdata0,
							  outcontcd => outcontdata0,
							  outFlagcd => outFlagcontdata0,
							  RWcd => sRWd,
							  RScd => sRSd,
                              ENcd => sENd);
  
  L04: lcddata00 port map(clkd => clk00,
						  resetd => reset0,
						  inFlagconfigd => outFlagconfig0,
						  inFlagd => outFlagcontdata0,
						  incontd => outcontdata0,
						  outwordd => sworddata,
                          outFlagd => outFlagdata0);
  
  L05: lcdmux00 port map(inFlagmuxconfig => outFlagconfig0,
                         resetmux => reset0,
                         inwordconfig => swordconfig,
						 inworddata => sworddata,
						 inRWc => sRWc,
						 inRSc => sRSc,
						 inENc => sENc,
						 inRWd => sRWd,
						 inRSd => sRSd,
						 inENd => sENd,
						 outwordmux => soutword0,
						 RWm => RW0,
						 RSm => RS0,
                         ENm => sEN0);
						  						
  L07: contring00 port map(clkcr => clk00, 
	                       resetcr => reset0,  
						   outcr0 => outcr00);
	
  L08: decodifica00 port map(
							outlevel => outlevel00,
							outfan => outfan00,
							inadc0 => inadc00, 
							inanillo0 => outcr00,
							out7seg0 => out7seg00
							);
end toplcd0;