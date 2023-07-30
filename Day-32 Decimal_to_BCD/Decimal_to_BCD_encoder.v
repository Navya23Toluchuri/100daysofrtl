`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 12:09:38
// Design Name: 
// Module Name: Decimal_to_BCD_encoder
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


module Decimal_to_BCD_encoder(Y,I);
input [9:0]I;
output reg [3:0]Y;
always @(*)
begin
case(I)
10'b0000000001: Y=4'b0000;
10'b0000000010: Y=4'b0001;
10'b0000000100: Y=4'b0010;
10'b0000001000: Y=4'b0011;
10'b0000010000: Y=4'b0100;
10'b0000100000: Y=4'b0101;
10'b0001000000: Y=4'b0110;
10'b0010000000: Y=4'b0111;
10'b0100000000: Y=4'b1000;
10'b1000000000: Y=4'b1001;
default: Y=4'b0000;
endcase
end
endmodule
