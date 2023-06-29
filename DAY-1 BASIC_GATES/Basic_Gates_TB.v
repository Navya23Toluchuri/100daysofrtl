`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 20:50:12
// Design Name: 
// Module Name: basic_gates_tb
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


module basic_gates_tb();
reg a,b;
wire [0:6]c;
gates_df uut (a,b,c);
initial begin
a=0;b=0;
#10
a=0;b=1;
#10
a=1;b=0;
#10
a=1;b=1;
#10
$finish();
end
endmodule
