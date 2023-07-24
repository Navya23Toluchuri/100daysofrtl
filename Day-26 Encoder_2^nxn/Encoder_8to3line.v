`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 22:04:55
// Design Name: 
// Module Name: Encoder_8to3line
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


module Encoder_8to3line(out,in);
input [7:0]in;
output [2:0]out;
assign out[2]=in[3]|in[4]|in[5]|in[6]|in[7];
assign out[1]=in[1]|in[2]|in[6]|in[7];
assign out[0]=in[0]|in[2]|in[5]|in[7];
endmodule
