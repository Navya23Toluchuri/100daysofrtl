`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 16:14:17
// Design Name: 
// Module Name: BCD_to_XS3_tb
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


module BCD_to_XS3_tb();
reg [3:0]b;
wire [3:0]x;
BCD_to_XS3 UUT(.x(x),.b(b));
initial begin
b=4'b1001;
#5
b=4'b0011;
#5
b=4'b0111;
#5
b=4'bxxxx;
#5
$finish();
end
endmodule
