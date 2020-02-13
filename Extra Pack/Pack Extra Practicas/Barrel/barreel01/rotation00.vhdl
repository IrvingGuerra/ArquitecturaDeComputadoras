library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use packagediv00.all;

entity registro is
port(	
		clr: in std_logic;
		indiv0: in std_logic_vector(3 downto 0); --controlar la velocidad del reloj
		outdiv0: inout std_logic; --pulso de reloj
		Ent: in std_logic_vector(7 downto 0); --entrada
		Key: in std_logic_vector(1 downto 0); --mux
		Sal: out std_logic_vector(7 downto 0); --salida
		limite: in std_logic_vector(3 downto 0);  --limite de las iteraciones 
		cont: inout std_logic_vector(3 downto 0) --Contador de iteraciones
		); 
end registro;

architecture behavioral of Registro is
signal sclk: std_logic;	
signal Q: std_logic_vector(7 downto 0);

begin

	UD00: osc00 port map(osc_int => sclk);
  
	UD01: div00 port map(clkdiv => sclk,
                       indiv => indiv0,
                       outdiv => outdiv0);
  	

	operacion:process (clr, limite)
	begin
	
	if (outdiv0'event and outdiv0 ='1') then

		if (clr = '1' ) then
			
			if(limite >= cont) then
				case Key is
					  when "00" => Q(0) <= Ent(0);
					  when "01" => Q(0) <= Q(0);
					  when "10" => Q(0) <= Q(1);--izquierda
					when others => Q(0) <= Q(7);--derecha
				end case;
				
				case Key is
					  when "00" => Q(1) <= Ent(1);
					  when "01" => Q(1) <= Q(1);
					  when "10" => Q(1) <= Q(2);--izquierda
					when others => Q(1) <= Q(0);--derecha
				end case;
				
				case Key is
					  when "00" => Q(2) <= Ent(2);
					  when "01" => Q(2) <= Q(2);
					  when "10" => Q(2) <= Q(3);--izquierda
					when others => Q(2) <= Q(1);--derecha
				end case;
				
				case Key is
					  when "00" => Q(3) <= Ent(3);
					  when "01" => Q(3) <= Q(3);
					  when "10" => Q(3) <= Q(4);--izquierda
					when others => Q(3) <= Q(2);--derecha
				end case;
				
				case Key is
					  when "00" => Q(4) <= Ent(4);
					  when "01" => Q(4) <= Q(4);
					  when "10" => Q(4) <= Q(5);--izquierda
					when others => Q(4) <= Q(3);--derecha
				end case;
				
				case Key is
					  when "00" => Q(5) <= Ent(5);
					  when "01" => Q(5) <= Q(5);
					  when "10" => Q(5) <= Q(6);--izquierda
					when others => Q(5) <= Q(4);--derecha
				end case;
				
				case Key is
					  when "00" => Q(6) <= Ent(6);
					  when "01" => Q(6) <= Q(6);
					  when "10" => Q(6) <= Q(7);--izquierda
					when others => Q(6) <= Q(5);--derecha
				end case;
				
				case Key is
					  when "00" => Q(7) <= Ent(7);
					  when "01" => Q(7) <= Q(7);
					  when "10" => Q(7) <= Q(0);--izquierda
					when others => Q(7) <= Q(6);--derecha
				end case;
				Sal <= Q;
				cont <= cont + 1;
				--limite <= limite; 
			else
				cont <= cont;
			end if; --limite	
		
		else

			Sal <= "00000000";
			Q <= "00000000";
			cont <= "0000";
			
			
			
		end if; --clear
			
	end if ;--clock

	end process operacion;
end behavioral;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
