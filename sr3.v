`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:24 12/02/2023 
// Design Name: 
// Module Name:    sr3 
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
module sr3(clk,reset,s,r,q);
input clk,reset,s,r;
output q;
reg q;
always@(posedge clk)
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

