

create_clock -period 10 -name pclk


set_input_delay -clock pclk -max 0[get_ports {*}]
set_output_delay -clock pclk -max 0[get_ports {*}]
