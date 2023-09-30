`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 15:36:14
// Design Name: 
// Module Name: root_of_number_tb
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


module root_of_number_tb();
reg [31:0] num;
wire [31:0] sq_rt,cb_rt;
root_of_number uut (sq_rt,cb_rt,num);
always begin
num=$random;
#5;
end
initial begin
$monitor("%0d %0d %0d",num,sq_rt,cb_rt);
#50 $finish();
end
endmodule
