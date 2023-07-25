`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 12:31:02
// Design Name: 
// Module Name: Comparator_3bit
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


module Comparator_3bit(L,E,G,a,b);
input [2:0]a,b;
output reg L,E,G;
always@(a or b)
begin
if(a==b)
begin
L=0; E=1; G=0;
end
else if(a>b)
begin
L=0;E=0;G=1;
end
else
begin
L=1;E=0;G=0;
end
end
endmodule
