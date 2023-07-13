`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 15:17:46
// Design Name: 
// Module Name: Gray_to_binary
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


module Gray_to_binary(b,g);
input [3:0]g;
output [3:0]b;
assign b[3]=g[3];
xor x1(b[2],g[2],b[3]);
xor x2(b[1],g[1],b[2]);
xor x3(b[0],g[0],b[1]);
endmodule
