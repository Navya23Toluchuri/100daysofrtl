`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 12:11:21
// Design Name: 
// Module Name: Multiplier_4bit
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


module Multiplier_4bit(out,a,b);
input [3:0]a,b;
output [7:0]out;
wire [3:0]k1;   wire [7:0]s1,s2;
wire [4:0]k2;  
wire [5:0]k3;   
wire [6:0]k4;
assign k1 = {4{b[0]}} & a[3:0];
assign k2 = {4{b[1]}} & a[3:0];
assign k3 = {4{b[2]}} & a[3:0];
assign k4 = {4{b[3]}} & a[3:0];
assign s1 = k1 + (k2<<1);
assign s2 = s1 + (k3<<2);
assign out = s2 + (k4<<3);
endmodule
