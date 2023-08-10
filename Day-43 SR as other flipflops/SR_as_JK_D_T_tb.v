`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 17:24:34
// Design Name: 
// Module Name: SR_as_JK_D_T_tb
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


module SR_as_JK_D_T_tb();
reg J,K,T,D,CLK;
wire JKQ,DQ,TQ;
SR_as_JK_D_T uut (.JKQ(JKQ),.TQ(TQ),.DQ(DQ),.J(J),.K(K),.T(T),.D(D),.CLK(CLK));
always #1 CLK=~CLK;
always #4 J=~J;
always #2 K=~K;
always #3 T = ~T;
always #4 D = ~D;
initial begin
CLK=1'b1; J=1'b0; K=1'b1; D=1'b1; T=1'b0;
#20 $finish();
end
endmodule
