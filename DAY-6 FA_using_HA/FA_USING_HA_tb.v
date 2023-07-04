`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 10:13:07
// Design Name: 
// Module Name: FA_USING_HA_tb
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


module FA_USING_HA_tb();
reg a,b,cin;
wire sum,cout;
fulladder_using_halfadder uut (a,b,cin,sum,cout);
initial begin
a=0;b=0;cin=0;
#1
a=0;b=0;cin=1;
#1
a=0;b=1;cin=0;
#1
a=0;b=1;cin=1;
#1
a=1;b=0;cin=0;
#1
a=1;b=0;cin=1;
#1
a=1;b=1;cin=0;
#1
a=1;b=1;cin=1;
#1
$finish();
end
endmodule
