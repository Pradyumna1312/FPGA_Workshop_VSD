# Introduction to SOFA - (Skywater Opensource FPGAs) 
Skywater Opensource FpgA (SOFA) is a fully open-source embedded FPGA IP library, from the architecture description to production ready layouts.
OpenFPGA frameworks works in parallel with SOFA and its offical documentation can be found [here](https://github.com/lnis-uofu/OpenFPGA). The official documentation can be obtained [here](https://skywater-openfpga.readthedocs.io/en/latest/).

## Installation of SOFA
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
The counter designed for this demo is a simple 4-bit Up-Counter.

To bechmark your own design
Copy your verilog file to FPGA1212_QLSOFA_HD_task/BENCHMARK directory and modify FPGA1212_QLSOFA_HD_task/config/task_simulation.conf file.

	<pwd>/SOFA/FPGA1212_QLSOFA_HD_PNR
	<pwd>/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task


Modify FPGA1212_QLSOFA_HD_task/config/task_simulation.conf file: Line 32 and 35: bench0 and bench_top


### ======== Run example OpenFPGA Task ========
	make runOpenFPGA

### ======== To view the results ========
	
	cat FPGA1212_QLSOFA_HD_task/latest/task_result.csv
	<pwd>/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/latest/vpr_arch/up_counter/MIN_ROUTE_CHAN_WIDTH


### ======== To view detailed log ========
	cat codeopen FPGA1212_QLSOFA_HD_task/latest/vpr_arch/top/MIN_ROUTE_CHAN_WIDTH/**/openfpgashell.log


Other output files:
	
	<pwd>/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/latest/vpr_arch/up_counter/MIN_ROUTE_CHAN_WIDTH

SOFA based Counter run gives timing and power reports at different locations


#Counter timing
check the generate_testbench_openfpga script for vpr commands as listed below:

	vpr ${VPR_ARCH_FILE} ${VPR_TESTBENCH_BLIF} \
	--clock_modeling ideal \ 
	--device ${OPENFPGA_VPR_DEVICE_LAYOUT} \
	--route_chan_width ${OPENFPGA_VPR_ROUTE_CHAN_WIDTH} \
	--absorb_buffer_luts off \
	--sdc_file < >/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/BENCHMARK/counter_new.sdc 

#Counter power

	#vpr ${VPR_ARCH_FILE} ${VPR_TESTBENCH_BLIF} \
	--clock_modeling ideal \
	--device ${OPENFPGA_VPR_DEVICE_LAYOUT} \
	--route_chan_width ${OPENFPGA_VPR_ROUTE_CHAN_WIDTH} \
	--absorb_buffer_luts off   --power --activity_file \
	<pwd>/osfpga/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/latest/vpr_arch/up_counter/MIN_ROUTE_CHAN_WIDTH/up_counter_ace_out.act   --tech_properties \
	<pwd>/vtr-verilog-to-routing/vtr_flow/tech/PTM_45nm/45nm.xml

Timing report setup and hold output files:

	<pwd>/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/latest/vpr_arch/up_counter/MIN_ROUTE_CHAN_WIDTH

