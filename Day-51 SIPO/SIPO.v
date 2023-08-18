`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 14:51:57
// Design Name: 
// Module Name: SIPO
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
module D_FF(Q,D,CLK);
input D,CLK;
output reg Q;
always @(posedge CLK)
Q = D;
initial Q = 1'b0;
endmodule

module SIPO(Q2,Q1,Q0,CLK,IN);
input CLK,IN;
output  Q2,Q1,Q0;

D_FF FF1 (.Q(Q2),.D(IN),.CLK(CLK));
D_FF FF2 (.Q(Q1),.D(Q2),.CLK(CLK));
D_FF FF3 (.Q(Q0),.D(Q1),.CLK(CLK));

endmodule
