`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2023 22:23:05
// Design Name: 
// Module Name: half_adder_bm
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


module half_adder_bm(
input a,b,
output reg s,c
    );
always @ (a,b);
initial begin
s = a ^ b;
c = a & b;
end
endmodule
