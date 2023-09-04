`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: RAM
//////////////////////////////////////////////////////////////////////////////////


module RAM(data_out,data_in,address,clk,rd,wr);
input clk,rd,wr;
input [7:0]data_in;
input [9:0]address;
output reg [7:0]data_out;
reg [7:0] ram [9:0];
always @(posedge clk)
begin
if(wr)
   ram[address]<=data_in;
if(rd)
    data_out<=ram[address];
else
    data_out<=8'bZ; 
end
endmodule
