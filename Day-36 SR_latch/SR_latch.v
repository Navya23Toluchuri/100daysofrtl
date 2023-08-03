`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2023 12:02:28
// Design Name: 
// Module Name: SR_latch
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


module SR_latch(Q,QB,S,R);
input S,R;
output reg Q,QB;
initial begin
    Q = 0; QB = 1;
    end
always @ (S,R)
begin
    if(S!=R)  begin
        Q = S; QB = R;
    end
    if(S==1 && R==1) begin
        Q = 1'bZ; QB = 1'bZ;
    end
    if(S==0 && R==0) begin
        Q = Q; QB = QB;
    end
end
endmodule
