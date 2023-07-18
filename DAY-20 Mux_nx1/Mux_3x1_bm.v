`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 17:22:42
// Design Name: 
// Module Name: Mux_3x1_bm
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


module Mux_3x1_bm(
input [2:0]I,
input [1:0]S,
output reg Y
    );
    always@(I,S)
    begin
        if(S==2'b00)
        Y=I[0];
        else if(S==2'b01)
        Y=I[1];
        else
        Y=I[2];
    end
endmodule
