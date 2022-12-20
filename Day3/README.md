

# Introduction 
RVMyth code can be obtained from [here](https://github.com/nandithaec/fpga_workshop_collaterals) also in Day 3. This code is taken as a reference and the Design flow is implemented on it.

## RVMyth Intro
A RISC-V ISA is defined as a base integer ISA, which must be present in any implementation, plus optional extensions to the base ISA. Each base integer instruction set is characterized by
   - Width of the integer registers (XLEN)
   - Corresponding size of the address space
   - Number of integer registers (32 in RISC-V)
   
More details on RISC-V ISA can be obtained [here](https://github.com/shivanishah269/risc-v-core).

## Vivado Implementation Results
### Post Synthesis Simultaion result:
![Simulation](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/blob/master/Day3/sim.png)
### Total Slack
![Simulation](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/blob/master/Day3/slack.png)
### Schematic of the Design: 
![Counter_RTL](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/blob/master/Day3/util.png)
### Power Report:
![Power_Rep](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/blob/master/Day3/power.png)
