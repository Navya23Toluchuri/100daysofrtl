`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 22:13:34
// Design Name: 
// Module Name: Synchronous_ALU
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


module Synchronous_ALU(Y,opcode,a,b,CLK);
input CLK;
input [3:0]a,b;
input [2:0]opcode;
output reg [7:0]Y;
always @(posedge CLK)
case(opcode)
3'b000: Y = a + b;
3'b001: Y = a - b;
3'b010: Y = a * b;
3'b011: Y = a / b;
3'b100: Y = a & b;
3'b101: Y = a | b;
3'b110: Y = a ^ b;
3'b111: Y = ~(a ^ b);
default: Y = 7'b0;
endcase
endmodule
