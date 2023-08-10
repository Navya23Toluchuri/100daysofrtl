`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 17:09:34
// Design Name: 
// Module Name: SR_as_JK_D_T
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
module SR(Q,S,R,CLK);
input S,R,CLK;
output reg Q;
initial Q = 1'b0;
always @ (posedge CLK) 
case({S,R})
    2'b00: Q=Q;
    2'b01: Q=0;
    2'b10: Q=1;
    2'b11: Q=1'bX;
endcase
endmodule

module SR_as_JK_D_T(JKQ,DQ,TQ,J,K,T,D,CLK);
input J,K,D,T,CLK;
output JKQ,DQ,TQ;
SR jkff (.Q(JKQ),.S(J&(~JKQ)),.R(K&JKQ),.CLK(CLK)); // SR as JK flipflop
SR dff (.Q(DQ),.S(D),.R(~D),.CLK(CLK));  //SR as D flipflop
SR tff (.Q(TQ),.S(T&(~TQ)),.R(T&TQ),.CLK(CLK)); //SR as T flipflop
endmodule
