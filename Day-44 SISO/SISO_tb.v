`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 23:09:39
// Design Name: 
// Module Name: SISO_tb
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


module SISO_tb();
reg clk,clr,sin;
wire sout;
SISO uut (sout,sin,clk,clr);
always #2 clk=~clk;
initial begin
clk=0;
clr=0;
sin=0;
#5 clr = 1'b1;
#5 clr = 1'b0;
#10 sin = 1'b1;
#10 sin = 1'b0;
#10 sin = 1'b0;
#10 sin = 1'b1;
#10 $finish();
end

endmodule
