`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 19:53:13
// Design Name: 
// Module Name: Mux_3x1_tb
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


module Mux_3x1_tb( );
reg [0:2]I;
reg [0:1]S;
wire Y;
Mux_3x1_bm uut (I,S,Y);
initial begin
I=3'b101;
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
