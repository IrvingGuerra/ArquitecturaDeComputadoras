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
constant worddata: arraydata:=("00100000",--espacio
                               "00100001",--!
							   "01000101",--E
							   "01011000",--X
							   "01010000",--P
							   "01001111",--O
							   "00100000",--espacio
							   "01000101",--E
							   "01010011",--S
							   "01000011",--C
							   "01001111",--O
							   "01001101",--M
							   "00100001",--!
							   "00100000",--espacio
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
		   when '1' =>
		     case inFlagd is
			   when '0' =>
			     outwordd <= worddata(conv_integer(incontd));
				 outFlagd <= '1';
			   when '1' =>
			     outFlagd <= '0';
			   when others => null;
			 end case;
		   when others => null;
		 end case;
	   when others => null;
	 end case;
   end if;
 end process pdata;
end lcddata0;