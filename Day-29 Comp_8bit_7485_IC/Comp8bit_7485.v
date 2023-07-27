`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 15:49:14
// Design Name: 
// Module Name: Comp8bit_7485
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


module Comp8bit_7485(Lout,Eout,Gout,a,b,Lin,Gin,Ein);
input [7:0]a,b;
input Lin,Gin,Ein;
output  Lout,Eout,Gout;
wire l,e,g;
Comp4bit_7485 LSB (.L(l),.E(e),.G(g),.a(a[3:0]),.b(b[3:0]),.Lin(Lin),.Gin(Gin),.Ein(Ein)); 

Comp4bit_7485 MSB (.L(Lout),.E(Eout),.G(Gout),.a(a[7:4]),.b(b[7:4]),.Lin(l),.Gin(g),.Ein(e));
endmodule
