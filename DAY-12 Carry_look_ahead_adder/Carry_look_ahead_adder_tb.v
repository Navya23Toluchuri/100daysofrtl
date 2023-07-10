`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 08:43:28
// Design Name: 
// Module Name: Carry_look_ahead_adder_tb
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


module Carry_look_ahead_adder_tb();
reg [3:0]a,b;
reg c0;
wire [3:0]s;
wire cout;
Carry_look_ahead_adder uut (a,b,c0,s,cout);
initial begin
c0=0;
a=4'b0000;b=4'b0000;
#10
a=4'b0101;b=4'b1010;
#10
a=4'b0001;b=4'b0010;
#10
a=4'b0001;b=4'b1100;
#10
a=4'b0011;b=4'b1100;
#10
$finish();
end
endmodule
