transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/Lab4 {C:/Users/arman/Documents/1Semestre2022/Lab4/randomCard.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/Lab4 {C:/Users/arman/Documents/1Semestre2022/Lab4/juego.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/Lab4 {C:/Users/arman/Documents/1Semestre2022/Lab4/win.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/Lab4 {C:/Users/arman/Documents/1Semestre2022/Lab4/MatrizDeJuego.sv}

vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/Lab4 {C:/Users/arman/Documents/1Semestre2022/Lab4/test_juego.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testJuego

add wave *
view structure
view signals
run -all
