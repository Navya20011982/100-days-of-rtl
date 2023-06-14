`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:15:41 06/14/2023
// Design Name:   sr
// Module Name:   D:/100 days/sr/srtb.v
// Project Name:  sr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module srtb;

	// Inputs
	reg clk;
	reg reset;
	reg s;
	reg r;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	sr uut (
		.clk(clk), 
		.reset(reset), 
		.s(s), 
		.r(r), 
		.q(q)
	);
	initial begin
	$monitor("clk=%b,reset=%b,s=%b,r=%b,q=%b",clk,reset,s,r,q);
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;s=0;r=0;reset=0;
		#100;s=0;r=1;
		#100;s=1;r=0;
		#100;s=1;r=1;
		
        
		// Add stimulus here

	end
	always
	#30 clk=~clk;
      
endmodule

