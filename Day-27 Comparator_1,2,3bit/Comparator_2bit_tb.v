`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 12:19:30
// Design Name: 
// Module Name: Comparator_2bit_tb
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


module Comparator_2bit_tb();
reg [1:0]a,b;
wire L,E,G;
Comparator_2bit uut (L,E,G,a,b);
initial begin
a=2'b00;b=2'b11;
#5
a=2'b10;b=2'b01;
#5
a=2'b11;b=2'b11;
#5
a=2'b10;b=2'b11;
#5
$finish();
end
endmodule
