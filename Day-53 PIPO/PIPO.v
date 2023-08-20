`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 21:42:18
// Design Name: 
// Module Name: PIPO
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


module PIPO(Q,I,CLK);
input [2:0]I;
input CLK;
output reg [2:0]Q;
always @(posedge CLK)
begin
    Q[2] <= I[2];
    Q[1] <= I[1];
    Q[0] <= I[0];
end
endmodule
