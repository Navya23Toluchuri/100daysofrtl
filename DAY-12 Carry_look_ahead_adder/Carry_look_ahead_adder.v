`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 08:10:58
// Design Name: 
// Module Name: Carry_look_ahead_adder
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
module full_adder(
input a,b,cin,
output s,cout);
assign s=a^b^cin;
assign cout=(a^b)&cin | a&b;
endmodule 

module Carry_look_ahead_adder(
input [3:0]a,b,
input c0,
output [3:0]s,
output cout,
wire c1,c2,c3,
wire [2:0]P,G
    );
assign P = a^b;
assign G = a&b;
assign c1 = P[0]&c0|G[0];
assign c2 = P[1]&P[0]&c0 | P[1]&G[0] | G[1];
assign c3 = P[2]&P[1]&P[0]&c0 | P[2]&P[1]&G[0] | P[2]&G[1] | G[2];
full_adder FA1 (a[0],b[0],c0,s[0],c1);
full_adder FA2 (a[1],b[1],c1,s[1],c2);
full_adder FA3 (a[2],b[2],c2,s[2],c3);
full_adder FA4 (a[3],b[3],c3,s[3],cout);
endmodule
