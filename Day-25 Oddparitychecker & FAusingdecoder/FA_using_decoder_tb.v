`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2023 15:58:51
// Design Name: 
// Module Name: FA_using_decoder_tb
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


module FA_using_decoder_tb();
reg [2:0]a;
wire s,cout;
FA_using_decoder uut (s,cout,a);
initial begin
a=3'b101;
#5
a=3'b100;
#5
a=3'b110;
#5
a=3'b111;
#5
$finish();
end
endmodule
