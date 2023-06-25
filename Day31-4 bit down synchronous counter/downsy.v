`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:13 06/25/2023 
// Design Name: 
// Module Name:    downsy 
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
module downsy(reset,clk,count_out);
input reset,clk;
output [3:0]count_out;
reg [3:0]count_down=4'b1111;
always@(posedge clk)
begin
if(reset)
count_down=4'b1111;
else
count_down=count_down-4'b0001;
end
assign count_out=count_down;
endmodule


