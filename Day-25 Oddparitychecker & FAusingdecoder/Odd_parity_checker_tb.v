`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 17:01:17
// Design Name: 
// Module Name: Odd_parity_checker_tb
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


module Odd_parity_checker_tb();
reg [2:0]a;
wire p;
Odd_parity_checker uut (p,a);
initial begin
a=3'b000; #5
a=3'b001; #5
a=3'b011; #5
a=3'b111; #5
a=3'b100; #5
a=3'b110; #5
$finish();
end
endmodule

