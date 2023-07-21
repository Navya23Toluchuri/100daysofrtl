`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 15:21:38
// Design Name: 
// Module Name: decoder_5x32_tb
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


module decoder_5x32_tb();
reg [4:0]a;
reg en;
wire [31:0]d;
decoder_5x32 uut (d,a,en);
initial begin
a=5'b01101; en=1;
#5
a=5'b11111;
#5
a=5'b00000;
#5
en=0;
#5
$finish();
end
endmodule
