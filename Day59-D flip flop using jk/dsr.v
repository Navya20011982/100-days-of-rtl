`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:18 12/18/2023 
// Design Name: 
// Module Name:    dsr 
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
module dsr(clk,D,Q,Q_bar);
input clk, D;
output Q,Q_bar;

jk_ff JKF(clk, D,~D, Q,Q_bar );
endmodule

module jk_ff(clk,J,K, q,q_bar);
input clk,J,K;
output reg q;
output q_bar;

always@(posedge clk)
begin
  case({J,K})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= ~q;
  endcase
end

assign q_bar = ~q;
endmodule
