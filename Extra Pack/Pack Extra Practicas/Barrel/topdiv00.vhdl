library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagediv00.all;

entity topdiv00 is
  port(
	   indiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic
	   );
end topdiv00;

architecture topdiv0 of topdiv00 is
signal sclk: std_logic;
begin
  UD00: osc00 port map(osc_int => sclk);
  
  UD01: div00 port map(clkdiv => sclk,
                       indiv => indiv0,
                       outdiv => outdiv0);
 --El pulso de reloj sale en outdiv0
 --indiv0 controla que tan r�pido va, puede tomar valores de "1000","1100","1110","1111", siendo el �ltimo el pulso m�s r�pido
 --indiv0 lo pueden poner como se�al de la arquitectura y funcionar�a igual
end topdiv0;