`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2023 21:14:25
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();
reg a,b,borrowin;
wire diff,borrowout;
full_subtractor_df uut (a,b,borrowin,diff,borrowout);
initial begin
a=0;b=0;borrowin=0;
#10
borrowin=1;
#10
b=1;borrowin=0;
#10
borrowin=1;
#10
a=1;b=0;borrowin=0;
#10
borrowin=1;
#10
b=1;borrowin=0;
#10
borrowin=1;
#10
$finish();
end
endmodule
