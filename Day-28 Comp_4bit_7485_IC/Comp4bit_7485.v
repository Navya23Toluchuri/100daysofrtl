`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 13:37:43
// Design Name: 
// Module Name: Comp4bit_7485
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


module Comp4bit_7485(L,E,G,a,b,Lin,Gin,Ein);
input [3:0]a,b;
input Lin,Ein,Gin;
output reg L,E,G;
always @ (*)
begin 
    if(a==b)
    begin
        L=Lin;
        G=Gin;
        E=Ein;
    end
    else if(a>b)
    begin
        G=1;
        E=0;
        L=0;
    end
    else
    begin
        G=0;
        E=0;
        L=1;
    end
end
endmodule
