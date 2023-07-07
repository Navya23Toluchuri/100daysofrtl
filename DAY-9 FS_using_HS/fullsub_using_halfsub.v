`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 10:51:50
// Design Name: 
// Module Name: fullsub_using_halfsub
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
module halfsubtractor(
input a,b,
output d,borrow);
assign d = a^b;
assign borrow = ~(a)&b;
endmodule

module fullsub_using_halfsub(
input a,b,borrow,
output diff,borrowout,
wire x1,x2,x3
);
 halfsubtractor g1(a,b,x1,x2);
 halfsubtractor g2(x1,borrow,diff,x3);
 assign borrowout = x3|x2;
endmodule
