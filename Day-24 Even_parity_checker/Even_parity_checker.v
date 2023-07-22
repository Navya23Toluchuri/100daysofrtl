`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 16:45:39
// Design Name: 
// Module Name: Even_parity_checker
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
module Even_parity_checker(p,a);
input [2:0]a;
output p;
wire [7:0]x;
wire en=1;
decoder_3x8 u1 (x,a,en);
or u2 (p,x[1],x[2],x[4],x[7]);
endmodule
