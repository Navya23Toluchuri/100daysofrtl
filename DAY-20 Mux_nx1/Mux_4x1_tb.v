`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 17:47:53
// Design Name: 
// Module Name: Mux_4x1_tb
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


module Mux_4x1_tb();
reg [3:0]I;
reg [1:0]S;
wire Y;
Mux_4x1_bm uut(I,S,Y);
always@(I,S,Y);
initial
begin
I=4'b101;
S=2'b00;
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
