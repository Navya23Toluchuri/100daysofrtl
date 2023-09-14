`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 06:15:16
// Design Name: 
// Module Name: Mealy_non_overlapping
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


module Mealy_non_overlapping(y,in,clk,rst);
input in,clk,rst;
output reg y;
parameter [1:0] s0=2'b00,
                s1=2'b01,
                s2=2'b10,
                s3=2'b11;
reg [1:0]PS,NS;
always @(posedge clk,negedge rst)
if(rst)
PS<=s0;
else
PS<=NS;

always @(in,PS)
begin
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
    if(in)
    begin
    y=1'b0;
    NS<=s1;
    end
    else
    begin
    y=1'b1;
    NS<=s0;
    end
    end
endcase
end
endmodule
