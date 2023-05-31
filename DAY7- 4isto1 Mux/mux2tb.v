`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:00:41 05/27/2023
// Design Name:   mux2
// Module Name:   D:/100 days/mux2/mux2tb.v
// Project Name:  mux2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg s0;
	reg s1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux2 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.s0(s0), 
		.s1(s1), 
		.y(y)
	);
	initial begin
	$monitor("$time=$g,s0=%b,s1=%b,y=%b",$time,s0,s1,y);
	end

	initial begin
		// Initialize Inputs
		a = 1;b = 0;c = 0;d = 0;s0 = 0;s1 = 1;

		// Wait 100 ns for global reset to finish
		#100;a = 1;b = 1;c = 0;d = 1;s0 = 1;s1 = 1;
		#100;a = 1;b = 1;c = 0;d = 1;s0 = 1;s1 = 0;
      #100;a = 0;b = 0;c = 1;d = 0;s0 = 1;s1 = 1;
      
		
		// Add stimulus here

	end
      
endmodule

