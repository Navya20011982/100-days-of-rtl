`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:49 06/12/2023 
// Design Name: 
// Module Name:    tffasy 
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
module tffasy(t,reset,clk,q);
input reset,clk,t;
output q;
reg q;
always@(posedge clk,reset)
begin
if(reset==1)
q=0;
else
case(t)
1'b0:q=q;
1'b1:q=~q;
endcase
end
endmodule
