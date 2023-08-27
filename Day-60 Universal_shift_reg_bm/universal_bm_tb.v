`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 15:26:11
// Design Name: 
// Module Name: universal_bm_tb
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


module universal_bm_tb();
reg [3:0]A;
reg [1:0]S;
reg Lin,Rin,reset,CLK;
wire [3:0]Q;
universal_bm uut(Q,A,S,Lin,Rin,reset,CLK);
always #1 CLK = ~CLK;
always #50 $finish();
initial begin
CLK = 1'b1; reset = 1'b1; Lin =1'b1; Rin =1'b0; A=4'b1101; S=2'b00;
#2 reset=1'b0;
#10 S=2'b10;
#10 S=2'b11;
#10 S=2'b01;
end
endmodule
