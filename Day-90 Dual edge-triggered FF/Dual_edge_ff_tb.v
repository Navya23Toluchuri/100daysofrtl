`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2023 20:21:07
// Design Name: 
// Module Name: Dual_edge_ff_tb
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


module Dual_edge_ff_tb();
reg clk,rst;
reg [3:0]d;
wire [3:0]q;
Dual_edge_trigger_ff uut (q,d,clk,rst);
always #5 clk=~clk;
always #100 $finish();
initial begin
clk=1; rst=1; d=3'd7;
#10 rst=0;
repeat(10) begin
#5 d=3'd6; #5 d=3'd5; #5 d=3'd4; #5 d=3'd2;
end
end
endmodule
