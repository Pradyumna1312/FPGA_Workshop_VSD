`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Narsepalli Pradyumna
// 
// Create Date: 12/16/2022 09:52:04 PM
// Design Name: 8-bit Up-Counter - VIO
// Module Name: counter_VIO
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module counter_VIO(clk,rst,count);
input clk,rst;
reg div_clk;
reg [25:0] delay_count;
output reg [7:0] count;

/********_____STEPS______*********/

/* 2. But in reality the clock signals have high frequency i.e. the count increments at a 
very high rate which makes it difficult to observe in real world using Basys Board.
This gives rise to the presence of a CLOCK Divider Circuit. Its a circuit which downconverts the frequency of the input signal.*/
/////////______Clock Divider______///////////////////

always @(posedge clk)
begin
if(rst)
begin
delay_count<=26'd0;
div_clk <= 1'b0; //initialise div_clk
end
else
if(delay_count==26'd212)
begin
delay_count<=26'd0; //reset upon reaching the max value
div_clk <= ~div_clk;  //generating a slow clock
end
else
begin
delay_count<=delay_count+1;
end 
end


/* 1. Counter increments its value as the number of clock cycles. i.e. the counter counts the number of clock cycles given to it as an input*/

/////////////_______8 bit counter_____///////////////////
always @(posedge div_clk)
begin
if(rst)
begin
count<=8'b0000;
end
else
begin
count= count+1;
end
end


/* 3. Adding VIO - Virtual Input/Output IP to the design so that the design can be tested with FPGA remotely */
/////////______VIO-Instantiation______///////////////////
vio_0 your_instance_name (
  .clk(clk),                // input wire clk
  .probe_in0(div_clk),    // input wire [0 : 0] probe_in0
  .probe_in1(count),    // input wire [7 : 0] probe_in1
  .probe_out0(rst)  // output wire [0 : 0] probe_out0
);
endmodule
