`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 19:19:20
// Design Name: 
// Module Name: Demux_1x2_df
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


module Demux_1x2_df(
input I,S,
output Y1,Y2
    );
    assign {Y1,Y2} = S?{1'b0,I}:{I,1'b0};
endmodule
