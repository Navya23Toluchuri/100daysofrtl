`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 21:14:43
// Design Name: 
// Module Name: Priority_Encoder_tb
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


module Priority_Encoder_tb();
reg [3:0]i;
wire [1:0]y;
Priority_Encoder_4x2 uut (y,i);
initial begin
    i=4'b0011;
    #5
    i=4'b1001;
    #5
    i=4'b0110;
    #5
    i=4'b0101;
    #5
    $finish();
end
endmodule
