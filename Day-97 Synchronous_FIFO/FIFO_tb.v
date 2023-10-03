`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FIFO_tb();
reg clk,rst,rd,wr;
reg [7:0]data_in;
wire [7:0]data_out;
wire full,empty,over_flow,under_flow;
Synchronous_fifo uut (clk,rst,data_in,data_out,wr,rd,full,empty,over_flow,under_flow);
always #1 clk=~clk;
always #50 $finish();
initial begin
clk=1; rst=1; wr=1; rd=0;
data_in=8'b00000000;
#2 rst=0;
#2 data_in=8'd1;
#2 data_in=8'd2;  
#2 data_in=8'd3;
#2 data_in=8'd4; 
#2 data_in=8'd5;
#2 data_in=8'd6; 
#2 data_in=8'd7; 
#2 data_in=8'd8; 
#2 data_in=8'd9;
#2 data_in=8'ha;rd=1;
#2 data_in=8'hb;wr=0; 
#2 data_in=8'hc;
#2 data_in=8'hd;
#2 data_in=8'he;
#2 data_in=8'hf;
end
endmodule
