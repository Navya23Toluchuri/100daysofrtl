`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 20:41:50
// Design Name: 
// Module Name: basic_gates
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

module basic_gates(
input a,b,
output [0:6]c
);
not(c[0],a);
and(c[1],a,b);
or(c[2],a,b);
nand(c[3],a,b);
nor(c[4],a,b);
xor(c[5],a,b);
xnor(c[6],a,b);
endmodule