`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:22 12/13/2023 
// Design Name: 
// Module Name:    jkd 
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
module jkd(clk,rst,J,K,Q,Q_bar);
  input clk, rst,J,K;
  output Q,Q_bar;
  wire w1;
  
  assign w1 = (~K & Q) | (J & ~Q);
  
  d_ff DF(clk,rst, w1,Q,Q_bar);
  
endmodule

module d_ff(clk,rst,D,Q,Q_bar);
input clk,rst, D;
output reg Q;
output Q_bar;
always @(posedge clk) begin
if(!rst)
  Q <= D;
else
  Q <= 1'b0;
end
assign Q_bar = ~Q;
endmodule