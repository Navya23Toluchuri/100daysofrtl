`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 17:00:51
// Design Name: 
// Module Name: Odd_parity_checker
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


module Odd_parity_checker(p,a);
input [2:0]a;
output p;
wire [7:0]x;
wire en=1;
decoder_3x8 u1 (x,a,en);
or u2 (p,x[3],x[5],x[6]);
endmodule
