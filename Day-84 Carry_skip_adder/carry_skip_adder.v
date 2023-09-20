`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2023 21:18:03
// Design Name: 
// Module Name: carry_skip_adder
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
output s,cout);
assign s=a^b^cin;
assign cout=(a^b)&cin | a&b;
endmodule

module carry_skip_adder(s,carry,a,b,c0);
input [3:0]a,b;
input c0;
output [3:0]s;
output carry;
wire c1,c2,c3,c4,p0,p1,p2,p3,m;

full_adder FA1 (.a(a[0]),.b(b[0]),.cin(c0),.s(s[0]),.cout(c1));
full_adder FA2 (.a(a[1]),.b(b[1]),.cin(c1),.s(s[1]),.cout(c2));
full_adder FA3 (.a(a[2]),.b(b[2]),.cin(c2),.s(s[2]),.cout(c3));
full_adder FA4 (.a(a[3]),.b(b[3]),.cin(c3),.s(s[3]),.cout(c4));

xor(p0,a[0],b[0]);
xor(p1,a[1],b[1]);
xor(p2,a[2],b[2]);
xor(p3,a[3],b[3]);
and(m,p0,p1,p2,p3);
assign carry=m?c0:p3;
endmodule

