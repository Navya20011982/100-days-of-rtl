`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:12 06/06/2023 
// Design Name: 
// Module Name:    priorityen 
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
module priorityen(din,y,en);
input[7:0]din;
input en;
output[2:0]y;
reg [2:0]y;
always@(en,din)
begin
if(en==0)
y=3'bzzz;
else
casex(din)
8'b00000001:y=3'b000;
8'b0000001x:y=3'b001;
8'b000001xx:y=3'b010;
8'b00001xxx:y=3'b011;
8'b0001xxxx:y=3'b100;
8'b001xxxxx:y=3'b101;
8'b01xxxxxx:y=3'b110;
8'b1xxxxxxx:y=3'b111;
endcase
end
endmodule
