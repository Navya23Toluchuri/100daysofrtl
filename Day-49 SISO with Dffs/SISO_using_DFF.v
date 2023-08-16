`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 10:36:34
// Design Name: 
// Module Name: SISO_using_DFF
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
module DFF(Q,D,CLK);
input D,CLK;
output reg Q;
always @(posedge CLK)
if(D==1)
Q = D;
else
Q = 1'b0;
initial Q = 1'b0;
endmodule

module SISO_using_DFF(out,CLK,in);
input CLK;
input in;
output out;
wire Q2,Q1;
DFF FF1 (.Q(Q2),.D(in),.CLK(CLK));
DFF FF2 (.Q(Q1),.D(Q2),.CLK(CLK));
DFF FF3(.Q(out),.D(Q1),.CLK(CLK));
endmodule
