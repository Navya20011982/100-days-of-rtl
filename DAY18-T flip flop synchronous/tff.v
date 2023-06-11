`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:29 06/11/2023 
// Design Name: 
// Module Name:    tff 
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
module tff(t,clk,reset,q);
input t,clk,reset;
output q;
reg q;
always@(posedge clk)
begin
if(reset==1)
q=0;
else if(reset==0)
q=q;
else
q=~q;
end
endmodule
