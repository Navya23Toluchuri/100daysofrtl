`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 17:43:53
// Design Name: 
// Module Name: Mux_2X1_tb
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


module Mux_2X1_tb();
reg I0,I1,S;
wire Y;
Mux_2x1_bm u1 (.I0(I0),.I1(I1),.S(S),.Y(Y));
initial  begin
I0=1;I1=0;
S=0;
#5
S=1;
#5
$finish();
end
endmodule
