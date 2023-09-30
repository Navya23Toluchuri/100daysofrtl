`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 15:35:46
// Design Name: 
// Module Name: root_of_number
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


module root_of_number(sq_rt,cb_rt,num);
input [31:0] num;
output reg [31:0] sq_rt,cb_rt;
always @(num) begin
square_root(sq_rt,num);
cube_root(cb_rt,num);
end
task square_root;
    output [31:0]out;
    input [31:0]n;
    assign out = n**(0.5);
endtask

task cube_root;
    output [31:0]out;
    input [31:0]n;
    assign out = n**(0.3333);
 endtask
endmodule
