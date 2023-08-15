`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 22:59:15
// Design Name: 
// Module Name: Tff_as_freq_divider
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
module TFF(Q,T,CLK);
input T,CLK;
output reg Q;
always @(posedge CLK)
case(T)
1'b0: Q = Q;
1'b1: Q = ~Q;
endcase
initial Q = 1'b1;
endmodule

module Tff_as_freq_divider(FOUT,T,FIN);
input T;
input FIN;
output FOUT;
TFF u1 (.Q(FOUT),.T(T),.CLK(FIN));
endmodule
