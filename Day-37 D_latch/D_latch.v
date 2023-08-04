`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2023 22:46:20
// Design Name: 
// Module Name: D_latch
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


module D_latch(Q,QB,D,E);
input D,E;
output reg Q,QB;
always @(D,E) begin
if(E) begin
    Q = D;
    QB = ~Q;
end
else begin
    Q = Q;
    QB = QB;
end
end
endmodule
