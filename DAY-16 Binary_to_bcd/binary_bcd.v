`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2023 12:19:41
// Design Name: 
// Module Name: binary_bcd
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


module binary_bcd(bcd,bi);
input [3:0]bi;
output [7:0]bcd;
    assign bcd[0]=bi[0];
    assign bcd[1]=~bi[3]&bi[1] | bi[3]&bi[2]&(~bi[1]);
    assign bcd[2]=~bi[3]&bi[2] | bi[2]&bi[1];
    assign bcd[3]=bi[3]&(~bi[2])&(~bi[1]);
    assign bcd[4]=bi[3]&bi[2] | bi[3]&bi[1];  
    assign bcd[7:5]=3'b000;   
endmodule
