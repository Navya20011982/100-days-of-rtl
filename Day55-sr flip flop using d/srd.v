`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:08 12/14/2023 
// Design Name: 
// Module Name:    srd 
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
module srd(clk,S,R, Q,Q_bar);
   input clk,S,R;
   output Q,Q_bar;
   wire w1;
   
   assign w1 = (S)|(Q & (~R));
   d_ff DF(clk, w1, Q,Q_bar);
   
endmodule

module d_ff(clk,D,Q,Q_bar);
input clk, D;
output reg Q;
output Q_bar;
always @(posedge clk) begin
Q <= D;
end
assign Q_bar = ~Q;
endmodule