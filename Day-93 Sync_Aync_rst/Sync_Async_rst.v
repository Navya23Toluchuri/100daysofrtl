`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 14:44:29
// Design Name: 
// Module Name: Sync_Async_rst
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


module Sync_Async_rst(out1,out2,in1,in2,clk,rst);
input in1,in2,clk,rst;
output reg out1,out2;
always@(posedge clk)
if(rst)
out1=0;
else
out1=in1;

always@(posedge clk, posedge rst)
if(rst)
out2=0;
else
out2=in2;
endmodule
