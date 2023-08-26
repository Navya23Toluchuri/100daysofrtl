`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2023 14:32:27
// Design Name: 
// Module Name: bi_directional_shift_register
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


module bi_directional_shift_register(Q,RIGHT,rin,lin,CLK,CLR);
    input RIGHT,rin,lin,CLK,CLR;
    output reg [2:0]Q;
    always @(posedge CLK)
    begin
    if(CLR)
    Q = 3'b000;
    else
    begin
        if(RIGHT)
        begin
        Q[2] <= rin; Q[1] <= Q[2]; Q[0] <= Q[1];
        end
        else if (~RIGHT)
        begin
        Q[0] <= lin; Q[1] <= Q[0]; Q[2] <= Q[1];
        end
      end
    end
    initial Q = 3'b000;
endmodule
