`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 12:40:58
// Design Name: 
// Module Name: XS3_adder_tb
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


module XS3_adder_tb();
reg [3:0]x,y;
reg cin;
wire [3:0]S1;
wire cout;
XS3_adder UUT (.S1(S1),.cout(cout),.x(x),.y(y),.cin(cin));
initial begin
cin=0;
x=4'b0101; y=4'b0001;
#5
x=4'b0100; y=4'b0001;
#5
x=4'b1000; y=4'b0101;
#5
x=4'b0110; y=4'b0111;
#5
$finish();
end
endmodule
