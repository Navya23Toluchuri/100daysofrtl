`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 12:31:40
// Design Name: 
// Module Name: Comparator_3bit_tb
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


module Comparator_3bit_tb();
reg [2:0]a,b;
wire L,E,G;
Comparator_3bit uut (L,E,G,a,b);
initial begin
a=2;b=7;
#5
a=5;b=4;
#5
a=6;b=6;
#5
$finish();
end
endmodule
