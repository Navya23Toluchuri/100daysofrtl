`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 10:37:05
// Design Name: 
// Module Name: SISO_using_DFF_tb
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


module SISO_using_DFF_tb();
reg CLK,in;
wire out;
SISO_using_DFF uut (.out(out),.in(in),.CLK(CLK));
always #1 CLK = ~CLK;
initial begin
CLK = 1'b1; in=1'b1;
#2 in=1'b1;
#2 in=1'b0;
#20 $finish();
end
endmodule
