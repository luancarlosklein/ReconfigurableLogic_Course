onerror {quit -f}
vlib work
vlog -work work projeto_final_logica.vo
vlog -work work projeto_final_logica.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.projeto_final_forca_bruta_vlg_vec_tst
vcd file -direction projeto_final_logica.msim.vcd
vcd add -internal projeto_final_forca_bruta_vlg_vec_tst/*
vcd add -internal projeto_final_forca_bruta_vlg_vec_tst/i1/*
add wave /*
run -all
