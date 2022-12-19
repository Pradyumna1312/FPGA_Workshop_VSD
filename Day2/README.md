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
The counter designed for this demo is a simple 4-bit Up-Counter.

