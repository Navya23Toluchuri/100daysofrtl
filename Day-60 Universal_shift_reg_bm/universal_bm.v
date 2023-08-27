`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 15:17:51
// Design Name: 
// Module Name: universal_bm
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


module universal_bm(Q,A,S,Lin,Rin,reset,CLK);
input [3:0]A;
input [1:0]S;
input Lin,Rin,reset,CLK;
output reg [3:0]Q;
always @(posedge CLK)
if(reset)
    Q = 4'b0000;
else
    begin
    case(S)
    2'b00: Q<=Q;
    2'b01: begin
            Q[3]<=Rin; Q[2]<=Q[3]; Q[1]<=Q[2]; Q[0]<=Q[1];
            end
    2'b10: begin
            Q[0]<=Lin; Q[1]<=Q[0]; Q[2]<=Q[1]; Q[3]<=Q[2];
            end
     2'b11: Q<=A;
    endcase
    end
endmodule
