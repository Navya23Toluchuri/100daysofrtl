`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 20:05:48
// Design Name: 
// Module Name: universal_shift_reg_tb
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


module universal_shift_reg_tb();
reg CLK;
reg [3:0]A;
reg [1:0]S;
wire [3:0]Q;
universal_shift_reg uut (Q,S,A,CLK);
always #1 CLK = ~CLK;
always #50 $finish();
initial begin
CLK=1; A=4'b1101; S=2'b11;
#5 S = 2'b01;
#5 S = 2'b00;
#5 S = 2'b10;
end
endmodule
