`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:00 12/08/2023 
// Design Name: 
// Module Name:    rt 
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
module rt(clk,rst,T,Q,Q_bar);
input clk,rst,T;
output Q,Q_bar;
wire w1;

assign w1 = T^Q;

d_ff DF(clk,rst,w1,Q,Q_bar);

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
  