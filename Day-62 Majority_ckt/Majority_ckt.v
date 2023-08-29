`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 10:11:31
// Design Name: 
// Module Name: Majority_ckt
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


module Majority_ckt(out,in);
input [2:0]in;
output out;
assign out = in[2]&in[0] | in[2]&in[1] | in[1]&in[0];
endmodule
