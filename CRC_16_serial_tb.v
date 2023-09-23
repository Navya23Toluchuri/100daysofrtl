`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2023 12:46:05
// Design Name: 
// Module Name: CRC_16_serial_tb
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

module CRC_16_serial_tb(); 
reg clk; 
reg rst; 
reg load; 
reg d_finish; 
reg crc_in; 
wire crc_out;
parameter clk_period = 40; 
initial 
begin 
 #clk_period clk = 1; 
 #clk_period rst = 1; 
 #clk_period rst = 0; 
 #clk_period crc_in = 1; 
 #clk_period load = 1; 
 #clk_period load = 0; 
 #clk_period d_finish = 0; 
 #(80*clk_period) d_finish = 1; 
 #clk_period d_finish = 0; 
end 
always #(clk_period/2) clk = ~clk; 
always #(2*clk_period) crc_in = ~crc_in;

CRC_16_serial 
u1(.clk(clk), .rst(rst), .load(load), .d_finish(d_finish), .crc_in(crc_in), .crc_out(crc_out)); 

endmodule 
