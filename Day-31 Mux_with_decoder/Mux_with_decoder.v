`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2023 21:44:41
// Design Name: 
// Module Name: Mux_with_decoder
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


module Mux_with_decoder(Y,I,en,S);
input [3:0]I;
input en;
input [1:0]S;
output Y;
wire d0,d1,d2,d3,k0,k1,k2,k3,z;

decoder_2x4 U1 (.d0(d0),.d1(d1),.d2(d2),.d3(d3),.a(S),.en(en));
and U2 (k0,I[0],d0); and U3 (k1,I[1],d1);  and U4 (k2,I[2],d2);
and U5 (k3,I[3],d3);
or U6 (z,k0,k1,k2,k3); and U7 (Y,en,z);
endmodule
