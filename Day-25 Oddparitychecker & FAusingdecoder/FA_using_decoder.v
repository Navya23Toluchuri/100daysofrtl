`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 15:41:30
// Design Name: 
// Module Name: FA_using_decoder
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


module FA_using_decoder(s,cout,a);
input [2:0]a;
output s,cout;
wire [7:0]x;
wire en=1;
decoder_3x8 u1 (x,a,en);
or u2 (s,x[1],x[2],x[4],x[7]);
or u3 (cout,x[7],x[6],x[5],x[3]);
endmodule
