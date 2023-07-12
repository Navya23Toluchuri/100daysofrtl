`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 14:55:16
// Design Name: 
// Module Name: Binary_to_gray_tb
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


module Binary_to_gray_tb();
reg [3:0]b;
wire [3:0]g;
Binary_to_gray UUT (.g(g),.b(b));
initial begin
b=4'b1001;
#5
b=4'b0011;
#5
b=4'b1111;
#5
b=4'b0101;
#5
$finish();
end
endmodule
