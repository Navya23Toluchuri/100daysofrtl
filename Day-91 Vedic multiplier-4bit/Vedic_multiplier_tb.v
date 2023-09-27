`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2023 22:44:27
// Design Name: 
// Module Name: Vedic_multiplier_tb
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


module Vedic_multiplier_tb();
reg [3:0]a,b;
wire [7:0]out;
Vedic_multiplier_4bit uut (out,a,b);
always begin
a=$random;
b=$random;
#10;
end
initial begin
$monitor ("%d * %d = %d",a,b,out);
#100 $finish();
end
endmodule
