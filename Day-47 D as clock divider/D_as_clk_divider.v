`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2023 22:38:45
// Design Name: 
// Module Name: D_as_clk_divider
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
module DFF2(Q,D,CLK);
input D,CLK;
output reg Q;
always @(posedge CLK)
if(D==1)
Q = D;
else
Q = 1'b0;
initial Q = 1'b0;
endmodule

module D_as_clk_divider(Q,CLK);
input CLK;
output Q;
DFF2 u1 (.Q(Q),.D(~Q),.CLK(CLK));
endmodule
