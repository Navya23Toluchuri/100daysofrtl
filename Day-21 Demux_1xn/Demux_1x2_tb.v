`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 19:20:17
// Design Name: 
// Module Name: Demux_1x2_tb
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


module Demux_1x2_tb();
reg I,S;
wire Y1,Y2;
Demux_1x2_bm UUT (.I(I),.S(S),.Y1(Y1),.Y2(Y2));
initial begin
   $monitor($time,"I=%b,S=%b,Y1=%b,Y2=%b",I,S,Y1,Y2);
    I=1'b1; S=1'b0;
    #10
    S=1'b1;
    #10
    I=1'b0;
    #10
    S=1'b0;
    #10
    $finish();
end
endmodule
