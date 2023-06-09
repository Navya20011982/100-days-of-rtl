`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:09 06/09/2023
// Design Name:   df
// Module Name:   D:/100 days/Df/dftb.v
// Project Name:  Df
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: df
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dftb;

	// Inputs
	reg clk;
	reg rest;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	df uut (
		.clk(clk), 
		.rest(rest), 
		.d(d), 
		.q(q)
	);
	initial begin
	$monitor("$time=$g,d=%b,rest=%b,q=%b,clk=%b",$time,d,rest,q,clk);
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rest = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rest = 0;d=0;
		#100;d=1;
        
		// Add stimulus here

	end
	always 
	#30 clk=~clk;
	
endmodule

