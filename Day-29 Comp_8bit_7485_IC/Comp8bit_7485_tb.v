`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 15:50:32
// Design Name: 
// Module Name: Comp8bit_7485_tb
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


module Comp8bit_7485_tb();
reg [7:0]a,b;
reg Lin,Gin,Ein;
wire L,E,G;
Comp8bit_7485 uut (L,E,G,a,b,Lin,Gin,Ein);
initial begin
Lin=0; Ein=1; Gin=0;
a=8'b11111110; b=8'b11111111;
#5
a=8'b00001000; b=8'b00000011;
#5
a=8'b00000000; b=8'b11111111;
#5
a=8'b11111111;
#5
$finish();
end
endmodule
