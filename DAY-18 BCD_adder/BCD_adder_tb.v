`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 10:37:57
// Design Name: 
// Module Name: BCD_adder_tb
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


module BCD_adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]S;
wire cout;
BCD_adder UUT (.S(S),.cout(cout),.a(a),.b(b),.cin(cin));
initial begin
    cin=1'b0;
    a=4'b1010; b=4'b0010;
    #5
    a=4'b0010; b=4'b1000;
    #5
    a=4'b1000; b=4'b0011;
    #5
    a=4'b0101; b=4'b0000;
    #5
    $finish();
end
endmodule
