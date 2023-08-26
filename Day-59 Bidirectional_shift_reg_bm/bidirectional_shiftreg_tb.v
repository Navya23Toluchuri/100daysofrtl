`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 08:24:39
// Design Name: 
// Module Name: bidirectional_shiftreg_tb
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


module bidirectional_shiftreg_tb();
reg RIGHT,rin,lin,CLK;
wire [2:0]Q;
bidirectional_shiftreg_gatemodel uut (Q,RIGHT,rin,lin,CLK);
always #1 CLK = ~CLK;
always #50 $finish();
initial begin
CLK = 1; RIGHT = 1; rin = 0; lin = 1;
#10 RIGHT = 0;
#15 RIGHT = 1;
#10 RIGHT = 0;
#10 RIGHT = 1;
#10 RIGHT = 0;
end
endmodule
