`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 07:43:47
// Design Name: 
// Module Name: Moore_non_overlapping
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


module Moore_non_overlapping(y,in,clk,rst);
input in,clk,rst;
output reg y;
parameter [2:0] s0=3'b0,
                s1=3'b1,
                s2=3'b010,
                s3=3'b011,
                s4=3'b100;
reg [2:0]PS,NS; //present and next states
always @(posedge clk,negedge rst)
if(rst)
PS<=s0;
else
PS<=NS;

always@(in,PS)
case(PS)
s0: begin
    y=1'b0;
    if(in)
    NS<=s1;
    else
    NS<=s0;
    end
s1: begin
    y=1'b0;
    if(in)
    NS<=s1;
    else
    NS<=s2;
    end
s2: begin
    y=1'b0;
    if(in)
    NS<=s3;
    else
    NS<=s0;
    end
s3: begin
    y=1'b0;
    if(in)
    NS<=s0;
    else
    NS<=s4;
    end
s4: begin
    y=1'b1;
    if(in)
    NS<=s1;
    else
    NS<=s0;
    end
endcase
endmodule
