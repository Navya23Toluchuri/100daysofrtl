`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Factorial_tb();
reg [3:0]num;
wire [31:0]result;
Factorial_4bit uut (result,num);
initial begin
$monitor($time,"num=%d,result=%d",num,result);
num=4'd0;
#5 num=4'd1;
#5 num=4'd2;
#5 num=4'd3;
#5 num=4'd4;
#5 num=4'd5;
#5 num=4'd6;
#5 num=4'd7;
#5 num=4'd11;
#5 num=4'd12;
#5 num=4'd13;
#5 num=4'd14;
#5 num=4'd15;
#5 $finish();
end
endmodule
