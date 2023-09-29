`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 14:45:15
// Design Name: 
// Module Name: Sync_Async_rst_tb
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


module Sync_Async_rst_tb();
reg clk,in1,in2,rst;
wire out1,out2;
Sync_Async_rst uut (out1,out2,in1,in2,clk,rst);
always #100 $finish();
always #5 clk=~clk;
initial begin
clk=1; in1=1;in2=1; rst=1;
#10 rst=0;
#43 rst=1;
#18 rst=0;
end
endmodule
