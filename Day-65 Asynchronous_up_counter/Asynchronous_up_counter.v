`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 17:23:43
// Design Name: 
// Module Name: Asynchronous_up_counter
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
module JKF(Q,J,K,CLK);
input J,K,CLK;
output reg Q;
initial Q=1'b1;
always @ (negedge CLK)
case({J,K})
2'b00: Q=Q;
2'b01: Q=1'b0;
2'b10: Q=1'b1;
2'b11: Q=~Q;
endcase
endmodule

module Asynchronous_up_counter(Q,CLK);
input CLK;
output [2:0]Q;
JKF   A (Q[0],1'b1,1'b1,CLK),
      B (Q[1],1'b1,1'b1,Q[0]),
      C (Q[2],1'b1,1'b1,Q[1]);
endmodule
