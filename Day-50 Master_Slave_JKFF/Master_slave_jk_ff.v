`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 16:31:50
// Design Name: 
// Module Name: Master_slave_jk_ff
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
module JKFF(Q,J,K,CLK);
input J,K,CLK;
output reg Q;
always @ (CLK)
case({J,K})
2'b00: Q=Q;
2'b01: Q=0;
2'b10: Q=1;
2'b11: Q=~Q;
endcase
endmodule

module SRFF(Q,S,R,CLK);
input S,R,CLK;
output reg Q;
always @ (CLK) begin
case({S,R})
    2'b00: Q=Q;
    2'b01: Q=0;
    2'b10: Q=1;
    2'b11: Q=1'bX;
endcase
end
endmodule



module Master_slave_jk_ff(Q,QM,J,K,CLK);
input J,K,CLK;
output Q,QM;
JKFF master (.Q(QM),.J(J),.K(K),.CLK(CLK));
SRFF slave (.Q(Q),.S(QM),.R(~QM),.CLK(~CLK));
endmodule
