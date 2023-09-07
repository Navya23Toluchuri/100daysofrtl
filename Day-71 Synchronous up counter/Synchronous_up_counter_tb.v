`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Synchronous_up_counter_tb();
reg CLK;
wire [2:0]Q;
Synchronous_up_counter uut (Q,CLK);
always #1 CLK=~CLK;
always #50 $finish();
initial begin
CLK=1'b0; 
end
endmodule
