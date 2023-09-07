`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module TF(Q,T,CLK);
input T,CLK;
output reg Q;
initial Q=1'b0;
always @(posedge CLK)
    case(T)
    0: Q <= Q;
    1: Q <= ~Q;
  endcase
endmodule

module Synchronous_up_counter(Q,CLK);
input CLK;
output [2:0]Q;
wire x;
and (x,Q[0],Q[1]);
TF TA (Q[0],1'b1,CLK),
     TB (Q[1],Q[0],CLK),
     TC (Q[2],x,CLK);
endmodule
