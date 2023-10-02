`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 07:28:52
// Design Name: 
// Module Name: HCF
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


module HCF(HCF_is,a,b);
input [7:0]a,b;
output [7:0]HCF_is;
reg [7:0]x,y;
always @(*)
begin
x=a;
y=b;
while(x!=y) begin
if(x>y) x=x-y;
else y=y-x;
end
end
assign HCF_is=x;
endmodule
