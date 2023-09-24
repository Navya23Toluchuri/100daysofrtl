`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 11:43:00
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb();
reg clk,en;
reg [3:0]addr;
wire [3:0]data_out;
integer i;
ROM uut (data_out,clk,en,addr);
always #1 clk=~clk;
always #50 $finish();
initial begin
clk=1; en=1;
#5 en=0;
for(i=0;i<16;i=i+1) begin
@(posedge clk)
addr=i;
end
end
endmodule
