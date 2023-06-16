`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:19 06/16/2023 
// Design Name: 
// Module Name:    jkasy 
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
module jkasy(clk,reset,j,k,q);
input clk,reset,j,k;
output q;
reg q;
always@(posedge clk,reset)
begin
if(reset==1)
q=1'b0;
else
case({j,k})
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=~q;
endcase
end
endmodule
