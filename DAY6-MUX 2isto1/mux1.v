`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:12 05/27/2023 
// Design Name: 
// Module Name:    mux1 
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
module mux1(a,b,s0,y);
input a,b,s0;
output y;
assign y=((~s0)&a)|(s0&b);
endmodule
/* gate level modeling
module mux1(a,b,s0,y);
input a,b,s0;
output y;
wire w1,w2,w3;
not n0(w1,s0);
and a0(w2,a,w1);
and a1(w3,s0,b);
or o0(y,w2,w3);
endmodule
*/
/* behavioral  modeling
module mux1(a,b,s0,y);
input a,b,s0;
output y;
reg y;
always@(a,b,s0)
begin
if(s0==0)
y=a;
else 
y=b;
endmodule
*/




