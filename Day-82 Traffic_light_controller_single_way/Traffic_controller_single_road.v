`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 20:59:32
// Design Name: 
// Module Name: Traffic_controller_single_road
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


module Traffic_controller_single_road(R,G,Y,clk,rst,allow);
input clk,rst,allow;
output reg R,G,Y;
parameter [1:0] r=2'b00,
                ry=2'b01,
                g=2'b10,
                gy=2'b11;
reg [1:0]PS,NS;
always @(posedge clk)
if(rst)
    PS<=r;
else if(allow)
    PS<=g;
else
    PS<=NS;

always @(PS)
case(PS)
r: begin
    R<=1; G<=0; Y<=0;
    #10
    NS<=ry;
    end
ry: begin
    R<=1; Y<=1; G<=0;
    #10 
    NS<=g;
    end
g: begin
    R<=0; Y<=0; G<=1;
    #10
    NS<=gy;
    end
gy: begin
    R<=0; Y<=1; G<=1;
    #10
    NS<=r;
    end
default: begin
         R<=1'bz; Y<=1'bz; G<=1'bz;
         #10 NS<=r;
         end
endcase   
endmodule
