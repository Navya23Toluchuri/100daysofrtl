`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 16:32:18
// Design Name: 
// Module Name: Master_slave_jk_ff_tb
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


module Master_slave_jk_ff_tb();
reg J,K,CLK;
wire Q,QM;
Master_slave_jk_ff uut (.Q(Q),.QM(QM),.J(J),.K(K),.CLK(CLK));
always #1 CLK = ~CLK;
always #4 J = ~J;
always #2 K = ~K;
initial begin
CLK = 1'b1; J = 1'b1; K = 1'b0;
#20 $finish();
end
endmodule
