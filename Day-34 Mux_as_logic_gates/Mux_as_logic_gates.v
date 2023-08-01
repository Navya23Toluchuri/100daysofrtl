`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2023 19:02:30
// Design Name: 
// Module Name: Mux_as_logic_gates
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
module mux_2x1(y,I0,I1,s);;
input I0,I1,s;
output reg y;               // design of 2x1 multiplexer
always @(s,I0,I1)
begin
case(s)
0 : y=I0;
1 : y=I1;
endcase
end
endmodule



module Mux_as_logic_gates(Y,a,b);
input a,b;
output [7:1]Y;
mux_2x1 AND (.y(Y[1]),.I0(1'b0),.I1(b),.s(a));
mux_2x1 OR (.y(Y[2]),.I0(b),.I1(1'b1),.s(a));
mux_2x1 NAND (.y(Y[3]),.I0(1),.I1(~b),.s(a));
mux_2x1 NOR (.y(Y[4]),.I0(~b),.I1(1'b0),.s(a));
mux_2x1 XOR (.y(Y[5]),.I0(b),.I1(~b),.s(a));
mux_2x1 XNOR (.y(Y[6]),.I0(~b),.I1(b),.s(a));
mux_2x1 NOT (.y(Y[7]),.I0(1),.I1(0),.s(a));
endmodule
