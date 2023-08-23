`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 06:12:07
// Design Name: 
// Module Name: posedge_dect_gm
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
Q <= D;
endmodule

module posedge_dect_gm(y,in,CLK);
input in,CLK;
output y;
wire delay_in;
DFF ff (.Q(delay_in),.D(in),.CLK(CLK));
and A1(y,~delay_in,in);
endmodule
