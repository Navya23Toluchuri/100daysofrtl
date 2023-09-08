`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2023 19:01:34
// Design Name: 
// Module Name: Synchronous_down_counter_bm
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


module Synchronous_down_counter_bm(Q,clk,rst);
input clk,rst;
output reg [3:1]Q;
always @(posedge clk)
if(rst)
    Q=3'b0;
else
    Q=Q-1;
endmodule
