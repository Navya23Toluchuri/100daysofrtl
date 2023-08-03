`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2023 19:12:46
// Design Name: 
// Module Name: SR_latch_gm
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


module SR_latch_gm(Q,QB,S,R);
input S,R;
output Q,QB;
nor U1 (Q,QB,R);
nor U2 (QB,Q,S);
endmodule
