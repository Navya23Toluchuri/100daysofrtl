`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 13:04:47
// Design Name: 
// Module Name: Booth_multiplication
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


module Booth_multiplication(out,M,Q);
    input signed [4:0]M,Q;
    output reg signed [9:0]out;
    reg [1:0]op;
    integer i;
    reg q0;
    reg [4:0]M_comp;
    always @(Q,M)
    begin
    out=10'b0;
    q0=1'b0;
    M_comp= -M;
    for(i=0; i<5; i=i+1) begin
    op = { Q[i], q0 };
    case(op)
    2'b10: out[9:5] = out[9:5] + M_comp;
    2'b01: out[9:5] = out[9:5] + M;
    endcase
    out = out >> 1;
    out[9] = out[8];
    q0=Q[i];
    end
    end
endmodule

