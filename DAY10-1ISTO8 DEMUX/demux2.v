`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:14 05/28/2023 
// Design Name: 
// Module Name:    demux2 
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
module demux2(din,s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7);
input din,s2,s1,s0;
output d0,d1,d2,d3,d4,d5,d6,d7;
assign d0=(din&~s2&~s1&~s0);
assign d1=(din&~s2&~s1&s0);
assign d2=(din&~s2&s1&~s0);
assign d3=(din&~s2&s1&s0);
assign d4=(din&s2&~s1&~s0);
assign d5=(din&s2&~s1&s0);
assign d6=(din&s2&s1&~s0);
assign d7=(din&s2&s1&s0);
endmodule
 /* module demux2(din,s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7);
input i;
input[2:0]s;
output[7:0]y ;
reg [7:0]y;
always @ (i,s)
begin
case(s)
3'b000:y=i;
3'b001:y=i;
3'b010:y=i;
3'b011:y=i;
3'b100:y=i;
3'b101:y=i;
3'b110:y=i;
3'b111:y=i;
endcase
end
*/

