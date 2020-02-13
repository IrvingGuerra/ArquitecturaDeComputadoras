library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity lcddata00 is
  port(
       clkd: in std_logic;
	   resetd: in std_logic;
	   inFlagconfigd: in std_logic;
	   inFlagd: in std_logic;
	   incontd: in std_logic_vector(4 downto 0);
	   outwordd: out std_logic_vector(7 downto 0);
       outFlagd: out std_logic);
end lcddata00;

architecture lcddata0 of lcddata00 is
type arraydata is array(0 to 63) of std_logic_vector(7 downto 0);
constant worddata: arraydata:=("01001001",--I
							   "01010010",--R
							   "01010110",--V
							   "01001001",--I
							   "01001110",--N
							   "01000111",--G
							   "00100000",--Espacio
							   "01000111",--G
							   "01010101",--U
							   "01000101",--E
							   "01010010",--R
							   "01010010",--R
							   "01000001",--A
							   "00100000",--Espacio
							   "01001010",--J
							   "01001111",--O
							   "01010010",--R
							   "01000111",--G
							   "01000101",--E
							   "00100000",--Espacio
							   "01000011",--C
							   "01000001",--A
							   "01010011",--S
							   "01010100",--T
							   "01001001",--I
							   "01001100",--L
							   "01001100",--L
							   "01001111",--O
                               others => "00100000");
begin
 pdata: process(clkd)
 begin
   if (clkd'event and clkd = '1') then
     case resetd is
	   when '0' =>
	     outwordd <= "00000000";
		 outFlagd <= '0';
	   when '1' =>
	     case inFlagconfigd is
		   when '0' =>
		     outwordd <= "00000000";
			 outFlagd <= '0';
			 -----------------------
		   when '1' =>
		     case inFlagd is
			   when '0' =>
			     outwordd <= worddata(conv_integer(incontd));
				 outFlagd <= '1';
				 
				 
				 
				 
			   when '1' =>
			     outFlagd <= '0';
			   when others => null;
			 end case;
			 
			 -------------------
		   when others => null;
		   
		   
		 end case;
	   when others => null;
	 end case;
   end if;
 end process pdata;
end lcddata0;