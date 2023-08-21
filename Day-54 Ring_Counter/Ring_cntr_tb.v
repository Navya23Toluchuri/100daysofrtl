`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2023 12:03:43
// Design Name: 
// Module Name: Ring_cntr_tb
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


module Ring_cntr_tb();
reg CLK;
wire [3:0]Q;
Ring_cntr uut (.Q(Q),.CLK(CLK));
always #1 CLK = ~CLK;
initial begin
 CLK = 1'b1;
#20 $finish();
end
endmodule
