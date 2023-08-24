`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2023 14:33:50
// Design Name: 
// Module Name: bi_directional_tb
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


module bi_directional_tb();
reg RIGHT,rin,lin,CLK,CLR;
wire [2:0]Q;
bi_directional_shift_register uut (Q,RIGHT,rin,lin,CLK,CLR);
always #1 CLK = ~CLK;
always #50 $finish();
initial begin
CLK = 1; CLR = 1; RIGHT = 1; rin = 0; lin = 1;
#10 RIGHT = 0;
#2 CLR = 0;
#15 RIGHT = 1;
#10 RIGHT = 0;
#10 RIGHT = 1;
#10 RIGHT = 0;
end

endmodule
