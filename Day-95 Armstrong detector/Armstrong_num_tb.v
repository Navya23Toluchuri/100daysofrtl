`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 1.10.2023 16:32:58
// Design Name: 
// Module Name: Armstrong_num_tb
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


module Armstrong_num_tb();
reg [9:0]num;
wire armstrong;
Armstrong_num uut (armstrong,num);
initial begin
$monitor("%d %d", num,armstrong);
num=153;
#10 num=456;
#10 num=371;
#10 num=370;
#10 num=288;
#10 num=1;
#10 num=280;
#10 num=407;
#100 $finish();
end
endmodule
