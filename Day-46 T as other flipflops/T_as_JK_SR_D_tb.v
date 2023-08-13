`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2023 13:07:48
// Design Name: 
// Module Name: T_as_JK_SR_D_tb
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


module T_as_JK_SR_D_tb();
reg D,S,R,J,K,CLK;
wire DQ,SRQ,JKQ;
T_as_SR_JK_D uut (.DQ(DQ),.SRQ(SRQ),.JKQ(JKQ),.D(D),.S(S),.R(R),.J(J),.K(K),.CLK(CLK));
always #1 CLK=~CLK;
always #2 {D,S,J} = ~{D,S,J};
always #4 {R,K} = ~{R,K};
initial begin
CLK=1'b1; D=0; S=1;R=0; J=0;K=1;
#20 $finish();
end
endmodule
