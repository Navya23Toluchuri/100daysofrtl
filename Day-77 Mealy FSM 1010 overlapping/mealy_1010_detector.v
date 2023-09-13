`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2023 11:41:24
// Design Name: 
// Module Name: mealy_1010_detector
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


module mealy_1010_detector(y,clk,rst,in);
input in,clk,rst;
output reg y;
parameter [1:0] s0=2'b00,
                s1=2'b01,
                s2=2'b10,
                s3=2'b11;
reg [1:0]NS,PS;
//next state decoder
always @(PS,in)
begin
case(PS)
s0: begin y<=1'b0;
    if(in)
    NS<=s1;
    else
    NS<=s0;
    end
s1: begin y=1'b0;
    if(in)
    NS<=s1;
    else
    NS<=s2;
    end
s2: begin y<=1'b0;
    if(in)
    NS<=s3;
    else
    NS<=s0;
    end
s3: if(in) begin
    NS<=s1;
    y <=1'b0; end
    else begin
    NS<=s2;
    y<=1'b1; end
default: NS<=s0;
endcase
end
//memory state
always @(posedge clk)
begin
if(rst)
PS<=s0;
else
PS<=NS;
end
endmodule
