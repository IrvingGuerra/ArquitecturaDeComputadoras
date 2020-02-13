library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity nor00 is
				port(
					Ano: in std_logic_vector(7 downto 0);
					Bno: in std_logic_vector(7 downto 0);
					Yno: out std_logic_vector(7 downto 0)
					);
end nor00;

architecture nor0 of nor00 is 
	begin
					Yno <= not (Ano or Bno);
end nor0;