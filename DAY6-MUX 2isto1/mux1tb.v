`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:52:20 05/27/2023
// Design Name:   mux1
// Module Name:   D:/100 days/mux1/mux1tb.v
// Project Name:  mux1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux1tb;

	// Inputs
	reg a;
	reg b;
	reg s0;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux1 uut (
		.a(a), 
		.b(b), 
		.s0(s0), 
		.y(y)
	);
	initial begin
	$monitor($time,"a=%b,b=%b,s0=%b,y=%b",y,a,b,s0);
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		s0 = 0;

		// Wait 100 ns for global reset to finish
		#100;a = 0;b = 0;s0 = 1;
		#100;a = 0;b = 1;s0 = 0;
		#100;a = 0;b = 1;s0 = 1;
		#100;a = 1;b = 0;s0 = 0;
		#100;a = 1;b = 0;s0 = 1;
		#100;a = 1;b = 1;s0 = 0;
		#100;a = 1;b = 1;s0 = 1;

        
		// Add stimulus here

	end
      
endmodule

