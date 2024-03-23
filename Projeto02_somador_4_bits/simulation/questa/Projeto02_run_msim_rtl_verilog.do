transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/souza/Documents/Lab_CD/Projeto02 {C:/Users/souza/Documents/Lab_CD/Projeto02/somadorcompleto.v}
vlog -vlog01compat -work work +incdir+C:/Users/souza/Documents/Lab_CD/Projeto02 {C:/Users/souza/Documents/Lab_CD/Projeto02/somador4b.v}

vlog -vlog01compat -work work +incdir+C:/Users/souza/Documents/Lab_CD/Projeto02 {C:/Users/souza/Documents/Lab_CD/Projeto02/somador4b_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  somador4b_tb

add wave *
view structure
view signals
run -all