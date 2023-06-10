`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:40:23 06/10/2023
// Design Name:   dfas
// Module Name:   D:/100 days/dfas/dfastb.v
// Project Name:  dfas
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dfas
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dfastb;

	// Inputs
	reg clk;
	reg rest;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dfas uut (
		.clk(clk), 
		.rest(rest), 
		.d(d), 
		.q(q)
	);
	initial begin
	$monitor("$time=$g,clk=%b,rest=%b,d=%b,q=%b",$time,clk,rest,d,q);
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rest = 1;

		// Wait 100 ns for global reset to finish
		#100;rest=0;d=0;
		#100;d=1;
		end
		always
		#30 clk=~clk;
		// Add stimulus here
endmodule

