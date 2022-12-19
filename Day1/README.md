You can jump to results through [this](#results)
# Understanding FPGA Flow
FPGA Flow can be divided into several phases as depicted in the figure

![FPGA-Design-Flow](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/blob/master/Day1/Classical-FPGA-design-flow.png "FPGA-Design Flow")


`Image Source : Pasca, Bogdan. (2011). High-performance floating-point computing on reconfigurable circuits. `

### Design Entry:
This phase refers to the conversion of given specifications and constraints into design formats which are accepted by the tool or framework used for further processes. The three type of Modelings which are majorly used 
 1. Behavioral modeling
 2. Dataflow modeling
 3. Structural modeling

Most common Design Entry Formats include Verilog and VHDL. This project uses Verilog for Synthesisable RTL Design Entry.
	
### Functional Simulation:
This phase involves development of test environment which can be used for verifying the design.
Testbenches are verilog files which are used for verifying functional integrity of the design and is used in this project.

### Synthesis:
This phase involves conversion of verilog designs into gate-level netlists which support implementation of the same in the Framework. This step involves input of verilog design files along with constraints files(optional) such as Timing, Pin etc.

### Design Implementation
This phase involves 3 steps
 1. Translation or Elaboration of the design
 2. Mapping
 3. Placement and Routing
 
### Timing Analysis/ Simulation
STA-Static Timing Analysis is done to the design which is required to ensure that the design has bounded period and duty cycle, and of a known phase relationship to other clock signals of interest.                         


### Bitstream Generation
Bitstearm generation refers to the conversion of the design into a binary file for configuring the FPGA board. It contains information related to all the configurable parts of board which can be used to realize the logical design entered at [Design Entry](#design-entry)

# FPGA Architecture

A usual FPGA-Field Programmable Logic Array implements logic designs with the help of Look-up-tables (LUTs), Flip-FLops and Configurable Logic Blocks(CLBs).
Flip flops are bistable monovibrators which can be used for storing 1 bit of data with the help of control signals commonly clock and reset. These Flip-Flops are used to store bits which configure the FPGA.

So what are CLBs? LUTs?
For more details [refer here]()
CLBs stands for Configurable Logic Blocks which s the name implies are Logic Blocks which can be configured by giving some inputs as it was modeled. 
So how does it get configured? These CLBs contain Logic gates and LUTs which brings in the quality of reconfigurability.


# Results
Schematic of the Design: 
![Counter_RTL](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/blob/master/Day1/Counter-with-Clkdiv.png)
