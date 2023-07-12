`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 14:54:53
// Design Name: 
// Module Name: Binary_to_gray
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


module Binary_to_gray(b,g);
input [3:0]b;
output [3:0]g;
assign g[3]=b[3];
xor x1(g[2],b[3],b[2]);
xor x2(g[1],b[1],b[2]);
xor x3(g[0],b[1],b[0]);
endmodule
