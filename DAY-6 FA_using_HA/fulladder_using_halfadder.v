`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 09:52:49
// Design Name: 
// Module Name: fulladder_using_halfadder
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

module halfadder(
input a,b,
output s,c);
assign s=a^b;
assign c=a&b;
endmodule

module fulladder_using_halfadder(
input a,b,cin,
output sum,cout,
wire s1,c1,c2
  );
 halfadder g1(a,b,s1,c1);
 halfadder g2(s1,cin,sum,c2);
 assign cout=c1|c2;
endmodule
