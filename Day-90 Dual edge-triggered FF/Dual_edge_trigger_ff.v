`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2023 20:09:58
// Design Name: 
// Module Name: Dual_edge_trigger_ff
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


module Dual_edge_trigger_ff(q,d,clk,rst);
input clk,rst;
input [3:0]d;
output [3:0]q;
reg [3:0]q1,q2;

assign q=clk?q1:q2;
always @(posedge clk)
if(rst) 
q1<=3'b0;
else
q1<=d;

always @(negedge clk) 
if(rst) 
q2<=3'b0;
else
q2<=d;
endmodule
