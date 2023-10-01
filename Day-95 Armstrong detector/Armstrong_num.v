`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 1.10.2023 16:31:44
// Design Name: 
// Module Name: Armstrong_num
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


module Armstrong_num(armstrong,num);
input [9:0]num;
output reg armstrong;
parameter ARMSTRONG=1'b1,
          NOT_ARMSTRONG=1'b0;
always @(num) begin
armstrong=check_armstrong(num);
end

function check_armstrong;
input [9:0]num;
reg [9:0]k,remainder,result;
begin
result=10'd0;
k=num;
while(k!=0) begin
remainder = k % 10;
result = result + (remainder*remainder*remainder);
k = k / 10;
end
if(result==num) check_armstrong = ARMSTRONG;
else check_armstrong = NOT_ARMSTRONG;
end
endfunction
endmodule
