`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 12:15:46
// Design Name: 
// Module Name: Coffee_machine
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


module Coffee_machine(coffee_ready,in,clk,rst);
input in,clk,rst;
output reg coffee_ready;
parameter [2:0] press_button=3'b0,
                fill_water=3'b1,
                add_milk=3'b010,
                add_coffee=3'b011,
                add_sugar=3'b100,
                cup=3'b101;
reg [2:0] PS,NS;
reg no_water=0,no_milk=0,no_coffee=0,no_sugar=0,no_cup=0;
always @(posedge clk,negedge rst)
if(rst)
PS<=press_button;
else
PS<=NS;  
            
always @(in,PS)
case(PS)
press_button: begin
              coffee_ready<=0;
              if(in)
              NS<=fill_water;
              else
              NS<=press_button;
              end
fill_water:   begin
              coffee_ready<=0;
              if(in)
              NS<=add_milk;
              else  begin
              NS<=press_button; 
              $display($time," No water"); 
              end 
              end
add_milk:     begin
              coffee_ready<=0;
              if(in)
              NS<=add_coffee;
              else  begin
              NS<=press_button;
              $display($time," No milk powder"); 
              end
              end
add_coffee:   begin
              coffee_ready<=0;
              if(in)
              NS<=add_sugar;
              else begin
              NS<=press_button;
              $display($time," No coffee powder");
              end
              end
add_sugar:    begin
              coffee_ready<=0;
              if(in)
              NS<=cup;
              else  begin
              NS<=press_button;
              $display($time," No sugar");
              end  end
cup:          begin
              coffee_ready<=1;
              $display($time," Your coffee is ready");
              NS<=press_button;
              end
endcase
endmodule
