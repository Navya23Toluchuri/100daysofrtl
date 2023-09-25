`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2023 21:11:23
// Design Name: 
// Module Name: LIFO_tb
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


module LIFO_tb();
reg clk,rst,push_pop;
reg [7:0]data_in;
wire [7:0]data_out;
wire FULL,EMPTY;
LIFO uut (FULL,EMPTY,data_out,data_in,clk,rst,push_pop);
always #10 clk=~clk;
always #400 $finish();
initial begin
push_pop=0; data_in=0; clk=1;rst=0;
#20 rst=1; data_in=8'd1; push_pop=1;
#20 data_in=8'd2;
#20 data_in=8'd3;
#20 data_in=8'd4;
#20 data_in=8'd5;
#20 data_in=8'd6;
#20 data_in=8'd7;
#20 data_in=8'd8;
#20 data_in=8'd9;
#50 push_pop=0;
end
endmodule
