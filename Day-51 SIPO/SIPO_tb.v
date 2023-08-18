`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 14:52:19
// Design Name: 
// Module Name: SIPO_tb
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


module SIPO_tb();
reg CLK,IN;
wire Q2,Q1,Q0;
SIPO uut (Q2,Q1,Q0,CLK,IN);
always #1 CLK = ~CLK;
initial begin
CLK = 1'b1;  IN = 1'b1;
#2 IN = 1'b1;
#2 IN = 1'b0;
#10 $finish();
end
endmodule
