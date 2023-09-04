`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_tb();
reg clk,rd,wr;
reg [7:0]data_in;
reg [9:0]address;
wire [7:0]data_out;
RAM uut (data_out,data_in,address,clk,rd,wr);
always #1 clk=~clk;
initial begin
data_in=8'd128; rd=1'b0; clk=1'b1;
address=10'd0;      //address 0
wr=1'b1;        //write data
#10
data_in=8'd15;
address=10'd1;      //address 1
#10
data_in=8'd3;
address=10'd2;      //address 2
#10
data_in=8'hff;
address=10'd9;
#10
//read operation
address=10'd0;      
wr=1'b0; rd=1'b1;       
#10
address=10'd1;       
#10
address=10'd2;       
#10
address=10'd9;
#10 $finish();; 
end
endmodule
