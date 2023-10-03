`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 3.10.2023 15:43:29
// Design Name: 
// Module Name: Synchronous_fifo
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


module Synchronous_fifo(clk,rst,data_in,data_out,wr,rd,full,empty,over_flow,under_flow);
input clk,rst,wr,rd;
input [7:0]data_in;
output reg [7:0]data_out;
output reg full,empty,over_flow,under_flow;

reg [3:0]wr_ptr,rd_ptr;
reg [7:0]mem[0:7];
reg [7:0]items=0;

always @(posedge clk)begin
	if(rst==1)begin
		data_out<=8'bx;
		full<=0;
		empty<=1;
		over_flow<=0;
		under_flow<=0;
		wr_ptr<=0;
		rd_ptr<=0;
		items<=0;
	end
    else
		if(wr==1)begin
			if(full==0)begin
				mem[wr_ptr]=data_in;
				items=items+1; over_flow<=0;under_flow<=0;
				if(wr_ptr==7)
					wr_ptr=0;
				else
					wr_ptr=(wr_ptr+1);
			end
			else begin
			    mem[wr_ptr]=data_in;
				wr_ptr=(wr_ptr+1);
			    over_flow<=1; under_flow<=0;
			end
		end
		
		if(rd==1)begin
			if(empty==0)begin
				data_out=mem[rd_ptr];
				items=items-1; over_flow<=0; under_flow<=0;
				if(rd_ptr==7)
					rd_ptr=0;
				else
					rd_ptr=(rd_ptr+1);
			end
			else begin
			    data_out=8'bz;
			    rd_ptr=(rd_ptr+1);
			    over_flow<=0; under_flow<=1;
			end
		end 
		end
		always @(*) begin
		empty=(items==0)?1:0; full=(items==8)?1:0;
		end
endmodule
