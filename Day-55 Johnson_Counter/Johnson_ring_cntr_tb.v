`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2023 07:07:13
// Design Name: 
// Module Name: Johnson_ring_cntr_tb
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


module Johnson_ring_cntr_tb();
reg CLK,reset;
wire [3:0]Q;
Johnson_ring_cntr uut (.Q(Q),.CLK(CLK),.reset(reset));
always #1 CLK = ~CLK;
initial begin
 CLK = 1'b1; reset = 1'b1;
 #2 reset = 1'b0;
#30 $finish();
end
initial $monitor($time,"reset=%b,Q=%b",reset,Q);
endmodule
