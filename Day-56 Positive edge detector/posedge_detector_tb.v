`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 05:41:58
// Design Name: 
// Module Name: posedge_detector_tb
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


module posedge_detector_tb();
reg in,CLK;
wire y;
posedge_dect_gm uut (.y(y),.CLK(CLK),.in(in));
always #1 CLK = ~CLK;
initial begin
$monitor($time,"in=%b,y=%b",in,y);
CLK <= 1'b0; in <= 1'b0;
#5 in<=1'b1;
#5 in<=1'b0;
#5 in<=1'b1;
#10 in<=1'b0;
#5 in<=1'b1;
#20 $finish();
end 
endmodule
