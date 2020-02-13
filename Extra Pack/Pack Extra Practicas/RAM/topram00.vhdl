library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageram00.all;

entity topram00 is
  port(
       clk0: inout std_logic;
	   cdiv0: in std_logic_vector(4 downto 0);
	   enable0: in std_logic;
	   rw0: in std_logic;
	   inkey0: in std_logic_vector(3 downto 0);
	   outcrLed0: inout std_logic_vector(3 downto 0);
	   outcrK0: inout std_logic_vector(3 downto 0);
	   outcontW0: inout std_logic_vector(4 downto 0);
	   outcontR0: inout std_logic_vector(4 downto 0);
	   outWord0: out std_logic_vector(6 downto 0);
	   outtransist0: out std_logic_vector(3 downto 0);
       outFlag0: inout std_logic);
end topram00;

architecture topram0 of topram00 is
signal soutcr: std_logic_vector(3 downto 0);
signal soutcodercd: std_logic_vector(6 downto 0);
signal soutwordra: std_logic_vector(6 downto 0);
begin
outcrLed0 <= soutcr;
outcrK0 <= soutcr;
outtransist0 <= "1110";

  RA00: toposc00 port map(oscout0 => clk0,
                          indiv0 => cdiv0);
  
  RA01: contring00 port map(clkcr => clk0,
                            enablecr => enable0,
							rwcr => rw0,
                            outcr => soutcr);
  
  RA02: coder00 port map(clkcd => clk0,
                         enablecd => enable0,
						 rwcd => rw0,
						 inkeycd => inkey0,
						 incontcd => soutcr,
						 outcontwcd => outcontW0,
						 outcodercd => soutcodercd,
                         outFlagcd => outFlag0);
  
  RA03: ram00 port map(clkra => clk0,
                       enablera => enable0,
					   rwra => rw0,
					   indirWra => outcontW0,
					   indirRra => outcontR0,
					   inwordra => soutcodercd,
					   outwordra => soutwordra,
                       inFlagra => outFlag0);
  
  RA04: muxra00 port map(enablem => enable0,
                         rwm => rw0,
						 inwordkeym => soutcodercd,
						 inwordramm => soutwordra,
                         outwordm => outWord0);
  
  RA05: contReadRa00 port map(clkrd => clk0,
                              enablerd => enable0,
							  rwrd => rw0,
							  incontWrd => outcontW0,
                              outcontRrd => outcontR0);

end topram0;