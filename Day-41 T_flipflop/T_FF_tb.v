`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 15:02:02
// Design Name: 
// Module Name: T_FF_tb
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


module T_FF_tb();
reg T,CLK;
wire Q;
T_FF uut (Q,T,CLK);
always #1 CLK = ~CLK;
always #3 T = ~T;
initial begin
T = 1;CLK = 1;
#20 $finish();
end
endmodule
