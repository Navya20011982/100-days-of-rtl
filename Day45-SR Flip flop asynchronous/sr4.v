`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:12:06 12/04/2023 
// Design Name: 
// Module Name:    sr4 
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
module sr4(clk,reset,s,r,q);
input clk,reset,s,r;
output q;
reg q;
always@(posedge clk or negedge reset)
begin
if(reset==1)
q=0;
else
case({s,r})
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=1'bz;
endcase
end

endmodule
