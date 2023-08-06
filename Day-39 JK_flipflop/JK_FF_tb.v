`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2023 22:49:37
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb();
reg J,K,CLK;
wire Q;
JK_FF uut (Q,J,K,CLK);
always #2 CLK=~CLK;
initial begin
J=1; K=0; CLK=1;
#5 J=0; K=1;
#5 J=0; K=0;
#5 J=1; K=1;
#5 J=1; K=0;
#5 $finish();
end
endmodule
