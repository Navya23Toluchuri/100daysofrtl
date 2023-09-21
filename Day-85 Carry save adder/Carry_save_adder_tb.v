`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 18:19:27
// Design Name: 
// Module Name: Carry_save_adder_tb
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


module Carry_save_adder_tb();
reg [3:0]a,b,c;
wire [4:0]sum;
wire cout;
Carry_save_adder uut (sum,cout,a,b,c);
always #50 $finish();
initial begin
a=0;b=0;c=0;
#10 a=4'hf; b=4'hf; c=4'hf;
#10 a=4'ha; b=4'hb; c=4'hc;
#10 a=4'he; b=4'hb; c=4'hf;
#10 a=4'hd; b=4'he; c=4'hb;
end
endmodule
