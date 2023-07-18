`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 17:52:15
// Design Name: 
// Module Name: Mux_2x1_bm
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


module Mux_2x1_bm(I0,I1,S,Y);
input I0,I1,S;
output reg Y;
always@(I0,I1,S)
  begin
    if(S==0)
    Y=I0;
    else 
    Y=I1;
  end
endmodule
