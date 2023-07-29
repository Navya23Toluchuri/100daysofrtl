`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2023 21:45:08
// Design Name: 
// Module Name: Mux_with_decoder_tb
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


module Mux_with_decoder_tb();
reg [3:0]I;
reg en;
reg [1:0]S;
wire Y;
Mux_with_decoder uut (Y,I,en,S);
initial begin
I=4'b1010; en=1; S=2'b00;
#5
S=2'b01;
#5
S=2'b10;
#5
S=2'b11;
#5
$finish();
end
endmodule
