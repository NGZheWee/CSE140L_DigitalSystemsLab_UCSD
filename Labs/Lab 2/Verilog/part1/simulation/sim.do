vlib work

vmap work  work

vlog ../rtl/*.sv
vlog ../testbench/*.sv

#replace the following *testbench* with YOUR testbench name
vsim work.lab2_tb -t 1ns

run -all