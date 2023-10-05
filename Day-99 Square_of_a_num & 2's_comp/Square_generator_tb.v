`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 11:37:55
// Design Name: 
// Module Name: Square_generator_tb
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


module Square_generator_tb();
parameter size=4;
reg [size-1:0]num;
wire [2*size-1:0]out;
Square_generator uut (num,out);
always begin
num=$random; #5;
end
initial begin
$monitor("square of %d is %d",num,out);
#50 $finish();
end
endmodule
