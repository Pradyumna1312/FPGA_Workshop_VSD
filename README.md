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

* NOTE: The workshop materials can be found [here](https://github.com/nandithaec/fpga_workshop_collaterals)

# Day1 - FPGA and Vivado Flow
Day 1 can be divide into 3 major parts
 1. Understanding FPGA Flow
 2. FPGA Architecture
 3. Installing Vivado (on Ubuntu)
 4. Implementing Counter Design
 
## Understanding FPGA Flow
FPGA Flow can be divided into several phases as depicted in the figure

-- figure
--- source
Detailed content is present [here]()

## FPGA Architecture

A usual FPGA-Field Programmable Logic Array implements logic designs with the help of Look-up-tables (LUTs), Flip-FLops and Configurable Logic Blocks(CLBs).
Flip flops are bistable monovibrators which can be used for storing 1 bit of data with the help of control signals commonly clock and reset. These Flip-Flops are used to store bits which configure the FPGA.

So what are CLBs? LUTs?
CLBs stands for Configurable Logic Blocks which s the name implies are Logic Blocks which can be configured by giving some inputs as it was modeled. 
So how does it get configured? These CLBs contain Logic gates and LUTs which with the help of 

## Installing Vivado (on Ubuntu)

Installing Vivado can be broken into 3 steps for ubuntu users.

1. Download Self extracting files from Xilinx Vivado website.
The link is [here](https://www.xilinx.com/support/download.html)
* Windows users can download windows extracting file and run the installation wizard

2. Open the .Deb file using package installer of your choice and install the file.

3. Install drivers 
 
Navigate to the address `/Vivado/20xx.x/data/xicom/cable_drivers/lin64/install_script/install_drivers 
on terminal`

`Enter the command: ./install_drivers and wait for completion of installation. 
now enter: sudo adduser $USER dialout `

## Implementing Counter Design
The counter designed for this demo is a simple 8-bit Up-Counter. 

The design of the counter is as shown.

# Introduction to VTR Flow and VPR Flow

## Installation of VTR
## Installation of VPR

### Verifying proper installation
## Implementing Counter design using VTR-VPR Flow

## Results



# Introduction to RVMyth and its implementation with Vivado flow
## RVMyth Intro
## Vivado Implementation
## Results


# Introduction to SOFA - (Skywater Opensource FPGAs) and its implementation using counter as a module
## Installation of SOFA
### Verifying proper installation
## Using SOFA for counter 
## Results

# Implementation of RVMyth processor with the help of SOFA
## SOFA Implementation
## Results


# Acknowledgements
- [Kunal Ghosh](https://github.com/kunalg123), Co-founder, VSD Corp. Pvt. Ltd.
- [Prof. Nanditha Rao](https://github.com/nandithaec), Assistant Professor, IIIT - Bangalore
