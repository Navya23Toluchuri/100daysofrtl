`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2023 22:43:42
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(Q,J,K,CLK);
input J,K,CLK;
output reg Q;
always @ (posedge CLK)
case({J,K})
2'b00: Q=Q;
2'b01: Q=0;
2'b10: Q=1;
2'b11: Q=~Q;
endcase
endmodule
