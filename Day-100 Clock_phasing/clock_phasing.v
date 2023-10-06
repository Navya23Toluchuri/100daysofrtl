`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 12:03:10
// Design Name: 
// Module Name: clock_phasing
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


module clock_phasing(clk_0,clk_90,clk_180,clk_270,clk,rst);
input clk,rst;
output clk_0,clk_90,clk_180,clk_270;
reg [1:0]x;
reg divide_2;
always @(posedge clk or negedge rst)
if(rst) begin
    x<=0; divide_2<=0;
    end
else begin
    x<={~x[0],x[1]}; divide_2=~divide_2;
    end
    
assign clk_0 = x[1];
assign clk_90 = x[1] ^ divide_2;
assign clk_180 = ~x[1];
assign clk_270 = ~clk_90;
endmodule
