`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 08:23:47
// Design Name: 
// Module Name: bidirectional_shiftreg_gatemodel
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
module DFF2(Q,D,CLK);
input D,CLK;
output reg Q;
always @(posedge CLK)
Q = D;
endmodule

module sub_ckt2(out,in1,in2,in3);
input in1,in2,in3;
output out;
wire x,y;
and a1 (x,in1,in2);
and a2 (y,~in2,in3);
or a3 (out,x,y);
endmodule

module bidirectional_shiftreg_gatemodel(Q,RIGHT,rin,lin,CLK);
input CLK,RIGHT,rin,lin;
output [2:0]Q;
wire x,y,z;
sub_ckt2 uut1 (x,rin,RIGHT,Q[1]);
sub_ckt2 uut2 (y,Q[2],RIGHT,Q[0]);
sub_ckt2 uut3 (z,Q[1],RIGHT,lin);
DFF2 uut4 (Q[2],x,CLK);
DFF2 uut5 (Q[1],y,CLK);
DFF2 uut6 (Q[0],z,CLK);
endmodule
