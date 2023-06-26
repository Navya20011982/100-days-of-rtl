`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:10 06/22/2023 
// Design Name: 
// Module Name:    downasy 
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
module downasy(reset,clk,count_out);
input reset,clk;
output [1:0]count_out;
reg [1:0]count_down=2'b11;
always@(posedge clk,reset)
begin
if(reset)
count_down=2'b11;
else
count_down=count_down-2'b01;
end
assign count_out=count_down;
endmodule
