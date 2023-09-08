`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2023 06:42:13
// Design Name: 
// Module Name: Synchronous_down_counter_tb
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


module Synchronous_down_counter_tb();
    reg clk,rst;
    wire [3:1]Q;
    Synchronous_down_counter_bm uut (Q,clk,rst);
    always #1 clk=~clk;
    always #50 $finish();
    initial begin
    clk=1'b1; rst=1'b1;
    #2 rst=1'b0;
    end
endmodule
