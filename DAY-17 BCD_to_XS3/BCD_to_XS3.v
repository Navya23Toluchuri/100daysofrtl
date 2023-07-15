`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 16:13:16
// Design Name: 
// Module Name: BCD_to_XS3
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


module BCD_to_XS3(x,b);
input [3:0]b;
output reg [3:0]x;
always@(b)
begin
    if(b==4'bxxxx)
        x=4'bxxxx;
    else
        x=b+4'b0011;

end
endmodule
