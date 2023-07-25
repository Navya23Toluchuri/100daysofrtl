`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 12:12:33
// Design Name: 
// Module Name: Comparator_2bit
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


module Comparator_2bit(L,E,G,a,b);
input [1:0]a,b;
output L,E,G;
assign L = ~(a[1])&b[1] | ~(a[1]^b[1]) & ~(a[0])&b[0];
assign E = ~(a[1]^b[1]) & ~(a[0]^b[0]);
assign G = a[1]&~(b[1]) | ~(a[1]^b[1]) & a[0]&~(b[0]);
endmodule

