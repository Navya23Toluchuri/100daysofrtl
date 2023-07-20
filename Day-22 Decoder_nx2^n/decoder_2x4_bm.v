`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 14:35:40
// Design Name: 
// Module Name: decoder_2x4_bm
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


module decoder_2x4_bm(d,a,en);
input en;
input [1:0]a;
output reg [3:0]d;
always@(a,en)
begin
 if(en==0)
    d=4'b0000;
 else
    case(a)
    2'b00: d=4'b0001;
    2'b01: d=4'b0010;
    2'b10: d=4'b0100;
    2'b11: d=4'b1000;
    endcase
 end
endmodule
