`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 15:51:17
// Design Name: 
// Module Name: PISO
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
module DFF(Q,D,CLK);
input D,CLK;
output reg Q;
always @(posedge CLK)
Q = D;
initial Q = 1'b0;
endmodule

module sub_ckt(out,in1,in2,in3);
input in1,in2,in3;
output out;
wire x,y;
and a1 (x,in1,in2),
    a2 (y,~in2,in3);
or a3 (out,x,y);
endmodule

module PISO(Q0,in,SL,CLK);
input CLK,SL;
input [2:0]in;
output Q0;
wire Q1,Q2,X,Y;
DFF FF1 (.Q(Q2),.D(in[2]),.CLK(CLK)),
    FF2 (.Q(Q1),.D(X),.CLK(CLK)),
    FF3 (.Q(Q0),.D(Y),.CLK(CLK));
sub_ckt one (.out(X),.in1(Q2),.in2(SL),.in3(in[1])),
        two (.out(Y),.in1(Q1),.in2(SL),.in3(in[0]));
endmodule
