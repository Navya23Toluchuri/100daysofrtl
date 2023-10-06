`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 12:03:32
// Design Name: 
// Module Name: clock_phasing_tb
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


module clock_phasing_tb();
reg clk,rst;
wire clk_0,clk_90,clk_180,clk_270;
clock_phasing uut (clk_0,clk_90,clk_180,clk_270,clk,rst);
always #2 clk=~clk;
initial begin
clk=1; rst=1;
#4 rst=0;
#50 $finish();
end
endmodule
