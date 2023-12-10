`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:20 12/10/2023 
// Design Name: 
// Module Name:    tsr 
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
module tsr(clk,rst,T,Q,Q_bar);
input clk,rst,T;
output Q,Q_bar;
wire w1,w2;

assign w1 = T & ~Q;
assign w2 = T & Q;

sr_ff SRF(clk,rst,w1,w2,Q,Q_bar);

endmodule

module sr_ff(clk,rst,S,R, q,q_bar);
input clk,rst,S,R;
output reg q;
output q_bar;
always@(posedge clk)
begin
if(!rst) begin
  case({S,R})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= 1'bx;
  endcase
end
else
q <= 1'b0;
end

assign q_bar = ~q;
endmodule
