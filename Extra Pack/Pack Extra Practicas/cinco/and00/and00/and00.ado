setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Diego EG/Desktop/ArqPracticas/cinco/and00/and00/and00.adf"]} { 
	design create and00 "C:/Users/Diego EG/Desktop/ArqPracticas/cinco/and00"
  set newDesign 1
}
design open "C:/Users/Diego EG/Desktop/ArqPracticas/cinco/and00/and00"
cd "C:/Users/Diego EG/Desktop/ArqPracticas/cinco/and00"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Diego EG/Desktop/ArqPracticas/cinco/and00/and00.vhdl"
vlib "C:/Users/Diego EG/Desktop/ArqPracticas/cinco/and00/and00/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Diego EG/Desktop/ArqPracticas/cinco/and00/and00.vhdl"
entity and00
vsim  +access +r and00   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
