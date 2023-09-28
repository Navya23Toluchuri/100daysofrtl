`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 13:05:14
// Design Name: 
// Module Name: Booth_multiplication_tb
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


module Booth_multiplication_tb();
reg signed [4:0]M,Q;
wire signed [9:0]out;
Booth_multiplication uut (out,M,Q);
always begin
M=$random;
Q=$random;
#10;
end

initial begin
$monitor($time,"%d * %d = %d",M,Q,out);
#100 $finish();
end
endmodule

