`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 16:07:02
// Design Name: 
// Module Name: divider_4bit
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


module divider_4bit(q,r,a,b);
input [3:0]a,b;
output reg [3:0]r,q;

integer i;
always @(a,b) begin
q = 0; r = a; 
for(i=0;i<16;i=i+1) begin
    if(r >= b) begin
    r = r - b;
    q = q + 1;
    end
  end
end
endmodule
