`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2023 22:52:10
// Design Name: 
// Module Name: D_latch_tb
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


module D_latch_tb();
reg D,E;
wire Q,QB;
D_latch uut (Q,QB,D,E);
initial begin
E=1; D=0;
#10 E=0; D=0;
#10 E=1; D=1;
#10 E=0; D=1;
#10 $finish();
end
endmodule
