`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2023 21:36:48
// Design Name: 
// Module Name: SRFF_tb
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


module SRFF_tb();
reg S,R,CLK;
wire Q;
SR_FF uut (Q,S,R,CLK);
always #2 CLK = ~CLK;
initial begin
S=0; R=1; CLK=1;
#5 S=1; R=0;
#5 S=0;
#5 R=1;
#5 S=1;
#10 $finish();
end 
endmodule
