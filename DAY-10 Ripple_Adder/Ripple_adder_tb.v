`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 12:46:45
// Design Name: 
// Module Name: Ripple_adder_tb
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


module Ripple_adder_tb();
reg [3:0]a,b;
reg c0;
wire [3:0]s;
wire carry;
Ripple_carry_adder uut (a,b,c0,s,carry);
initial begin
c0=0;
a=4'b0000;b=4'b0000;
#10
a=4'b0101;b=4'b1010;
#10
a=4'b0001;b=4'b0010;
#10
a=4'b1111;b=4'b1100;
#10
a=4'b1111;b=4'b1111;
#10
$finish();
end
endmodule
