library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder4bit00.all;

entity adder4bit00 is port(
	SL: in std_logic;
	Ai0: in std_logic;
	Ai1: in std_logic;
	Ai2: in std_logic;
	Ai3: in std_logic;
	Bi0: in std_logic;
	Bi1: in std_logic;
	Bi2: in std_logic;
	Bi3: in std_logic;
	
	So0: out std_logic;
	So1: out std_logic;
	So2: out std_logic;
	So3: out std_logic;
	
	LED: out std_logic
	
);
end adder4bit00;

architecture adder4bit0 of adder4bit00 is
signal SB0,SB1,SB2,SB3,CS0,CS1,CS2,CS3,CS4,SA0,SA1,SA2,SA3,AUX: std_logic;
begin
	X00: xor00 port map(
		Ax => SL,
		Bx => Bi0,
		Sx => SB0
	);
	
	X01: xor00 port map(
		Ax => SL,
		Bx => Bi1,
		Sx => SB1
	);
	
	X02: xor00 port map(
		Ax => SL,
		Bx => Bi2,
		Sx => SB2
	);
	
	X03: xor00 port map(
		Ax => SL,
		Bx => Bi3,
		Sx => SB3
	);
	
	F00: fa00 port map(
		A00 => Ai0,
		B00 => SB0,
		C00 => SL,
		S00 => SA0,
		C01 => CS1
	);
	
	F01: fa00 port map(
		A00 => Ai1,
		B00 => SB1,
		C00 => CS1,
		S00 => SA1,
		C01 => CS2
	);
	
	F02: fa00 port map(
		A00 => Ai2,
		B00 => SB2,
		C00 => CS2,
		S00 => SA2,
		C01 => CS3
	);
	
	F03: fa00 port map(
		A00 => Ai3,
		B00 => SB3,
		C00 => CS3,
		S00 => SA3,
		C01 => CS4
	);
	
	A00: and00 port map(
		Aa => AUX,
		Ba => SA0,
		Sa => So0
	);
	
	A01: and00 port map(
		Aa => AUX,
		Ba => SA1,
		Sa => So1
	);
	
	A02: and00 port map(
		Aa => AUX,
		Ba => SA2,
		Sa => So2
	);
	
	A03: and00 port map(
		Aa => AUX,
		Ba => SA3,
		Sa => So3
	);
	
	X04: xor00 port map(
		Ax => CS3,
		Bx => CS4,
		Sx => LED
	);
	XN00: xnor00 port map(
		Axn => CS4,
		Bxn => CS3,
		Yxn => AUX
	);
end adder4bit0;