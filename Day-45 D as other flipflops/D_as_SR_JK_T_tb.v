`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 20:59:04
// Design Name: 
// Module Name: D_as_SR_JK_T_tb
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


module D_as_SR_JK_T_tb();
reg T,S,R,J,K,CLK;
wire TQ,SRQ,JKQ;
D_as_SR_JK_T uut (.TQ(TQ),.SRQ(SRQ),.JKQ(JKQ),.T(T),.S(S),.R(R),.J(J),.K(K),.CLK(CLK));
always #1 CLK = ~CLK;
always #4 S = ~S;
always #2 R = ~R;
always #4 J=~J;
always #2 K=~K;
always #2 T = ~T;
initial begin
CLK = 1'b1; T = 1'b0; S=1; R=0; J=0; K=1;
#20 $finish();
end
endmodule
