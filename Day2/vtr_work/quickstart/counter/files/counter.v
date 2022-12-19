module up_counter    (
out     ,  // Output of the counter
enable  ,  // enable for counter
clk     ,  // clock Input
reset      // reset Input
);

output [3:0] out;
//you can alternately write this as output reg [7:0] out;
input enable, clk, reset;
//------------Internal Variables--------
reg [3:0] out; 



always @(posedge clk)
if (reset) begin //reset ==1
  out = 4'b0 ;
end 
else if (enable) begin //reset =0
  out = out + 1;
end

endmodule 

