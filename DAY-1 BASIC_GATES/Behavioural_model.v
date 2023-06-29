`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 20:57:42
// Design Name: 
// Module Name: gates_bm
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


module gates_bm(
input a,input b,
output reg[0:6]c
    );
always @ (a or b)
begin 
c[0]=~a;
c[1]=a&b;
c[2]=a|b;
c[3]=~(a&b);
c[4]=~(a|b);
c[5]=a^b;
c[6]=~(a^b);
end
endmodule
