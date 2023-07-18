`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 17:36:45
// Design Name: 
// Module Name: Mux_4x1_df
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


module Mux_4x1_df(
input [3:0]I,
input [1:0]S,
output Y
    );
    assign Y=S[1]?(S[0]?I[3]:I[2]):(S[0]?I[1]:I[0]);
endmodule
