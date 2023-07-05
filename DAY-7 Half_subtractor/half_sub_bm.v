`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 21:07:34
// Design Name: 
// Module Name: half_sub_bm
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


module half_sub_bm(
input a,b,
output reg diff,borrow
    );
    always @ (a,b);
    initial begin
    diff=a^b;
    borrow=~(a)&b;
    end
endmodule
