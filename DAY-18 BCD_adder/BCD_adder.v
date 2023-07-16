`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 10:15:33
// Design Name: 
// Module Name: BCD_adder
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


module BCD_adder(S,cout,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]S;
output cout;
wire [3:0]s;
wire c1,x1,x2,x3;
wire [3:0]x;
and a1(x1,s[3],s[2]);  and a2(x2,s[3],s[1]);
or o1(x3,x1,x2,c1);
assign x[2]=x3;  assign x[1]=x3; assign x[0]=0; assign x[3]=0;
Ripple_carry_adder G1 (.s(s),.carry(c1),.a(a),.b(b),.c0(cin));
Ripple_carry_adder G2 (.s(S),.carry(cout),.a(s),.b(x),.c0(cin));
endmodule
