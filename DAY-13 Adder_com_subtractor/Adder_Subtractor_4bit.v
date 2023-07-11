`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2023 18:42:28
// Design Name: 
// Module Name: Adder_Subtractor_4bit
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
module Adder_Subtractor_4bit(s,cout,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:1]c,s1;
wire [3:0]B;

xor g1(B[0],b[0],cin); xor g2(B[1],b[1],cin);
xor g3(B[2],b[2],cin); xor g4(B[3],b[3],cin);
full_adder_df FA1 (s[0],c[1],a[0],B[0],cin);
full_adder_df FA2 (s[1],c[2],a[1],B[1],c[1]);
full_adder_df FA3 (s[2],c[3],a[2],B[2],c[2]);
full_adder_df FA4 (s[3],cout,a[3],B[3],c[3]);
endmodule
