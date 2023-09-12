`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 08:14:18
// Design Name: 
// Module Name: LFSR_4bit
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


module LFSR_4bit(out1,out2,clk,rst);
input clk,rst;
output reg [3:0]out1,out2;
always @(posedge clk, posedge rst)
begin
if(rst) begin
    out1<=4'hf;
    out2<=4'b0;
    end
else begin
    out1<={out1[2:0],(out1[3]^out1[2])};
    out2<={out2[2:0],~(out2[3]^out2[1])};
    end
end
endmodule
