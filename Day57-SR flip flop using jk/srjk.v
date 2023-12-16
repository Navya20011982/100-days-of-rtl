`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:46 12/16/2023 
// Design Name: 
// Module Name:    srjk 
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
module srjk(clk,S,R, Q,Q_bar);
   input clk,S,R;
   output Q;
   output Q_bar;
   jk_ff JKF(clk,S,R, Q);
   assign Q_bar = ~Q;
  endmodule


module jk_ff(clk,J,K, Q);  
   input clk,J,K;
   output reg Q;   
  
   always @(posedge clk)  
   begin
      case ({J,K})  
         2'b00 :  Q <= Q;  
         2'b01 :  Q <= 1'b0;  
         2'b10 :  Q <= 1'b1;  
         2'b11 :  Q <= ~Q;  
      endcase  
   end
endmodule