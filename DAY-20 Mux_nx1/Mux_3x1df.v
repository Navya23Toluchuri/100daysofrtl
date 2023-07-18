`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 19:38:33
// Design Name: 
// Module Name: Mux_3x1df
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


module Mux_3x1df(
input [2:0]I,
input [0:1]S,
output Y
    );
    assign Y=S[1]? I[2] :(S[0]?I[1]:I[0]);
endmodule
