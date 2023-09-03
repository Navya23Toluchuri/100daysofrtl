`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 12:11:46
// Design Name: 
// Module Name: Multiplier_4bit_tb
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


module Multiplier_4bit_tb();
reg [3:0]a,b;
wire [7:0]out;
Multiplier_4bit uut (out,a,b);
initial begin
$monitor($time,"a=%d,b=%d,out=%d",a,b,out);
a=4'b1111; b=4'b0000;
#5 a=4'd11; b=4'd14;
#5 a=4'd2; b=4'd3;
#5 a=4'ha; b=4'd5;
#5 a=4'ha; b=4'ha;
#5 $finish();
end
endmodule
