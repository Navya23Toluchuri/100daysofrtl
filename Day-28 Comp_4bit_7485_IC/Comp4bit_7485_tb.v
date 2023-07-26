`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 13:48:07
// Design Name: 
// Module Name: Comp4bit_7485_tb
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


module Comp4bit_7485_tb();
reg Lin,Ein,Gin;
reg [3:0]a,b;
wire L,E,G;
Comp4bit_7485 uut (L,E,G,a,b,Lin,Gin,Ein);
initial begin
Ein=1; Gin=0;Lin=0;
a=14;b=10;
#5
a=2;b=7;
#5
a=5;b=5;
#5
$finish();
end

endmodule
