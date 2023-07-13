`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 15:18:19
// Design Name: 
// Module Name: Gray_to_binary_tb
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


module Gray_to_binary_tb();
reg [3:0]g;
wire [3:0]b;
Gray_to_binary UUT (.b(b),.g(g));
initial begin
g=4'b1001;
#5
g=4'b0011;
#5
g=4'b1111;
#5
g=4'b1101;
#5
$finish();
end
endmodule
