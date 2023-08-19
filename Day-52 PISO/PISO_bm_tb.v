`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 17:42:43
// Design Name: 
// Module Name: PISO_bm_tb
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


module PISO_bm_tb();
reg S,CLK;
reg [2:0]in;
wire Q0;
PISO_bm uut (Q0,S,in,CLK);
always #5 CLK = ~CLK;
initial begin
CLK = 1'b1; S = 1'b0; in = 3'b011;
#10  S = 1'b1;
#50  S = 1'b0;   in = 3'b101;
#10  S =  1'b1;
#30 $finish();
end
endmodule
