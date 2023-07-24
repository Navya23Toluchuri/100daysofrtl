`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 21:38:42
// Design Name: 
// Module Name: Encoder_4x2_tb
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


module Encoder_4x2_tb();
reg [3:0]in;
wire [1:0]out;
Encoder_4x2 uut (out,in);
initial begin
in=4'b0001; #5
in=4'b0010; #5
in=4'b0100; #5
in=4'b1000; #5
$finish();
end
endmodule
