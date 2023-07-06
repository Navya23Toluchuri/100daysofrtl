`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2023 18:40:51
// Design Name: 
// Module Name: full_subtractor_gm
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


module full_subtractor_gm(
input a,b,borrowin,
output diff,borrowout,
wire x1,x2,x3,x4
    );
    xor(diff,a,b,borrowin);
    xor(x1,borrowin,b);
    and(x2,~x1,a);
    and(x3,~b,borrowin);
    or(borrowout,x2,x3);
endmodule
