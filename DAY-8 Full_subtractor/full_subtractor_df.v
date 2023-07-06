`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2023 18:39:53
// Design Name: 
// Module Name: full_subtractor_df
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


module full_subtractor_df(
input a,b,borrowin,
output diff,borrowout
    );
    assign diff = a ^ b ^ borrowin;
    assign borrowout = borrowin&(~(a^b)) | (~a)&b;
   // assign borrowout = ~a&b | ~a&borrowin | b&borrowin; 
endmodule
