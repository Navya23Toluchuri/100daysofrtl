`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 19:19:46
// Design Name: 
// Module Name: Demux_1x2_bm
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


module Demux_1x2_bm(I,S,Y1,Y2);
input I,S;
output reg Y1,Y2;
    always @ (I or S)
    begin
        case(S)
            1'b0: 
            begin
             Y1=I; Y2=0;
             end
            1'b1: 
            begin
            Y1=0; Y2=I;
            end
        endcase    
    end
endmodule
