`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 22:14:02
// Design Name: 
// Module Name: Synchronous_ALU_tb
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


module Synchronous_ALU_tb();
reg CLK;
reg [3:0]a,b;
reg [2:0]opcode;
wire [7:0]Y;
Synchronous_ALU uut (Y,opcode,a,b,CLK);
always #1 CLK=~CLK;
always #50 $finish();
initial begin
CLK=1'b1; a=4'b1010; b=4'b0101; opcode=3'b000;
#5 opcode =  3'b001;
#5 opcode =  3'b010;
#5 opcode =  3'b011;
#5 opcode =  3'b100; 
#5 opcode =  3'b101;
#5 opcode =  3'b110;
#5 opcode =  3'b111;
end
endmodule
