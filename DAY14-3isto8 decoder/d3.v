`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:29 06/07/2023 
// Design Name: 
// Module Name:    d3 
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
module d3(a,b,c,dout);
input a,b,c;
output[7:0]dout;
reg[7:0]dout;
always@(a,b,c)
begin
case({a,b,c})
3'b000:dout=8'b00000001;
3'b001:dout=8'b00000010;
3'b010:dout=8'b00000100;
3'b011:dout=8'b00001000;
3'b100:dout=8'b00010000;
3'b101:dout=8'b00100000;
3'b110:dout=8'b01000000;
3'b111:dout=8'b10000000;

endcase
end
endmodule
