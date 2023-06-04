`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:27 06/04/2023 
// Design Name: 
// Module Name:    d2 
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
module d2(a,b,y1,y2,y3,y4);
input a,b;
output y1,y2,y3,y4;
assign y1=~a&~b;
assign y2=~a&b;
assign y3=a&~b;
assign y4=a&b;
endmodule
/*
structural style of code
module decorder2(a,b,y1,y2,y3,y4);
input a,b;
output y1,y2,y3,y4;
not n1(w1,a);
not n2(w2,b);
and a1(y1,w1,w2);
and a2(y3,a,w2);
and a3(y4,a,b);
endmodule
*/
/*
behavioural style of coding
module decoder2(a,b,en,dout);
input a,b,en;
output[3:0]dout;
always@(a,b,en)
begin
if(en==0)
dout=4'bzzzz;
else
case({a,b})
2'b00:dout=4'b0001;
2'b01:dout=4'b0010;
2'b10:dout=4'b0100;
2'b11:dout=4'b1000;
endcase
end
endmodule
*/