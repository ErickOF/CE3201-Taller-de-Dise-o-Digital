transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4\ -\ Logica\ Secuencial\ y\ Controladores {C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4 - Logica Secuencial y Controladores/Comparator.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4\ -\ Logica\ Secuencial\ y\ Controladores {C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4 - Logica Secuencial y Controladores/VGAController.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4\ -\ Logica\ Secuencial\ y\ Controladores {C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4 - Logica Secuencial y Controladores/ClockDivider.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4\ -\ Logica\ Secuencial\ y\ Controladores {C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4 - Logica Secuencial y Controladores/Counter.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4\ -\ Logica\ Secuencial\ y\ Controladores {C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4 - Logica Secuencial y Controladores/TicTacToe.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4\ -\ Logica\ Secuencial\ y\ Controladores {C:/Users/user/Downloads/Taller-de-Dise-o-Digital-master/Lab4 - Logica Secuencial y Controladores/TicTacToeTest.sv}

