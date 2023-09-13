`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2023 11:41:51
// Design Name: 
// Module Name: mealy_1010_tb
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


module mealy_1010_tb();
reg clk,rst,in;
wire y;
mealy_1010_detector uut (y,clk,rst,in);
always #5 clk=~clk;
always #500 $finish();
initial begin
clk=1'b1; rst=1'b1; in=0;
#20 rst=1'b0;
repeat(10) 
begin
#10 in=1; #10 in=0; #10 in=1; #10 in=0;
#10 in=1; #10 in=0; #10 in=0; #10 in=0;
end
end
initial $monitor($time,"clk=%b,rst=%b,in=%b,y=%b",clk,rst,in,y);
endmodule
