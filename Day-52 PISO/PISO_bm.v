`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 17:36:25
// Design Name: 
// Module Name: PISO_bm
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


module PISO_bm(Q0,S,in,CLK);
input S,CLK;
input [2:0]in;
output reg Q0;
reg Q2,Q1;
always @(posedge CLK)
begin
if(S == 1'b0)
begin
    Q2 <= in[2]; Q1 <= in[1]; Q0 <= in[0];
end
if(S == 1'b1)
begin
    Q0 = in[0]; Q0 = Q1; Q1 = Q2;
end
end
endmodule
