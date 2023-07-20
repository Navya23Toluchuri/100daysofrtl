`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 15:02:32
// Design Name: 
// Module Name: decoder_3x8
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
module decoder_3x8(d,a,en);
input en;
input [2:0]a;
output reg [7:0]d;
always@(a,en)
begin
if(en==0)
    d=8'b00000000;
else
    case(a)
    3'b000: d=8'b00000001;
    3'b001: d=8'b00000010;
    3'b010: d=8'b00000100;
    3'b011: d=8'b00001000;
    3'b100: d=8'b00010000;
    3'b101: d=8'b00100000;
    3'b110: d=8'b01000000;
    3'b111: d=8'b10000000;
    endcase
end
endmodule
