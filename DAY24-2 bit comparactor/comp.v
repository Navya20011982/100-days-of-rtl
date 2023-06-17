`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:36 06/17/2023 
// Design Name: 
// Module Name:    comp 
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
module comp(a,b,e,l,g);
input [1:0]a,b;
output e,l,g;
reg e,l,g;
always@(a,b)
begin
if(a==b)
begin
e=1;
l=0;
g=0;
end
else if(a>b)
begin
e=0;
l=0;
g=1;
end
else
begin
e=0;
l=1;
g=0;
end
end
endmodule

