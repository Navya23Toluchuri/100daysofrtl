`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 21:00:13
// Design Name: 
// Module Name: Traffic_controller_sr_tb
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


module Traffic_controller_sr_tb();
reg clk,rst,allow;
wire R,G,Y;
Traffic_controller_single_road uut (R,G,Y,clk,rst,allow);
always #1 clk=~clk;
always #200 $finish();
initial begin
clk=1; rst=1; allow=0;
#4 rst=0;
#5 allow=1;
#5 allow=0;
#15 allow=1;
#5 allow=0;
#10 allow=1;
#5 allow=0;
end
endmodule
