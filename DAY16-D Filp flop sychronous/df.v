`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:15 06/09/2023 
// Design Name: 
// Module Name:    df 
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
module df(clk,rest,d,q);
input rest,clk,d;
output q;
reg q;
always@(posedge clk)
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
