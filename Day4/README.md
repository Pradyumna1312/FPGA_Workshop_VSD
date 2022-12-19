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

