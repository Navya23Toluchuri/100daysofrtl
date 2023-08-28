 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 20:05:01
// Design Name: 
// Module Name: universal_shift_reg
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
module mux(y,s,in0,in1,in2,in3);
input [1:0]s;
input in1,in2,in3,in0;
output reg y;
always @ (*)
case(s)
2'b00: y<=in0;
2'b01: y<=in1;
2'b10: y<=in2;
2'b11: y<=in3;
endcase
endmodule

module D(Q,D,CLK);
input D,CLK;
output reg Q;
always @(posedge CLK)
Q <= D;
endmodule

module universal_shift_reg(Q,S,A,CLK);
input CLK;
input [3:0]A;
input [1:0]S;
output [3:0]Q;
wire [3:0]o;
mux u1 (.y(o[3]),.s(S),.in0(Q[3]),.in1(Q[0]),.in2(Q[2]),.in3(A[3]));
mux u2 (.y(o[2]),.s(S),.in0(Q[2]),.in1(Q[3]),.in2(Q[1]),.in3(A[2]));
mux u3 (.y(o[1]),.s(S),.in0(Q[1]),.in1(Q[2]),.in2(Q[0]),.in3(A[1]));
mux u4 (.y(o[0]),.s(S),.in0(Q[0]),.in1(Q[1]),.in2(Q[3]),.in3(A[0]));
D ff3 (.Q(Q[3]),.D(o[3]),.CLK(CLK));
D ff2 (.Q(Q[2]),.D(o[2]),.CLK(CLK));
D ff1 (.Q(Q[1]),.D(o[1]),.CLK(CLK));
D ff0 (.Q(Q[0]),.D(o[0]),.CLK(CLK));
endmodule
