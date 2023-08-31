`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 21:28:31
// Design Name: 
// Module Name: Barrel_shifter_4bit_tb
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


module Barrel_shifter_4bit_tb();
reg [3:0]I;
reg [1:0]S;
wire [3:0]Y;
Barrel_shifter_4bit uut(Y,I,S);
initial begin
S=2'b00; I=4'b1100;
#5 S=2'b01;
#5 S=2'b10;
#5 S=2'b11;
#5 $finish();
end
endmodule
