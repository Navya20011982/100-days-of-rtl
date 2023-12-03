`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:15:21 12/04/2023
// Design Name:   sr4
// Module Name:   D:/100 days/sr4/sr4tb.v
// Project Name:  sr4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sr4tb;

	// Inputs
	reg clk;
	reg reset;
	reg s;
	reg r;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	sr4 uut (
		.clk(clk), 
		.reset(reset), 
		.s(s), 
		.r(r), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		

		// Wait 100 ns for global reset to finish
		#100  reset=0;s = 0;r = 0;
		#100  s=0;r=1;
		#100 s=1;r=0;
		#100 s=1;r=1;
		
        
		// Add stimulus here

	end
	always #30 clk=~clk;
      

      
endmodule

