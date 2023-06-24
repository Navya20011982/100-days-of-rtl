`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:53 06/24/2023 
// Design Name: 
// Module Name:    upas 
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
module upas(reset,clk,count_out);
input reset,clk;
output [3:0]count_out;
reg [3:0]count_up=4'b0000;
always@(posedge clk,reset)
begin
if(reset)
count_up=4'b0000;
else
count_up=count_up+4'b0001;
end
assign count_out=count_up;
endmodule

