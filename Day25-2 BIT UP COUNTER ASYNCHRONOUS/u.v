`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:22 06/19/2023 
// Design Name: 
// Module Name:    u 
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
module u(reset,clk,count_out);
input reset,clk;
output [1:0]count_out;
reg [1:0]count_up=2'b00;
always@(posedge clk,negedge reset)
begin
if(reset)
count_up=2'b00;
else
count_up=count_up+2'b01;
end
assign count_out=count_up;
endmodule
