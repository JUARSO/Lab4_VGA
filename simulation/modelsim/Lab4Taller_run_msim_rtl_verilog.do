transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/arman/Music/Lab4_VGA/db {C:/Users/arman/Music/Lab4_VGA/db/mult_ol01.v}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/sincronizador.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/main.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/generadorMatriz.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/controlador_vga.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/contador_vertical.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/contador_parametrizable.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/contador_horizontal.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/comparador_mayor.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/comparador_igual.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/clock25mh.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/randomCard.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/juego.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/win.sv}
vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/MatrizDeJuego.sv}

vlog -sv -work work +incdir+C:/Users/arman/Music/Lab4_VGA {C:/Users/arman/Music/Lab4_VGA/test_juegocompleto.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Test_juego_completo

add wave *
view structure
view signals
run -all
