`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 08:37:38
// Design Name: 
// Module Name: Fibonacci_generator
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


module Fibonacci_generator(out,clk,rst);
input rst,clk;
output [31:0]out;
reg [31:0]num1,num2;
always @(posedge clk, posedge rst)
if(rst) begin
    num1<=0;
    num2<=1;
end
else begin
    num1<=num2;
    num2<=out;
end
assign out = num1+num2;
endmodule
