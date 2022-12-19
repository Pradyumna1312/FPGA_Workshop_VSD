`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2022 10:04:09 PM
// Design Name: 
// Module Name: Counter_tb
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


module Counter_tb();
reg clk, reset;
wire [7:0] out;
//wire out;
//create an instance of the design
counter_noVIO dut(clk, reset, out);  
// counter_noVIO dut(clk, reset, out);  

initial begin

//note that these statements are sequential.. execute one after the other 

//$dumpfile ("count.vcd"); 
//$dumpvars(0,upcounter_testbench);

clk=0;  //at time=0

reset=1;//at time=0

#20; //delay 20 units
reset=0; //after 20 units of time, reset becomes 0

end 

initial forever #5 clk=~clk;

endmodule 