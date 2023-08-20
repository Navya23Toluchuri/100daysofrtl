`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 21:42:39
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb();
reg [2:0]I;
reg CLK;
wire [2:0]Q;
PIPO uut (Q,I,CLK);
always #1 CLK = ~CLK;
initial begin
 I = 3'b110; CLK = 1'b1;
 #5 I = 3'b001;
 #5 I = 3'b101;
 #5 $finish();
end
endmodule
