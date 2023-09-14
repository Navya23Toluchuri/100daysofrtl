`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 06:15:53
// Design Name: 
// Module Name: Mealy_non_overlapping_tb
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


module Mealy_non_overlapping_tb();
reg clk,rst,in;
wire y;
Mealy_non_overlapping uut (y,in,clk,rst);
always #5 clk=~clk;
always #500 $finish();
initial begin
clk=1'b1; rst=1'b1; in=0;
#20 rst=1'b0;
repeat(10) 
begin
#10 in=1; #10 in=0; #10 in=1; #10 in=0;
#10 in=1; #10 in=0; #10 in=0; #10 in=0;
end
end
initial $monitor($time,"clk=%b,rst=%b,in=%b,y=%b",clk,rst,in,y);
endmodule
