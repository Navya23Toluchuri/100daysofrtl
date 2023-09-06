`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Factorial_4bit(result,num);
input [3:0]num;
output reg [31:0]result;
always @(*)
    begin
        result = cal_fact(num);
    end
///////////////
function  automatic [31:0] cal_fact;
input [3:0]num;
if(num>=2)
    cal_fact = cal_fact(num-1) * num;
else
    cal_fact = 32'b1;
endfunction   
endmodule
