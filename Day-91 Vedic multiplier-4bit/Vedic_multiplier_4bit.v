`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2023 22:08:02
// Design Name: 
// Module Name: Vedic_multiplier_4bit
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

module HA(sum,carry,a,b);
input a,b;
output sum,carry;
assign sum = a^b;
assign carry = a&b;
endmodule

module adder_4bit(out,x,y);
input [3:0]x,y;
output [3:0]out;
assign out=x+y;
endmodule 

module adder_6bit(out,x,y);
input [5:0]x,y;
output [5:0]out;
assign out=x+y;
endmodule

module vedic_mul_2_bit(out,a,b);
input [1:0]a,b;
output [3:0]out;
wire [3:0]x;
and u1(out[0],a[0],b[0]),
    u2(x[0],a[0],b[1]),
    u3(x[1],a[1],b[0]),
    u4(x[2],a[1],b[1]);
HA ha1 (out[1],x[3],x[0],x[1]);
HA ha2 (out[2],out[3],x[3],x[2]);
endmodule

module Vedic_multiplier_4bit(out,a,b);
input [3:0]a,b;
output [7:0]out;
wire [3:0]w3,w2,w1,w0,wk;
wire [5:0]k;
vedic_mul_2_bit VM1 (w3[3:0],a[3:2],b[3:2]);
vedic_mul_2_bit VM2 (w2[3:0],a[1:0],b[3:2]);
vedic_mul_2_bit VM3 (w1[3:0],a[3:2],b[1:0]);
vedic_mul_2_bit VM4 (w0[3:0],a[1:0],b[1:0]);

adder_6bit Add1 (k,{w3[3:0],2'b00},{2'b00,w2[3:0]});
adder_4bit Add2 (wk,w1[3:0],{2'b00,w0[3:2]});
adder_6bit Add3 (out[7:2],k,{2'b00,wk[3:0]});
assign out[1:0]=w0[1:0];
endmodule
