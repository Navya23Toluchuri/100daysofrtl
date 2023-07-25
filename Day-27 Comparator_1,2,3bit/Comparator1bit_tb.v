`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2023 20:24:21
// Design Name: 
// Module Name: Comparator1bit_tb
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


module Comparator1bit_tb();
reg a,b;
wire L,E,G;
Comparator1_2_3 uut (L,E,G,a,b);
initial begin
a=0;b=1;
#10
a=1;b=1;
#10
a=1;b=0;
#10
$finish();
end
endmodule
