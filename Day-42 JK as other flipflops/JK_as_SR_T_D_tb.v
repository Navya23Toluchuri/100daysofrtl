`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 18:07:14
// Design Name: 
// Module Name: JK_as_SR_T_D_tb
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


module JK_as_SR_T_D_tb();
reg T,S,R,D,CLK;
wire QT,QSR,QD;
JK_as_SR_T_D uut (.QT(QT),.QSR(QSR),.QD(QD),.T(T),.S(S),.R(R),.D(D),.CLK(CLK));
always #1 CLK = ~CLK;
always #3  R = ~R;
always #6  S= ~S;
always #3  D = ~D;
always #3  T = ~T;
initial begin
CLK=0; T=0; D=0; S=0; R=1;
#20 $finish();
end
endmodule
