`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 21:24:47
// Design Name: 
// Module Name: full_adder_bm
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


module full_adder_bm(
input a,b,cin,
output reg sum,cout
    );
    always@(*);
    initial begin
    sum = a^b^cin;
    cout = (a & b)|(cin & (a^b));
    end
endmodule
