# Introduction to SOFA - (Skywater Opensource FPGAs) 

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

### Verifying proper installation
## Using SOFA for counter 
The counter designed for this demo is a simple 4-bit Up-Counter.

