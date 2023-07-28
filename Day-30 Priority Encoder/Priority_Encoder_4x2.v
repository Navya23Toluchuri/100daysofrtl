`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 21:08:18
// Design Name: 
// Module Name: Priority_Encoder_4x2
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


module Priority_Encoder_4x2(y,i);
input [3:0]i;
output [1:0]y;
assign y[1] = i[2] | i[3];
assign y[0] = i[3] | ~(i[2]) & i[1];
endmodule
