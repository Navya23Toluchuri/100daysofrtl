`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2023 20:12:03
// Design Name: 
// Module Name: LIFO
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


module LIFO(FULL,EMPTY,data_out,data_in,clk,rst,push_pop);
input clk,rst,push_pop;
input [7:0]data_in;
output reg [7:0]data_out;
output reg FULL,EMPTY;

reg [2:0]ptr;
reg [7:0]stack[7:0];
always@(posedge clk or negedge rst)
if(rst==0) begin
ptr<=3'b000; EMPTY<=1; FULL<=0;
end
else
if(push_pop==1 && FULL==0) begin
    EMPTY<=0;
    ptr=ptr+1;
    stack[ptr]<=data_in;
    if(ptr==3'd7)
        FULL<=1;
   end
else if(push_pop==0 && EMPTY==0) begin
    FULL<=0;
    data_out<=stack[ptr];
    ptr=ptr-1;
    if(ptr==3'd0)
        EMPTY<=1;
end
endmodule
