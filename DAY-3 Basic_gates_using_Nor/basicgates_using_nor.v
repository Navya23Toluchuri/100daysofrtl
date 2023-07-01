`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2023 20:22:20
// Design Name: 
// Module Name: basicgates_using_nor
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


module basicgates_using_nor(
input a,input b,output [0:7]c,
wire x1,x2
    );
    nor(c[0],a,a); //not of a
    nor(c[1],b,b); //not of b
    nor(c[2],a,b); //nor
    nor(c[3],c[2],c[2]); //or
    nor(c[4],c[0],c[1]); //and
    nor(c[5],c[4],c[4]); //nand
    nor(x1,c[2],a);
    nor(x2,c[2],b);
    nor(c[6],x1,x2); //xnor
    nor(c[7],c[6],c[6]); //xor
endmodule
