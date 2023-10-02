`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 07:29:10
// Design Name: 
// Module Name: HCF_tb
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


module HCF_tb();
reg [7:0]a,b;
wire [7:0]HCF_is;
HCF uut (HCF_is,a,b);
initial begin
a = 25; b = 45; #10;
		a = 60; b = 84; #10;
		a = 12; b = 43; #10;
		a = 108; b = 88; #10;
		a = 17; b = 4; #10;
		a = 35; b = 70; #10;
		$finish;
end
initial $monitor("\t HCF of %d and %d is %d \t",a,b,HCF_is);
endmodule
