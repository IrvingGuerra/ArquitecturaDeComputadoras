#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcd00/launch_synplify.tcl
#-- Written on Tue Jun  5 10:17:15 2018

project -close
set filename "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcd00/lcd00_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HE
set_option -package TG144C
set_option -speed_grade -4

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency auto
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	set_option -frequency 1
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
}
#-- add_file options
add_file -vhdl "C:/lscc/diamond/3.10_x64/cae_library/synthesis/vhdl/machxo2.vhd"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/osc00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/div00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/packageosc00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/toposc00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcdconfig00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcddata00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcdmux00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcdcontconfig00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcdcontdata00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/hotWheel00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/contring00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/decodifica00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/packagelcd00.vhdl"
add_file -vhdl -lib "work" "C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/toplcd00.vhdl"
#-- top module name
set_option -top_module {}
project -result_file {C:/Users/Jorge Castillo/Documents/ESCOM/5/Arquitectura/2/Practicas/expoESCOM/lcd00/lcd00.edi}
project -save "$filename"
