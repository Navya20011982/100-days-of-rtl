`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:01 06/20/2023 
// Design Name: 
// Module Name:    u1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module u1(reset,clk,count_out);
input reset,clk;
output [1:0]count_out;
reg [1:0]count_up1=2'b00;
always@(posedge clk)
begin
if(reset)
count_up1=2'b00;
else
count_up1= count_up1+2'b01;
end
assign count_out=count_up1;
endmodule
