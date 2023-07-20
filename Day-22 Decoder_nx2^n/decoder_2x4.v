`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 14:30:58
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(d0,d1,d2,d3,a,en);
input en;
input [1:0]a;
output d0,d1,d2,d3;
assign d0= ~a[0] & ~a[1] & en;
assign d2= ~a[0] & a[1] & en;
assign d1= a[0] & ~a[1] & en;
assign d3= a[0] & a[1] & en;
endmodule
