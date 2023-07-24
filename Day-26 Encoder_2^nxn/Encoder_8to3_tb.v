`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 22:04:17
// Design Name: 
// Module Name: Encoder_8to3_tb
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


module Encoder_8to3_tb();
reg [7:0]in;
wire [2:0]out;
Encoder_8to3line uut (out,in);
initial begin
in=8'b00001000; #5
in=8'b01000000; #5
in=8'b00000100; #5
in=8'b00000001; #5
$finish();
end
endmodule
