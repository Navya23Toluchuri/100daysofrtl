`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 23:01:42
// Design Name: 
// Module Name: Freq_divider_by_TFF_tb
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


module Freq_divider_by_TFF_tb();
reg FIN,T;
wire FOUT;
Tff_as_freq_divider uut (.FOUT(FOUT),.T(T),.FIN(FIN));
always #2 FIN = ~FIN;
initial begin
FIN = 1; T= 1'b1;
#20 $finish();
end
endmodule
