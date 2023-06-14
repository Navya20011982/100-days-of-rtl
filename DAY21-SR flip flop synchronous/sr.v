`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:55 06/14/2023 
// Design Name: 
// Module Name:    sr 
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
module sr(clk,reset,s,r,q);
input clk,reset,s,r;
output q;
reg  q;
always@(posedge clk)
begin
if(reset==1)
q=0;
else
case({s,r})
2'b00:q=q;
2'b01:q =0;
2'b10:q =1;
2'b11:q =1'bz;
endcase
end
endmodule
