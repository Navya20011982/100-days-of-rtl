`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:42:52 05/27/2023 
// Design Name: 
// Module Name:    mux2 
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
module mux2(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
assign y=((~s1)&(~s0)&a)|((~s1)&s0&b)|(s1&(~s0)&c)|(s1&s0&d);
endmodule
/* gate level modeling
module mux2(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
wire w1,w2,w3,w4,w5,w6;
not n0(w1,s0);
not n1(w2,s1);
and a1(w3,w1,w2,a);
and a2(w4,w2,s0,b);
and a3(w5,w3,s1,c);
and a4(w6,s0,s1,d);
or o(y,w3,w4,w5,w6);
*/
/*behavioural modeling
module mux2(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
reg y;
always@(a,b,c,d,s0,s1,y)
begin
if(s0==0 && s1==0)
y=a;
elseif(s0==0 && s1=1)
y=b;
elseif(s0==1 &&s1==0)
y=c;
else
y=d;
end
endmodule
*/
