`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 17:24:14
// Design Name: 
// Module Name: Asynchronous_up_counter_tb
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


module Asynchronous_up_counter_tb();
reg CLK;
wire [2:0]Q;
Asynchronous_up_counter uut (Q,CLK);
always #1 CLK=~CLK;
always #50 $finish();
initial CLK=1'b0;
endmodule
