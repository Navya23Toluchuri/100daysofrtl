`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2023 06:41:46
// Design Name: 
// Module Name: Synchronous_down_counter
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
module TF(Q,T,CLK);
input T,CLK;
output reg Q;
initial Q=1'b0;
always @(negedge CLK)
    case(T)
    0: Q = Q;
    1: Q = ~Q;
  endcase
endmodule

module Synchronous_down_counter(Q,CLK);
input CLK;
output [3:1]Q;
wire x;
and (x,~Q[1],~Q[2]);
TF T1 (Q[1],1'b1,CLK),
     T2 (Q[2],~Q[1],CLK),
     TC (Q[3],x,CLK);
endmodule
