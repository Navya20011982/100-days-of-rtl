`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:44:14 11/03/2023
// Design Name:   logicgates
// Module Name:   D:/100 days/logicgates/logicgatestb.v
// Project Name:  logicgates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: logicgates
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module logicgatestb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire outputand;
	wire outputor;
	wire outputnot;

	// Instantiate the Unit Under Test (UUT)
	logicgates uut (
		.a(a), 
		.b(b), 
		.outputand(outputand), 
		.outputor(outputor), 
		.outputnot(outputnot)
	);

	initial begin
		// Initialize Inputs
		#100 a = 1'b0; b=1'b0;
       #100 a = 1'b0; b=1'b1;
      #100  a = 1'b1; b=1'b0;
      #100 a = 1'b1; b=1'b1;
		end
      
endmodule

