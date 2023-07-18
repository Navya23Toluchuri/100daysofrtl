`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 18:11:34
// Design Name: 
// Module Name: Mux_4x1_bm
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


module Mux_4x1_bm(
input [3:0]I,
input [1:0]S,
output reg Y
    );
    always@(I,S,Y)
    begin
    case(S)
    2'b00 : Y=I[0];
    2'b01 : Y=I[1];
    2'b10 : Y=I[2];
    2'b11 : Y=I[3];
    endcase
    end
endmodule
