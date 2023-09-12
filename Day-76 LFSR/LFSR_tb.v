`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 08:14:39
// Design Name: 
// Module Name: LFSR_tb
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


module LFSR_tb();
reg clk,rst;
wire [3:0]out1,out2;
LFSR_4bit uut (.out1(out1),.out2(out2),.clk(clk),.rst(rst));
always #1 clk=~clk;
always #50 $finish();
initial begin
clk=1'b1; rst=1'b1;
#2 rst=1'b0;
end
endmodule
