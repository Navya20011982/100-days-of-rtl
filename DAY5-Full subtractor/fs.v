`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:43 05/27/2023 
// Design Name: 
// Module Name:    fs 
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
module fs(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
assign diff=(a^b)^c;
assign borrow=((~a)&&c)||(b&&c)||((~a)&&b);
endmodule
//gate level modeling
/* module fs(diff,borrow,a,b,c);
input a,b,c;
output diff, borrow;
wire x,n1,n2,y,z;
not (n1,c);
xor (x,b,c);
xor (diff,x,a);
and (y,n1,b);
and (z,a,n2);
or (borrow,z,y);
endmodule */
//behavioural modeling
/*module fs(diff,borrow,a,b,c);
input a,b,c;
output diff, borrow;
reg diff,borrow;
always @(a,b,c)
begin
case({a,b,c})
3'b000:{diff,borrow}=2'b00
3'b000:{diff,borrow}=2'b11
3'b000:{diff,borrow}=2'b11
3'b000:{diff,borrow}=2'b01
3'b000:{diff,borrow}=2'b10
3'b000:{diff,borrow}=2'b00
3'b000:{diff,borrow}=2'b00
3'b000:{diff,borrow}=2'b11
endmodule
*/



