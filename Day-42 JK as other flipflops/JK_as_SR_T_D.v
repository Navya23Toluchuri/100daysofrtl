`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 17:59:57
// Design Name: 
// Module Name: JK_as_SR_T_D
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
module JK(Q,J,K,CLK);
input J,K,CLK;
output reg Q;
initial Q =1'b0;
always @ (posedge CLK)
case({J,K})
2'b00: Q=Q;
2'b01: Q=0;
2'b10: Q=1;
2'b11: Q=~Q;
endcase
endmodule

module JK_as_SR_T_D(QT,QSR,QD,T,S,R,D,CLK);
input T,S,R,D,CLK;
output QT,QSR,QD;
JK tff (.Q(QT),.J(T),.K(T),.CLK(CLK));  //T flip flop
JK srff (.Q(QSR),.J(S),.K(R),.CLK(CLK));    // SR flip flop
JK dff (.Q(QD),.J(D),.K(~D),.CLK(CLK));     //  D flip flop
endmodule
