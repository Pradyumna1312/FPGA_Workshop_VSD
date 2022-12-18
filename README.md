# FPGA Workshop by VSD

This Repository contains basic details related to the usage of OpenFPGA Framework and Vivado Framework in a practical manner with the example of a Counter and a RISC-V Processor - RVMyth.

`NOTE: This Repo is a part of a 5-Day Workshop conducted by VLSI System Design (VSD) and the contents are divided Day wise for better understanding.`

# Table of Contents
- [Introduction to FPGA and Vivado Flow (with Counter) -> Day-1](#day1---fpga-and-vivado-flow)
	- [Understanding FPGA Flow](#understanding-fpga-flow)
	- [Download and installation of Vivado on Ubuntu](#)
	- [Implementing Counter Design](#)
- [Introduction to VTR Flow and VPR Flow](#)
	- [Installation of VTR](#)
	- [Using SOFA for counter](#)
	- [Results](#)
- [Introduction to RVMyth and its implementation with Vivado flow](#)
	- [RVMyth Intro]()
	- [Vivado Implementation]()
	- [Results]()
- [Introduction to SOFA - (Skywater Opensource FPGAs) and its implementation using counter as a module](#Day4)
	- [Installation of SOFA](#)
	- [Verifying proper installation](#)
	- [Using SOFA for counter](#)
	- [Results](#)
- [Implementation of RVMyth processor with the help of SOFA](#Day5)
	- [SOFA Implementation]()
	- [Results]()
- [Acknowledgements](#Acknowledgements)

` NOTE: The workshop materials can be found [here](https://github.com/nandithaec/fpga_workshop_collaterals)`

# Day1 - FPGA and Vivado Flow
Day 1 can be divide into 3 major parts
 1. Understanding FPGA Flow
 2. FPGA Architecture
 3. Installing Vivado (on Ubuntu)
 4. Implementing Counter Design
 
# Understanding FPGA Flow
FPGA Flow can be divided into several phases as depicted in the figure

-- figure
--- source

## Design Entry:
This phase refers to the conversion of given specifications and constraints into design formats which are accepted by the tool or framework used for further processes. The three type of Modelings which are majorly used 
 1. Behavioral modeling
 2. Dataflow modeling
 3. Structural modeling
	Most common Design Entry Formats include Verilog and VHDL. This project uses Verilog for Synthesisable RTL Design Entry.
	
## Functional Simulation:
This phase involves development of test environment which can be used for verifying the design.
Testbenches are verilog files which are used for verifying functional integrity of the design and is used in this project.

## Synthesis:
This phase involves conversion of verilog designs into gate-level netlists which support implementation of the same in the Framework. This step involves input of verilog design files along with constraints files(optional) such as Timing, Pin etc.

## Design Implementation
This phase involves 3 steps
 1. Translation or Elaboration of the design
 2. Placement
 3. Routing
 
## Static Timing Analysis

## Bitstream Generation


# FPGA Architecture
A usual FPGA-Field Programmable Logic Array implements logic designs with the help of Look-up-tables (LUTs), Flip-FLops and Configurable Logic Blocks(CLBs).

# Installing Vivado (on Ubuntu)

# Implementing Counter Design

# Introduction to VTR Flow and VPR Flow
# Installation of VTR
# Installation of VPR

## Verifying proper installation
# Implementing Counter design using VTR-VPR Flow

# Results



# Introduction to RVMyth and its implementation with Vivado flow
# RVMyth Intro
# Vivado Implementation
# Results


# Introduction to SOFA - (Skywater Opensource FPGAs) and its implementation using counter as a module
# Installation of SOFA
# Verifying proper installation
# Using SOFA for counter 
# Results

# Implementation of RVMyth processor with the help of SOFA
# SOFA Implementation
# Results


# Acknowledgements
- [Kunal Ghosh](https://github.com/kunalg123), Co-founder, VSD Corp. Pvt. Ltd.
- [Prof. Nanditha Rao](https://github.com/nandithaec), Assistant Professor, IIIT - Bangalore
