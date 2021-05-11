transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/YF/workspace/ELEC5566M-MiniProject-Feng-Yan-528/TEST/Miniproject-TEST {C:/Users/YF/workspace/ELEC5566M-MiniProject-Feng-Yan-528/TEST/Miniproject-TEST/T.v}
vlog -vlog01compat -work work +incdir+C:/Users/YF/workspace/ELEC5566M-MiniProject-Feng-Yan-528/TEST/Miniproject-TEST {C:/Users/YF/workspace/ELEC5566M-MiniProject-Feng-Yan-528/TEST/Miniproject-TEST/F_a.v}

vlog -vlog01compat -work work +incdir+C:/Users/YF/workspace/ELEC5566M-MiniProject-Feng-Yan-528/TEST/Miniproject-TEST/simulation {C:/Users/YF/workspace/ELEC5566M-MiniProject-Feng-Yan-528/TEST/Miniproject-TEST/simulation/T_tb (2).v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  T_tb

add wave *
view structure
view signals
run 60 ns
