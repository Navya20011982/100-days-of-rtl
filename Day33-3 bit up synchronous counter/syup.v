`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:28 06/27/2023 
// Design Name: 
// Module Name:    syup 
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
module syup(reset,clk,count_out);
input reset,clk;
output [2:0]count_out;
reg [2:0]count_up=3'b000;
always@(posedge clk)
begin
if(reset)
count_up=3'b000;
else
count_up=count_up+3'b001;
end
assign count_out=count_up;
endmodule
   
