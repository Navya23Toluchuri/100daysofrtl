`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 12:10:19
// Design Name: 
// Module Name: Decimal_to_BCD_tb
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


module Decimal_to_BCD_tb();
reg [9:0]I;
wire [3:0]Y;
Decimal_to_BCD_encoder uut (Y,I);
initial begin
I=10'b0000000001;
#5
I=10'b0000010000;
#5
I=10'b0100000000;
#5
I=10'b0010000000;
#5
I=10'b0001000000;
#5
$finish();
end
endmodule
