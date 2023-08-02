`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 16:07:31
// Design Name: 
// Module Name: divider_4bit_tb
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


module divider_4bit_tb();
reg [3:0]a,b;
wire [3:0]q,r;
divider_4bit uut (q,r,a,b);
initial begin
a=4'b1010; b=4'b0101;
#5
a=4'b1111; b=4'b0011;
#5
a=4'b1011; b=4'b1000;
#5
a=4'b0111; b=4'b0010;
#5
$finish();
end

endmodule
