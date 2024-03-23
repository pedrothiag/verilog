transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/souza/OneDrive/Documentos/Projetos/Verilog/Projeto06_Paridade {C:/Users/souza/OneDrive/Documentos/Projetos/Verilog/Projeto06_Paridade/paridade.v}

vlog -vlog01compat -work work +incdir+C:/Users/souza/OneDrive/Documentos/Projetos/Verilog/Projeto06_Paridade {C:/Users/souza/OneDrive/Documentos/Projetos/Verilog/Projeto06_Paridade/paridade_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  paridade_tb

add wave *
view structure
view signals
run -all
