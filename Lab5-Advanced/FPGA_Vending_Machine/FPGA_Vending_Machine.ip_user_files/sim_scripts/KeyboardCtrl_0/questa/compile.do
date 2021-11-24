vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../FPGA_Vending_Machine.gen/sources_1/ip/KeyboardCtrl_0/src/Ps2Interface.v" \
"../../../../FPGA_Vending_Machine.gen/sources_1/ip/KeyboardCtrl_0/src/KeyboardCtrl.v" \
"../../../../FPGA_Vending_Machine.gen/sources_1/ip/KeyboardCtrl_0/sim/KeyboardCtrl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

