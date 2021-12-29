###############################################################################
# Created by write_sdc
# Sat Dec 25 14:41:38 2021
###############################################################################
current_design asic_watch
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name sysclk_i -period 10.0000 [get_ports {sysclk_i}]
set_clock_transition 0.1500 [get_clocks {sysclk_i}]
set_clock_uncertainty 0.2500 sysclk_i
set_propagated_clock [get_clocks {sysclk_i}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[0]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[10]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[11]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[1]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[2]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[3]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[4]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[5]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[6]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[7]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[8]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {cfg_i[9]}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {dvalid_i}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {rstn_i}]
set_input_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {smode_i}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_hxxx[0]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_hxxx[1]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_hxxx[2]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_hxxx[3]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_hxxx[4]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_hxxx[5]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_hxxx[6]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xhxx[0]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xhxx[1]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xhxx[2]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xhxx[3]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xhxx[4]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xhxx[5]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xhxx[6]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxmx[0]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxmx[1]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxmx[2]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxmx[3]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxmx[4]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxmx[5]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxmx[6]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxxm[0]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxxm[1]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxxm[2]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxxm[3]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxxm[4]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxxm[5]}]
set_output_delay 2.0000 -clock [get_clocks {sysclk_i}] -add_delay [get_ports {segment_xxxm[6]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {segment_hxxx[6]}]
set_load -pin_load 0.0334 [get_ports {segment_hxxx[5]}]
set_load -pin_load 0.0334 [get_ports {segment_hxxx[4]}]
set_load -pin_load 0.0334 [get_ports {segment_hxxx[3]}]
set_load -pin_load 0.0334 [get_ports {segment_hxxx[2]}]
set_load -pin_load 0.0334 [get_ports {segment_hxxx[1]}]
set_load -pin_load 0.0334 [get_ports {segment_hxxx[0]}]
set_load -pin_load 0.0334 [get_ports {segment_xhxx[6]}]
set_load -pin_load 0.0334 [get_ports {segment_xhxx[5]}]
set_load -pin_load 0.0334 [get_ports {segment_xhxx[4]}]
set_load -pin_load 0.0334 [get_ports {segment_xhxx[3]}]
set_load -pin_load 0.0334 [get_ports {segment_xhxx[2]}]
set_load -pin_load 0.0334 [get_ports {segment_xhxx[1]}]
set_load -pin_load 0.0334 [get_ports {segment_xhxx[0]}]
set_load -pin_load 0.0334 [get_ports {segment_xxmx[6]}]
set_load -pin_load 0.0334 [get_ports {segment_xxmx[5]}]
set_load -pin_load 0.0334 [get_ports {segment_xxmx[4]}]
set_load -pin_load 0.0334 [get_ports {segment_xxmx[3]}]
set_load -pin_load 0.0334 [get_ports {segment_xxmx[2]}]
set_load -pin_load 0.0334 [get_ports {segment_xxmx[1]}]
set_load -pin_load 0.0334 [get_ports {segment_xxmx[0]}]
set_load -pin_load 0.0334 [get_ports {segment_xxxm[6]}]
set_load -pin_load 0.0334 [get_ports {segment_xxxm[5]}]
set_load -pin_load 0.0334 [get_ports {segment_xxxm[4]}]
set_load -pin_load 0.0334 [get_ports {segment_xxxm[3]}]
set_load -pin_load 0.0334 [get_ports {segment_xxxm[2]}]
set_load -pin_load 0.0334 [get_ports {segment_xxxm[1]}]
set_load -pin_load 0.0334 [get_ports {segment_xxxm[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dvalid_i}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rstn_i}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {smode_i}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sysclk_i}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cfg_i[0]}]
set_timing_derate -early 0.9000
set_timing_derate -late 1.1000
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
