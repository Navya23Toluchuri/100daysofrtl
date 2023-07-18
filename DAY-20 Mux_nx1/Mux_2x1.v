`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 17:25:39
// Design Name: 
// Module Name: Mux_2x1
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


module Mux_2x1(Y,I0,I1,S);
input I0,I1,S;
output Y;
    //assign y = (~S)&I0 | S&I1;
   assign Y = S ? I1 : I0; //conditional statement
endmodule
