`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 10:28:35
// Design Name: 
// Module Name: Traffic_control_2way_tb
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


module Traffic_control_2way_tb();
reg sb,rst,clk;
wire Ra,Ya,Ga,Rb,Yb,Gb;
Traffic_control_2way uut (Ra,Ya,Ga,Rb,Yb,Gb,clk,rst,sb);
always #1 clk=~clk;
always #150 $finish();
initial begin
clk=1; rst=1; sb=0;
#4 rst=0;
#10 sb=1;
#20 sb=0;
#20 sb=1;
#15 sb=0;
end

endmodule
