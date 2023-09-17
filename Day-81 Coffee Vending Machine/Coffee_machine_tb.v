`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 12:16:16
// Design Name: 
// Module Name: Coffee_machine_tb
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


module Coffee_machine_tb();
reg in,clk,rst;
wire coffee_ready;
Coffee_machine uut (coffee_ready,in,clk,rst);
always #1 clk=~clk;
always #100 $finish();
initial begin
clk=1; rst=1; in=1;
#4 rst=0;
#5 in=0;
#5 in=1;
#5 in=0;
#5 in=1;
#15 in=0;
#5 in=1;
#10 in=0;
#5 in=1;
end
endmodule
