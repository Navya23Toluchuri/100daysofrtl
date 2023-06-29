`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 21:19:28
// Design Name: 
// Module Name: gates_df
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


module gates_df(
input a,input b,output [0:6]c
    );
assign c[0]=~a; 
assign c[1]=a&b;
assign c[2]=a|b;
assign c[3]=~(a&b);
assign c[4]=~(a|b);
assign c[5]=a^b;
assign c[6]=~(a^b);   
endmodule
