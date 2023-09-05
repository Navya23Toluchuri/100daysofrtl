`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 07:10:58
// Design Name: 
// Module Name: Dual_RAM_tb
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


module Dual_RAM_tb();
reg clk,rst,wr,rd;
reg [7:0]data_in;
reg [3:0]rdaddress,wraddress;
wire [7:0]data_out;
Dual_RAM uut (data_out,data_in,rd,wr,rdaddress,wraddress,rst,clk);
always #1 clk=~clk;
initial begin
clk=1'b1; rst=1'b1; wr=1'b1; rd=1'b1; 

#5 rst=1'b0; data_in=8'hff; rdaddress=4'd7; wraddress=4'd0;
#5 rdaddress=4'd0; wraddress=4'd1; data_in=8'hab;
#5 rdaddress=4'b1; wraddress=4'd5; data_in=8'hca;
#5 rdaddress=4'd5; wraddress=4'd9; data_in=8'haa;
#5 rdaddress=4'd9; wraddress=4'd0; data_in=8'hcc;
#5 rdaddress=4'd0;
#5 $finish();
end
endmodule
