`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2023 21:47:13
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(Q,S,R,CLK);
input S,R,CLK;
output reg Q;
always @ (posedge CLK) begin
case({S,R})
    2'b00: Q=Q;
    2'b01: Q=0;
    2'b10: Q=1;
    2'b11: Q=1'bX;
endcase
end
endmodule

