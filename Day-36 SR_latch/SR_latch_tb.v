`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2023 12:02:50
// Design Name: 
// Module Name: SR_latch_tb
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

module SR_latch_tb;
reg S,R;  
wire Q, QB; 
SR_latch dut(Q,QB,S,R);
initial begin
    S=0; R=1; 
    #5;
    S=0; R=0;
    #5
    S=1; R=0; 
    #5
    S=1; R=1;
    #5
$finish();
end
endmodule
