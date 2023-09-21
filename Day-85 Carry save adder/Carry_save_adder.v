`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 18:18:56
// Design Name: 
// Module Name: Carry_save_adder
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
module fulladder(s,cout,a,b,cin);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout=(a^b)&cin | a&b;
endmodule

module Carry_save_adder(sum,cout,a,b,c);
input [3:0]a,b,c;
output [4:0]sum;
output cout;
wire [3:0]s,c1,c2;
fulladder FA1 (s[0],c1[0],a[0],b[0],c[0]);
fulladder FA2 (s[1],c1[1],a[1],b[1],c[1]);
fulladder FA3 (s[2],c1[2],a[2],b[2],c[2]);
fulladder FA4 (s[3],c1[3],a[3],b[3],c[3]);

fulladder FA5 (sum[1],c2[1],s[1],c1[0],1'b0);
fulladder FA6 (sum[2],c2[2],s[2],c1[1],c2[1]);
fulladder FA7 (sum[3],c2[3],s[3],c1[2],c2[2]);
fulladder FA8 (sum[4],cout,1'b0,c1[3],c2[3]);
assign sum[0]=s[0];
endmodule
