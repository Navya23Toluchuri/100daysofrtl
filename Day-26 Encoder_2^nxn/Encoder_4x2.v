`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 21:38:11
// Design Name: 
// Module Name: Encoder_4x2
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


module Encoder_4x2(out,in);
input [3:0]in;
output [1:0]out;
assign out[0] = in[1] | in[3];
assign out[1] = in[2] | in[3];
endmodule
