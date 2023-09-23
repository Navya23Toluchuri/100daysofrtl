`timescale 1ns / 1ps


module CRC_16_serial(clk,rst,load,d_finish,crc_in,crc_out); 
input clk; 
input rst; 
input load; 
input d_finish; 
input crc_in; 
output crc_out; 
reg crc_out; 
reg [15:0] crc_reg; 
reg [1:0] state; 
reg [4:0] count;  
parameter idle = 2'b00;
parameter compute = 2'b01;
parameter finish = 2'b10; 
always@(posedge clk) 
begin 
case(state) 
 idle:begin 
 if(load) 
 state <= compute; 
 else 
 state <= idle; 
 end 
 compute:begin 
 if(d_finish) 
 state <= finish; 
 else 
 state <= compute; 
 end 
 finish:begin 
 if(count==16) 
 state <= idle; 
 else 
 count <= count+1; 
 end 
endcase 
end 
always@(posedge clk or negedge rst)
 if(rst) 
 begin 
 crc_reg[15:0] <= 16'b0000_0000_0000_0000;
 count <= 5'b0_0000; 
 state <= idle; 
 end 
 else 
 case(state) 
 idle:begin 
 crc_reg[15:0] <= 16'b0000_0000_0000_0000; 
 end 
 compute:begin 
 
 crc_reg[0] <= crc_reg[15] ^ crc_in; 
 crc_reg[1] <= crc_reg[0]; 
 crc_reg[2] <= crc_reg[1] ^ crc_reg[15] ^ crc_in; 
 crc_reg[14:3] <= crc_reg[13:2]; 
 crc_reg[15] <= crc_reg[14] ^ crc_reg[15] ^ crc_in; 
 crc_out <= crc_in; 
 end 
 finish:begin 
 crc_out <= crc_reg[15]; 
 crc_reg[15:0] <= {crc_reg[14:0],1'b0}; 
 end 
 endcase 
endmodule

