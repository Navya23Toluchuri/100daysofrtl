`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2023 08:19:07
// Design Name: 
// Module Name: parallel_subtractor_using_adders
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
module full_adder(
input a,b,cin,
output s,cout
);
assign s=a^b^cin;
assign cout=(a^b)&cin | a&b;
endmodule

module parallel_subtractor_using_adders(
input [3:0]a,b,
input cin,
output [3:0]x,
output cout,
wire c1,c2,c3
    );
 full_adder FA1 (a[0],~b[0],cin,x[0],c1);
 full_adder FA2 (a[1],~b[1],c1,x[1],c2);
 full_adder FA3 (a[2],~b[2],c2,x[2],c3);
 full_adder FA4 (a[3],~b[3],c3,x[3],cout);
 
endmodule
