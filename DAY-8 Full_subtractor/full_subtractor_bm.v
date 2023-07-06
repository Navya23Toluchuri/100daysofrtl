`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2023 18:40:24
// Design Name: 
// Module Name: full_subtractor_bm
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


module full_subtractor_bm(
input a,b,borrowin,
output reg diff,borrowout
    );
    always@(*);
    initial begin
    diff = a^b^borrowin;
    borrowout = (~(borrowin^b)&a) | ~b&borrowin;
    end
endmodule
