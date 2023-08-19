`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 15:51:40
// Design Name: 
// Module Name: PISO_tb
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


module PISO_tb();
reg CLK,SL;
reg [2:0]in;
wire Q0;
PISO uut (Q0,in,SL,CLK);
always #1 CLK = ~CLK;
initial begin
CLK = 1'b1; in = 3'b011; SL = 1'b0;
#2 SL = 1'b1;
#10 $finish();
end
endmodule
