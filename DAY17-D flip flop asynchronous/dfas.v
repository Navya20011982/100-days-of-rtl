`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:00 06/10/2023 
// Design Name: 
// Module Name:    dfas 
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
module dfas(clk,rest,d,q);
input rest,clk,d;
output q;
reg q;
always@(negedge clk, negedge rest)
begin
if(rest==1)
q=0;
else
case(d)
1'b0:q=1'b0;
1'b1:q=1'b1;
endcase
end
endmodule
