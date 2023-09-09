`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module up_down_counter_tb();
reg clk,rst,m;
wire [3:1]Q;
up_down_counter uut (Q,clk,rst,m);
always #1 clk=~clk;
always #20 m=~m;
always #100 $finish();
initial begin
clk=1'b1; rst=1'b1; m=1'b0;
#2 rst=1'b0;
end
endmodule
