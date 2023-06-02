`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:00 05/28/2023 
// Design Name: 
// Module Name:    mux3 
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
module mux3(din,s,y);
input[7:0]din;
input[2:0]s;
output y;
reg y;
always@(din,s)
begin
case(s)
3'b000:y=din[0];
3'b001:y=din[1];
3'b010:y=din[2];
3'b011:y=din[3];
3'b100:y=din[4];
3'b101:y=din[5];
3'b110:y=din[6];
3'b111:y=din[7];
endcase
end
endmodule
