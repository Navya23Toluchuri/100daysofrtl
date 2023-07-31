`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 13:20:33
// Design Name: 
// Module Name: Seven_seg_disp_tb
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


module Seven_seg_disp_tb();
reg [3:0]in;
wire [6:0]led;
integer i;
Seven_seg_disp uut (led,in);
initial begin
    for(i = 0;i<10;i = i+1)
    begin
        in=i;
        #5;
    end
 $finish();
end

endmodule
