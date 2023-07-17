`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 10:59:32
// Design Name: 
// Module Name: XS3_adder
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


module XS3_adder(S1,cout,x,y,cin);
input [3:0]x,y;
input cin;
output [3:0]S1;
output cout;
wire [3:0]s,n,S2;
wire c1;
wire [3:0]x1,y1;
assign x1=x+4'b0011;
assign y1=y+4'b0011;
assign n[0]=1; assign n[1]=c1; assign n[2]=~c1; assign n[3]=~c1;
assign S2[2]=c1; assign S2[1:0]=2'b00; assign S2[3]=0;

Ripple_carry_adder G1(.s(s),.carry(c1),.a(x1),.b(y1),.c0(cin));
Ripple_carry_adder G2(.s(S1),.carry(cout),.a(s),.b(n),.c0(cin));
endmodule
