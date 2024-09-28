vlib work

vmap work  work

vlog ../rtl/light_package.sv
vlog ../rtl/conflict_detect.sv
vlog ../rtl/posedge_pulse.sv
vlog ../rtl/negedge_pulse.sv
vlog ../rtl/traffic_light_controller1.sv
vlog ../testbench/*.sv

#replace the following *testbench* with YOUR testbench name
vsim work.lab3_part1_tb -t 1ns

run -all