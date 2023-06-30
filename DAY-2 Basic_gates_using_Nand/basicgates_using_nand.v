`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 21:43:44
// Design Name: 
// Module Name: basicgates_using_nand
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


module basicgates_using_nand(
input a,input b,
output [0:7]c,
wire x1,x2
    );
    nand(c[0],a,a); //not for a
    nand(c[1],b,b); //not for b
    nand(c[2],a,b);  //nand
    nand(c[3],c[2],c[2]); //and
    nand(c[4],c[0],c[1]); //or
    nand(c[5],c[4],c[4]); //nor
    nand(x1,a,c[2]);
    nand(x2,b,c[2]);
    nand(c[6],x1,x2);  //xor
    nand(c[7],c[6],c[6]); //xnor
endmodule
