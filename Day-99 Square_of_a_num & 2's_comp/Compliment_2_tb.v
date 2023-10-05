`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 11:52:18
// Design Name: 
// Module Name: Compliment_2_tb
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


module Compliment_2_tb();
reg [3:0]num;
wire signed [3:0]out;
Compliment_2 uut (num,out);
always begin
num=$random;
#5;
end
initial begin
$monitor("Two's compliment of %d is %d",num,out);
#50 $finish();
end
endmodule
