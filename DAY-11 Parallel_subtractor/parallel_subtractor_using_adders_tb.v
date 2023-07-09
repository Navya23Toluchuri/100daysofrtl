`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2023 08:29:20
// Design Name: 
// Module Name: parallel_subtractor_using_adders_tb
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


module parallel_subtractor_using_adders_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]x;
wire cout;
parallel_subtractor_using_adders uut (a,b,cin,x,cout);
initial begin
cin=1;
a=4'b1100;b=4'b0001;
#10
a=4'b1111;b=4'b0000;
#10
a=4'b1111;b=4'b1100;
#10
a=4'b1111;b=4'b1111;
#10
$finish();
end
endmodule
