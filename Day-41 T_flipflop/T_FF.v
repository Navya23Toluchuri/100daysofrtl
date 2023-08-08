`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 15:01:41
// Design Name: 
// Module Name: T_FF
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


module T_FF(Q,T,CLK);
input T,CLK;
output reg Q;
initial Q=1;
always @(posedge CLK)
case(T)
0: Q = Q;
1: Q = ~Q;
endcase
endmodule
