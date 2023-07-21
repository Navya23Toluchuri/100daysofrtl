`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 15:21:09
// Design Name: 
// Module Name: decoder_5x32
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


module decoder_5x32(d,a,en);
input en;
input [4:0]a;
output [31:0]d;
wire [3:0]x;
decoder_2x4_bm u1 (x,a[4:3],en);
decoder_3x8 u2 (d[7:0],a[2:0],x[0]);
decoder_3x8 u3 (d[15:8],a[2:0],x[1]);
decoder_3x8 u4 (d[23:16],a[2:0],x[2]);
decoder_3x8 u5 (d[31:24],a[2:0],x[3]);
endmodule
