`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 20:58:24
// Design Name: 
// Module Name: D_as_SR_JK_T
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
module D_flipflop(Q,D,CLK);
input D,CLK;
output reg Q;

always @(posedge CLK)
case(D)
1'b0: Q = 1'b0;
1'b1: Q = 1'b1;
//default: Q = 1'b0;
endcase
initial Q = 1'b1;
endmodule
 
module D_as_SR_JK_T(TQ,SRQ,JKQ,S,R,J,K,T,CLK);
input T,S,R,J,K,CLK;
output TQ,SRQ,JKQ;
D_flipflop srff (.Q(SRQ),.D(S|(~R&SRQ)),.CLK(CLK));
D_flipflop jkff (.Q(JKQ),.D(J&(~JKQ) | (~K)&JKQ),.CLK(CLK));
D_flipflop tff (.Q(TQ),.D(T ^ TQ),.CLK(CLK));
endmodule
