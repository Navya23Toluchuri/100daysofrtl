`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 21:27:57
// Design Name: 
// Module Name: Barrel_shifter_4bit
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

module mux_4x1(y,i,s);
input [3:0]i;
input [1:0]s;
output reg y;
always @(*)
case(s)
2'b00: y=i[0];
2'b01: y=i[1];
2'b10: y=i[2];
2'b11: y=i[3];
endcase
endmodule


module Barrel_shifter_4bit(Y,I,S);
input [3:0]I;
input [1:0]S;
output [3:0]Y;
mux_4x1 y0 (Y[0],I,S),
        y1 (Y[1],{I[0],I[3],I[2],I[1]},S),
        y2 (Y[2],{I[1],I[0],I[3],I[2]},S),
        y3 (Y[3],{I[2],I[1],I[0],I[3]},S);
endmodule
