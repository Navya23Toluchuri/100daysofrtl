`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module TF(Q,T,CLK);
input T,CLK;
output reg Q;
initial Q=1'b0;
always @(negedge CLK)
    case(T)
    0: Q = Q;
    1: Q = ~Q;
  endcase
endmodule

module sub_ckt3(out,in);
input [3:1]in;
output out;
wire x,y;
and(x,in[1],in[2]);
and(y,~in[2],in[3]);
or(out,x,y);
endmodule

module up_down_counter_gm(Q,clk,m);
input clk,m;
output [3:1]Q;
wire [4:1]k;
wire [2:1]q;
and k1(k[1],~m,Q[1]), k2(k[2],m,~Q[1]), 
    k3(k[3],Q[2],k[1]),k4(k[4],k[2],~Q[2]);
or q1(q[1],k[1],k[2]), q2(q[2],k[3],k[4]);

TF ta (Q[1],1'b1,clk),
   tb (Q[2],q[1],clk),
   tc (Q[3],q[2],clk);
endmodule
