transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {Lab4Taller.svo}

vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/Lab4 {C:/Users/arman/Documents/1Semestre2022/Lab4/pruebaContador.sv}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  Test1

add wave *
view structure
view signals
run -all
