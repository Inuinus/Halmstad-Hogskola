onerror {exit -code 1}
vlib work
vcom -work work DE0_NANO.vho
vcom -work work uppgift4.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Block6_vhd_vec_tst
vcd file -direction DE0_NANO.msim.vcd
vcd add -internal Block6_vhd_vec_tst/*
vcd add -internal Block6_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
