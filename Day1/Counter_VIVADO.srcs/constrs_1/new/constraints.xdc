set_property IOSTANDARD LVCMOS33 [get_ports {count[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} -add

