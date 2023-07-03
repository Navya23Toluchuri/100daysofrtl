`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 21:25:13
// Design Name: 
// Module Name: full_adder_gm
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


module full_adder_gm(
input a,b,cin,
output sum,cout,
wire x1,x2,x3
    );
    xor(sum,a,b,cin);
    and(x1,a,b);
    xor(x2,a,b);
    and(x3,x2,cin);
    or(cout,x3,x1);
endmodule
