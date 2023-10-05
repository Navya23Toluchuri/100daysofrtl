`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 11:51:55
// Design Name: 
// Module Name: Compliment_2
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


module Compliment_2(num,out);
input [3:0]num;
output signed [3:0]out;
wire [3:0]temp;
assign temp = 4'b1111 - num;
assign out = temp + 4'b0001;
endmodule
