`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Synchronous_up_counter_bm(Q,clk,rst);
input clk,rst;  integer i;
output reg [2:0]Q;
always @(posedge clk)
begin
if(rst)
    Q=3'b0;
else
    Q=Q+1; 
end
endmodule
