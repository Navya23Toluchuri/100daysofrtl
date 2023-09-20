`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2023 21:29:39
// Design Name: 
// Module Name: Carry_skip_adder_tb
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


module Carry_skip_adder_tb();
reg [3:0]a,b;
reg c0;
wire [3:0]s;
wire carry;
carry_skip_adder uut (s,carry,a,b,c0);
initial begin
a=4'd0; b=4'd0;c0=1'b0;
#5 a=4'd1; b=4'd2; 
#5 a=4'hf; b=4'he; c0=1'b1;
#5 a=4'he; b=4'hb;
#5 a=4'hf; b=4'hf;
#10 $finish();
end
endmodule
