`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 11:37:29
// Design Name: 
// Module Name: Square_generator
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


module Square_generator(num,out);
parameter size=4;
input [size-1:0]num;
output reg [2*size-1:0]out;
always @(num)
out = num *num;
endmodule
