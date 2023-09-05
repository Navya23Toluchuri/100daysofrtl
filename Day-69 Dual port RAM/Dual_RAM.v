`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 07:10:34
// Design Name: 
// Module Name: Dual_RAM
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


module Dual_RAM(data_out,data_in,rd,wr,rdaddress,wraddress,rst,clk);
//parameter input_size = 8, output_size = 8, locations = 10;
input clk,rst,wr,rd;            integer i;
input [7:0]data_in;
input [3:0]rdaddress,wraddress;
output reg [7:0]data_out;
reg [7:0]ram[9:0];
always @(posedge clk)
begin
if(rst)
begin
//   for(i=0;i<10;i=i+1)
//        ram[i]<=0;
data_out=4'b0;
end
else
begin
if(wr)
    ram[wraddress]<=data_in;  
if(rd)
    data_out<=ram[rdaddress];
end
end
endmodule
