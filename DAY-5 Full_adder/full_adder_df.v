`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 21:15:16
// Design Name: 
// Module Name: full_adder_df
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


module full_adder_df(
input a,b,cin,
output sum,cout
    );
   assign sum = a^b^cin;
   assign cout = (a&b)|(cin&(a^b)); 
endmodule
