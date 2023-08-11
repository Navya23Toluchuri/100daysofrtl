`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 23:05:03
// Design Name: 
// Module Name: SISO
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


module SISO(sout,sin,clk,clr);
input clk,sin,clr;
output reg sout;
reg [3:0] tmp;
always @(posedge clk)
begin
if(clr)
tmp <= 4'b0000;
else 
tmp <= tmp << 1;
tmp[0] <= sin;
sout = tmp[3];

end
endmodule
