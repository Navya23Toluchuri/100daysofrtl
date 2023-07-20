`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 14:31:31
// Design Name: 
// Module Name: decoder_2x4_tb
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


module decoder_2x4_tb();
reg [1:0]a;
reg en;
wire [3:0]d;
decoder_2x4_bm uut (d,a,en);
initial begin
a=2'b00; en=1;
#5
a=2'b01;
#5
a=2'b10;
#5
a=2'b11;
#5
en=0;
#5
$finish();
end
endmodule
