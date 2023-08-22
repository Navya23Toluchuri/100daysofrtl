`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2023 07:06:47
// Design Name: 
// Module Name: Johnson_ring_cntr
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


module Johnson_ring_cntr(Q,CLK,reset);
input CLK,reset;
output reg[3:0]Q;
//initial Q = 4'b0000;
always @(posedge CLK)
begin
if(reset)
Q = 4'b0;
else
begin
Q[3] <= Q[2]; Q[2]<=Q[1]; Q[1]<=Q[0]; Q[0]<=(~Q[3]);  
end 
end
endmodule
