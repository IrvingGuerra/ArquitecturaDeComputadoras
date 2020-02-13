library ieee;
use ieee.std_logic_1164.all;
library lattice;
-- arith.all;
--ansigned,all;
--Ai+Bi
--Ai-Bi
use lattice.components.all;
library machxo2;
use machxo2.all;
use packageadder4bit00.all;

entity topadder4bit00 is
port(
		sl: in std_logic;
		Ai: in std_logic_vector(3 downto 0);
		Bi: in std_logic_vector(3 downto 0);
		So: out std_logic_vector(3 downto 0);
		LED: out std_logic);
end topadder4bit00;

architecture topadder4bit0 of topadder4bit00 is
signal SB, CS, SA: std_logic_vector(3 downto 0);
signal se: std_logic;
begin

	UAD00: xor00 port map(Bx => Bi(3),
							Ax => SL,
							Yx => SB(3));
	
	UAD01: xor00 port map(Bx => Bi(2),
							Ax => SL,
							Yx => SB(2));
	
	UAD02: xor00 port map(Bx => Bi(1),
							Ax => SL,
							Yx => SB(1));
	
	UAD03: xor00 port map(Bx => Bi(0),
							Ax => SL,
							Yx => SB(0));
	
	UAD04: topfa00 port map( C00 => SL,
							A00 => Ai(0),
							B00 => SB(0),
							C01 => CS(0),
							S00 => SA(0));
	
	UAD05: topfa00 port map(C00 => CS(0),
							A00 => Ai(1),
							B00 => SB(1),
							C01 => CS(1),
							S00 => SA(1));
	
	UAD06: topfa00 port map(C00 => CS(1),
							A00 => Ai(2),
							B00 => SB(2),
							C01 => CS(2),
							S00 => SA(2));
	
	UAD07: topfa00 port map(C00 => CS(2),
							A00 => Ai(3),
							B00 => SB(3),
							C01 => CS(3),
							S00 => SA(3));
	
	UAD08: xor00 port map(Ax => CS(3),
							Bx => CS(2),
							Yx => LED);
	
	UAD09: xnor00 port map(Anx => CS(3),
							Bnx => CS(2),
							Ynx => se);
	
	UAD10: and00 port map(Aa => se,
							Ba => SA(0),
							Ya => So(0));
	
	UAD11: and00 port map(Aa => se,
							Ba => SA(1),
							Ya => So(1));
	
	UAD12: and00 port map(Aa => se,
							Ba => SA(2),
							Ya => So(2));
	
	UAD13: and00 port map(Aa => se,
							Ba => SA(3),
							Ya => So(3));


end topadder4bit0;