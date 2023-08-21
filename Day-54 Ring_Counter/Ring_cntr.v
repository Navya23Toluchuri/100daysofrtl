`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2023 12:03:19
// Design Name: 
// Module Name: Ring_cntr
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
//module D_FF(Q,D,CLK);
//input D,CLK;
//output reg Q;
//always @(posedge CLK)
//Q = D;
//initial Q = 1'b0;
//endmodule

module Ring_cntr(Q,CLK);
input CLK;
output reg [3:0]Q;
initial Q = 4'b0001;
always @(posedge CLK)
begin
Q[3]<=Q[0]; Q[2]<=Q[3]; Q[1]<=Q[2];Q[0]<=Q[1];
end
endmodule
