`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 13:20:05
// Design Name: 
// Module Name: Seven_seg_disp
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


module Seven_seg_disp(led,in);
input [3:0]in;
output reg [6:0]led;
always@(in)
begin
case(in)
0 : led = 7'b1111110;
1 : led = 7'b0110000;
2 : led = 7'b1101101;
3 : led = 7'b1111001;
4 : led = 7'b0010011;
5 : led = 7'b1011011;
6 : led = 7'b1011111;
7 : led = 7'b1110000;
8 : led = 7'b1111111;
9 : led = 7'b1111011;
endcase
end
endmodule
