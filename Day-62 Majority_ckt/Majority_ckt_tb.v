`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 10:12:12
// Design Name: 
// Module Name: Majority_ckt_tb
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


module Majority_ckt_tb();
reg [2:0]in;
wire out;
Majority_ckt uut(out,in);
always #10 $finish();
initial begin
in=3'b000;
#2 in=3'b110;
#2 in=3'b111;
#2 in=3'b001;
#2 in=3'b011;
end
endmodule
