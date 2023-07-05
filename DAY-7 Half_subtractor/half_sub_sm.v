`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 21:08:06
// Design Name: 
// Module Name: half_sub_sm
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


module half_sub_sm(
input a,b,
output diff,borrow,
wire x
    );
    xor(diff,a,b);
    not(x,a);
    and(borrow,x,b);
    
endmodule
