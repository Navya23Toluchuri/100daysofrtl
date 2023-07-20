`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 15:02:57
// Design Name: 
// Module Name: decoder_3x8_tb
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

module decoder_3x8_tb();
reg [2:0]a;
reg en;
wire [7:0]d;
decoder_3x8 uut (d,a,en);
initial begin
a=3'b000; en=1;
#5
a=3'b001;
#5
a=3'b010;
#5
a=3'b011;
#5
a=3'b111;
#5
a=3'b101;
#5
a=3'b100;
#5
en=0;
#5
$finish();
end
endmodule
