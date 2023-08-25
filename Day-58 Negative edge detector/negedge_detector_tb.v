`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 06:19:27
// Design Name: 
// Module Name: negedge_detector_tb
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


module negedge_detector_tb();
reg in,CLK;
wire y;
negedge_detector uut (.y(y),.in(in),.CLK(CLK));
always #1 CLK = ~CLK;
always #3 in = ~in;
initial begin
CLK = 1'b1; in = 1'b1;
#50 $finish();
end
endmodule
