`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2023 18:53:33
// Design Name: 
// Module Name: Adder_subtractor_4bit_tb
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
module Adder_subtractor_4bit_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
Adder_Subtractor_4bit uut (.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
initial begin
a=4'b1010;b=4'b0000;cin =1'b0;
#5
a=4'b1010;b=4'b0101;cin =1'b1;
#5
a=4'b1000;b=4'b0001;cin =1'b1;
#5
a=4'b1010;b=4'b0101;cin =1'b0;
#5
$finish();
end
endmodule
