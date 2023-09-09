`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module up_down_counter(Q,clk,rst,m);
input clk,m,rst;
output reg [3:1]Q;
always @(posedge clk)
if(rst)
    Q=3'b0;
else
    if(m)
        Q=Q-1;
    else
        Q=Q+1;
endmodule
