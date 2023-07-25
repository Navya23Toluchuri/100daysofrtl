`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2023 20:11:27
// Design Name: 
// Module Name: Comparator1_2_3
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


module Comparator1_2_3(L,E,G,a,b);
input a,b;
output L,E,G;
assign L = ~(a) & b;
assign E = ~(a ^ b);
assign G = a & ~(b);
endmodule
