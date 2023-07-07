`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 11:12:08
// Design Name: 
// Module Name: FS_using_HS_tb
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


module FS_using_HS_tb();
reg a,b,borrow;
wire diff,borrowout;
fullsub_using_halfsub uut(a,b,borrow,diff,borrowout);
initial begin
a=0;b=0;borrow=0;
#5
a=0;b=0;borrow=1;
#5
a=0;b=1;borrow=0;
#5
a=0;b=1;borrow=1;
#5
a=1;b=0;borrow=0;
#5
a=1;b=0;borrow=1;
#5
a=1;b=1;borrow=0;
#5
a=1;b=1;borrow=1;
#5
$finish();
end
endmodule
