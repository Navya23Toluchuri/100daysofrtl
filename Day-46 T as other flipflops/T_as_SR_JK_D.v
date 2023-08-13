`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2023 12:58:57
// Design Name: 
// Module Name: T_as_SR_JK_D
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

module TFF(Q,T,CLK);
input T,CLK;
output reg Q;
always @(posedge CLK)
case(T)
1'b0: Q = Q;
1'b1: Q = ~Q;
//default Q = 1'bX;
endcase
initial Q = 1'b0;
endmodule

module T_as_SR_JK_D(DQ,SRQ,JKQ,D,S,R,J,K,CLK);
input D,S,R,J,K,CLK;
output DQ,SRQ,JKQ;
TFF srff (.Q(SRQ),.T((R&SRQ)|(S&(~SRQ))),.CLK(CLK));
TFF jkff (.Q(JKQ),.T((J&(~JKQ))|(K&JKQ)),.CLK(CLK));
TFF dff (.Q(DQ),.T(D^DQ),.CLK(CLK));
endmodule
