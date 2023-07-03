`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 22:21:33
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;
reg a,b,ci;
wire s,c0;
fulladder g3(c0,s,a,b);
initial
    begin
        #100 a=0;b=0;ci=0;
        #100 a=0;b=0;ci=1;
        #100 a=0;b=1;ci=0;
        #100 a=0;b=1;ci=1;
        #100 a=1;b=0;ci=0;
        #100 a=1;b=0;ci=1;
        #100 a=1;b=1;ci=0;
        #100 a=1;b=1;ci=1;
      
    end

endmodule
