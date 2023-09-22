`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2023 09:24:37
// Design Name: 
// Module Name: CRC_16_parallel_tb
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

module CRC_16_parallel_tb(); 
reg clk; 
reg rst; 
reg load; 
reg d_finish; 
reg [7:0] crc_in; 
wire [7:0] crc_out; 

initial begin 
 #10 clk = 1; 
 #10 rst = 1; 
 #10 rst = 0; 
 #10 crc_in[7:0] = 8'b1010_1010; 
 #10 load = 1; 
 #10 load = 0; 
 #10 d_finish = 0; 
 #40 d_finish = 1; 
 #10 d_finish = 0; 
end 
always #5 clk = ~clk; 
always #10 crc_in[7:0] = ~crc_in[7:0]; 
CRC_16_parallel u1(.clk(clk), .rst(rst), .load(load), .d_finish(d_finish), .crc_in(crc_in), .crc_out(crc_out)); 
endmodule 
