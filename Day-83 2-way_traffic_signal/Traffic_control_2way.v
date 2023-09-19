`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 10:28:06
// Design Name: 
// Module Name: Traffic_control_2way
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


module Traffic_control_2way(Ra,Ya,Ga,Rb,Yb,Gb,clk,rst,sb);
input sb,rst,clk;
output reg Ra,Ya,Ga,Rb,Yb,Gb;
parameter [1:0] s0=2'b00,   // A-green, B-red
                s1=2'b01,   // A-yellow, B-red
                s2=2'b10,   // A-red, B-green
                s3=2'b11;   // A-red, B-yellow
reg [1:0] PS,NS;
always @(posedge clk, negedge rst)
if(rst)
    begin
    PS<=s0;
    Ga<=1; Rb<=1; Ra<=0; Ya<=0; Yb<=0; Gb<=0;
    end
else
    PS<=NS;
    
always @(PS,sb)
case(PS)
s0: if(sb) begin
    NS<=s1;
    Ya<=1; Rb<=1; Ga<=0; Ra<=0; Yb<=0; Gb<=0;
    end
    else begin
    NS<=s0;
    Ga<=1; Rb<=1; Ra<=0; Ya<=0; Yb<=0; Gb<=0;
    end
s1: begin
    Ya<=1; Rb<=1; Ga<=0; Ra<=0; Yb<=0; Gb<=0;
    #10 NS<=s2;
    end
s2: if(sb) begin
    Ra<=1; Gb<=1; Ya<=0; Rb<=0; Ga<=0; Yb<=0;
    NS<=s2;
    end
    else begin
    Ra<=1; Yb<=1; Ya<=0; Rb<=0; Ga<=0; Gb<=0;
    NS<=s3;
    end
s3: begin
    Ya<=0; Rb<=0; Ga<=0; Ra<=1; Yb<=1; Gb<=0;
    #10 NS<=s0;
    end
endcase
endmodule
