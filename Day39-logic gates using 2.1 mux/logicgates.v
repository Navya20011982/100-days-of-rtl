`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:23 11/03/2023 
// Design Name: 
// Module Name:    logicgates 
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
module logicgates(a,b,outputand,outputor,outputnot);
   input a,b;
   output outputand,outputor,outputnot;
   reg outputand,outputor,outputnot;
always @(a,b)
     begin
       if(a==1'b0)
         begin
           outputand = 1'b0;
           outputor = b;
           outputnot = 1'b1;
         end
       else
         begin
            outputand = b;
            outputor = 1'b1;
            outputnot = 1'b0;
         end
  end
endmodule
