`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 13:53:28
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb();
reg D,CLK;
wire Q;
D_FF uut (Q,D,CLK);
always #2 CLK=~CLK;
always #5 D=~D;
initial begin
D=1; CLK=1;
#20 $finish();
end
endmodule
