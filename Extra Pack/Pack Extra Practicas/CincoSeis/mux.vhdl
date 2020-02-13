library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity mux00 is 
			port(
				I0: in std_logic_vector(2 downto 0);
				I1: in std_logic_vector(2 downto 0);
				I2: in std_logic_vector(2 downto 0);
				IO: in std_logic_vector(2 downto 0);
				S: in std_logic_vector(1 downto 0);
				MUXO: out std_logic_vector(3 downto 0)
				);
end mux00;

architecture mux0 of mux00 is
	begin
			process(I0,I1,I2,S)
			begin
				case S is
					when "00"  	=> MUXO <= I0;
					when "01"  	=> MUXO <= I1;
					when "10" 	=> MUXO <= I2;
					when others => MUXO <= IO;
				end case;
					
			end process;
end mux0;
