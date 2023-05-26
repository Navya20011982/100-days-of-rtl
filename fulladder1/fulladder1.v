`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:21 05/26/2023 
// Design Name: 
// Module Name:    fulladder1 
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
module fulladder1(sum,carry,a,b,c);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule
//gate level coding:
//module gate(a,b,c,sum,carry);
//input a,b,c;
//output sum,carry;
//wire w1,w2,w3;
//xor x1(sum,a,b,c);
//and a1(w1,a,b);
//and a2(w2,b,c);
//and a3(w3,a,c);
//or o1(carry,w1,w2,w3);
//endmodule
//
//
//Behavioural modeling
//module fulladder(sum,carry,a,b,c);
//input a,b,c;
//output sum,carry;
//reg sum,carry;
//always@(a,b,c)
//begin
//case({a,b,c})
/*3'b000:{sum,carry}=2'b00;
3'b001:{sum,carry}=2'b10;
3'b010:{sum,carry}=2'b10;
3'b011:{sum,carry}=2'b01;
3'b100:{sum,carry}=2'b10;
3'b101:{sum,carry}=2'b01;
3'b110:{sum,carry}=2'b01;
3'b111:{sum,carry}=2'b01;
endcase
end
endmodule
*/



