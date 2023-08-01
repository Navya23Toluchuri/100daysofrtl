`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2023 19:02:57
// Design Name: 
// Module Name: Mux_as_logic_gate_tb
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


module Mux_as_logic_gate_tb();
reg a,b;
wire [7:1]Y;
Mux_as_logic_gates uut (Y,a,b);
initial begin
a=0;b=0;
#5
a=0;b=1;
#5
a=1;b=0;
#5
a=1;b=1;
#5
$finish();
end
endmodule
