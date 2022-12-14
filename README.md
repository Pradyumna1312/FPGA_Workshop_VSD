# FPGA Workshop by VSD

This Repository contains basic details related to the usage of OpenFPGA Framework and Vivado Framework in a practical manner with the example of a Counter and a RISC-V Processor - RVMyth.

`NOTE: This Repo is a part of a 5-Day Workshop conducted by VLSI System Design (VSD) and the contents are divided Day wise for better understanding.`

# Table of Contents
- [Introduction to FPGA and Vivado Flow (with Counter) -> Day-1](#day1---fpga-and-vivado-flow)
	- [Understanding FPGA Flow](#understanding-fpga-flow)
	- [FPGA Architecture](#fpga-architecture)
	- [Download and installation of Vivado on Ubuntu](#installing-vivado)
	- [Implementing Counter Design](#implementing-counter-design)
- [Introduction to VTR Flow and VPR Flow -> Day-2](#introduction-to-vtr-flow-using-vpr)
	- [Installation of VTR](#installation-of-vtr)
	- [Using VTR for counter](#implementing-counter-design-using-vtr---vpr-flow)
- [Introduction to RVMyth and its implementation with Vivado flow -> Day-3](#introduction-to-rvmyth-and-its-implementation-with-vivado-flow)
	- [RVMyth Intro](#rvmyth-intro)
	- [Vivado Implementation](#vivado-implementation)
- [Introduction to SOFA - (Skywater Opensource FPGAs) -> Day-4](#introduction-to-sofa---skywater-opensource-fpgas)
	- [Installation of SOFA](#installing-sofa)
	- [Using SOFA for counter](#using-sofa-for-counter)
- [Implementation of RVMyth processor with the help of SOFA -> Day-5](#implementation-of-rvmyth-processor-with-sofa)
- [Acknowledgements](#acknowledgements)

* NOTE: The workshop materials can be found [here](https://github.com/nandithaec/fpga_workshop_collaterals)

# Day1 - FPGA and Vivado Flow
Day 1 can be divide into 3 major parts
 1. Understanding FPGA Flow
 2. FPGA Architecture
 3. Installing Vivado (on Ubuntu)
 4. Implementing Counter Design
 
## Understanding FPGA Flow
FPGA Flow can be divided into several phases as depicted in the figure

![FPGA-Design-Flow](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/blob/master/Day1/Classical-FPGA-design-flow.png "FPGA-Design Flow")


`Image Source : Pasca, Bogdan. (2011). High-performance floating-point computing on reconfigurable circuits. `

Detailed content is present [here](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/tree/main/Day1#readme)

## FPGA Architecture

A usual FPGA-Field Programmable Logic Array implements logic designs with the help of Look-up-tables (LUTs), Flip-FLops and Configurable Logic Blocks(CLBs).
Flip flops are bistable monovibrators which can be used for storing 1 bit of data with the help of control signals commonly clock and reset. These Flip-Flops are used to store bits which configure the FPGA.

So what are CLBs? LUTs?
For more details [refer here](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/tree/main/Day1#readme)


## Installing Vivado

Installing Vivado can be broken into 3 steps for ubuntu users.

1. Download Self extracting files from Xilinx Vivado website.
The link is [here](https://www.xilinx.com/support/download.html)
* Windows users can download windows extracting file and run the installation wizard

2. Open the .Deb file using package installer of your choice and install the file.

3. Install drivers 
 
	Navigate to the address `/Vivado/20xx.x/data/xicom/cable_drivers/lin64/install_script/install_drivers on terminal`

Enter the commands:

		./install_drivers and wait for completion of installation. 
		sudo adduser $USER dialout 	

## Implementing Counter Design
The counter designed for this demo is a simple 8-bit Up-Counter with Clock division circuit.
Refer [this](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/tree/main/Day1#readme) for detailed results


# Introduction to VTR Flow using VPR
- The Verilog-to-Routing (VTR) project is a world-wide collaborative effort to provide an open-source framework for conducting FPGA architecture and CAD research and development. The VTR design flow takes as input a Verilog description of a digital circuit, and a description of the target FPGA architecture. It then performs:

    - Elaboration & Synthesis (ODIN II)
    - Logic Optimization & Technology Mapping (ABC)
    - Packing, Placement, Routing & Timing Analysis (VPR)

	to generate FPGA speed and area results. VTR includes a set of benchmark designs known to work with the design flow.

- VPR (Versatile Place and Route) is an open source academic CAD tool designed for the exploration of new FPGA architectures and CAD algorithms, at the packing, placement and routing phases of the CAD flow. Since its public introduction, VPR has been used extensively in many academic projects partly because it is robust, well documented, easy-to-use, and can flexibly target a range of architectures.

	VPR takes, as input, a description of an FPGA architecture along with a technology-mapped user circuit. It then performs packing, placement, and routing to map the circuit onto the FPGA. The output of VPR includes the FPGA configuration needed to implement the circuit and statistics about the final mapped design (eg. critical path delay, area, etc).

Detailed Documentation for VTR Flow using VPR can be found [here](https://docs.verilogtorouting.org/en/latest/quickstart/)

## Installation of VTR
Step 1: Clone the VTR git repo using

	git clone https://github.com/verilog-to-routing/vtr-verilog-to-routing.git

Step 2: VTR requires several system packages. So, run the following script to install the required packages from the top-level directory on a Ubuntu system and to make the file:

	./install_apt_packages.sh
	make
	
Make command will build all the required tools.

### Verifying proper installation
To verify proper installation run the following command
	
	./vtr_flow/scripts/run_vtr_task.py regression_tests/vtr_reg_basic/basic_timing
	
Ideally no errors should pop-up

## Implementing Counter design using VTR-VPR Flow

The counter designed for this demo is a simple 4-bit Up-Counter
.
Refer [this](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/tree/main/Day2#readme) for detailed results


# Introduction to RVMyth and its implementation with Vivado flow
RVMyth code can be obtained from [here](https://github.com/nandithaec/fpga_workshop_collaterals) also in Day 3. This code is taken as a reference and the Design flow is implemented on it.

## RVMyth Intro
A RISC-V ISA is defined as a base integer ISA, which must be present in any implementation, plus optional extensions to the base ISA. Each base integer instruction set is characterized by
   - Width of the integer registers (XLEN)
   - Corresponding size of the address space
   - Number of integer registers (32 in RISC-V)
   
More details on RISC-V ISA can be obtained [here](https://github.com/shivanishah269/risc-v-core).

## Vivado Implementation
The counter designed for this demo is a simple 4-bit Up-Counter.

Refer [this](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/tree/main/Day3#readme) for detailed results


# Introduction to SOFA - Skywater Opensource FPGAs

## Installing SOFA
SOFA can be installed by directly cloning the directory from github. Another important fact is that OpenFPGA is a must condition for SOFA to run. 
Therefore,

		git clone https://github.com/LNIS-Projects/OpenFPGA.git
		cd OpenFPGA
		make all

Now, installing SOFA

		export OPENFPGA_PATH=<path_to_openfpga_root>
		# Clone the SOFA repository
		git clone https://github.com/lnis-uofu/SOFA.git


## Using SOFA for counter 
The counter designed for this demo is a simple 8-bit Up-Counter with Clock division circuit.
Refer [this](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/tree/main/Day4#readme) for detailed results


# Implementation of RVMyth processor with SOFA
Same as counter any other verilog file can be run through OpenFPGA. So, taking RVMyth as the verilog file the whole flow is run.
SOFA Implementation of RVMyth design can be referred [this](https://github.com/Pradyumna1312/FPGA_Workshop_VSD/tree/main/Day5#readme).


# Acknowledgements
- [Kunal Ghosh](https://github.com/kunalg123), Co-founder, VSD Corp. Pvt. Ltd.
- [Prof. Nanditha Rao](https://github.com/nandithaec), Assistant Professor, IIIT - Bangalore
