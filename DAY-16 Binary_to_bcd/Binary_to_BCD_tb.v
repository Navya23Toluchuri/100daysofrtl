`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2023 12:15:52
// Design Name: 
// Module Name: Binary_to_BCD_tb
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


module Binary_to_BCD_tb;
reg [3:0]bi;
wire [7:0]bcd;
binary_bcd uut (.bcd(bcd),.bi(bi));
initial begin
bi=4'b1001;
#5
bi=4'b1111;
#5
bi=4'b1000;
#5
bi=4'b1011;
#5
$finish();
end
endmodule
