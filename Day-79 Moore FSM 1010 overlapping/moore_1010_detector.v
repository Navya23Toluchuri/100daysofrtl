`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 12:55:55
// Design Name: 
// Module Name: moore_1010_detector
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


module moore_1010_detector(y,in,clk,rst);
input clk,in,rst;
output reg y;
parameter [3:0] s0=4'b0,
                s1=4'b1,    //2 bits are necessary to represent 4 states
                s2=4'b10,   //Here used 4 bits to know the sequence at every state for understanding
                s3=4'b101,  // but regarding memory, taking 2 bits is best.
                s4=4'b1010;
reg [3:0]PS,NS;
always @(PS,in)
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
    y=1'b0;
    if(in)
    NS<=s1;
    else
    NS<=s4;
    end
s4: begin
    y=1'b1;
    if(in)
    NS<=s3;
    else
    NS<=s0;
    end
default: y=1'b0;
endcase
end
always @(posedge clk, posedge rst)
begin
if(rst)
PS<=s0;
else
PS<=NS;
end
endmodule
