`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 08:38:03
// Design Name: 
// Module Name: Fibonacci_tb
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


module Fibonacci_tb();
reg clk,rst;
wire [31:0]out;
Fibonacci_generator uut (out,clk,rst);
always #1 clk=~clk;
always #50 $finish();
initial begin
clk=1'b1; rst=1'b1;
#2 rst=1'b0;
end
initial $monitor($time,"out=%d",out);
endmodule
