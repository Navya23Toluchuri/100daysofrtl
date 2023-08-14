`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2023 22:39:09
// Design Name: 
// Module Name: D_as_clk_divider_tb
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


module D_as_clk_divider_tb();
    reg CLK;
    wire Q;
    D_as_clk_divider uut (.Q(Q),.CLK(CLK));
    always #2 CLK = ~CLK;
    initial begin
    CLK = 1'b0;
    #20 $finish();
    end
endmodule

