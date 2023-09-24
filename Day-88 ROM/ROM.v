`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 11:42:39
// Design Name: 
// Module Name: ROM
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


module ROM(data_out,clk,en,addr);
input [3:0]addr;
input clk,en;
output reg [3:0]data_out;
reg [3:0]rom[0:15];
always @(posedge clk)begin
if(~en)
    data_out=rom[addr];
else
    data_out=4'bz;
    end
initial begin
rom[0]<=4'd1;
rom[1]<=4'd2;
rom[2]<=4'd3;
rom[3]<=4'd4;
rom[4]<=4'd5;
rom[5]<=4'd6;
rom[6]<=4'd7;
rom[7]<=4'd8;
rom[8]<=4'd9;
rom[9]<=4'd10;
rom[10]<=4'd11;
rom[11]<=4'd12;
rom[12]<=4'd13;
rom[13]<=4'd14;
rom[14]<=4'd15;
rom[15]<=4'd0;
end
endmodule
