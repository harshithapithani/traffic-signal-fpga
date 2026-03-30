# Smart Traffic Control System (FPGA)
This project implements a traffic control system using Verilog on EDGE Artix-7 FPGA.
## Features
- Traffic-based timer (low/high density)
- Countdown display using 7-segment
- Traffic signal using LEDs
- Emergency override (all LEDs ON)
## Files
- top.v → main module
- timer_select.v → selects timer
- countdown_timer.v → countdown logic
- fsm_module.v → traffic switching
- seven_segment.v → display
- constraints.xdc → pin mapping
- top_tb.v → testbench
