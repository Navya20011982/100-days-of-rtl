`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:11 06/08/2023 
// Design Name: 
// Module Name:    alu 
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
module alu(a,b,en,res,op,ach);
input[31:0]a,b;
input en;
input[31:0]op;
output[31:0]res;
output ach;
reg[31:0]res;
reg ach;
always@(op,en)
begin
if(en==0)
res=32'hzzzzzzzz;
else
case(op)
3'b000:res=a+b;
3'b001:res=a-b;
3'b010:res=a+1;
3'b011:res=a-1;
3'b100:res=a;
3'b101:res=~a;
3'b110:res=a/b;
3'b111:res=a&b;
endcase
ach=1'b1;
end
endmodule
