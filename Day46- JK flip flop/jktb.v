`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:52:19 12/04/2023
// Design Name:   jk
// Module Name:   D:/100 days/jk/jktb.v
// Project Name:  jk
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jktb;

	// Inputs
	reg clk;
	reg reset;
	reg j;
	reg k;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	jk uut (
		.clk(clk), 
		.reset(reset), 
		.j(j), 
		.k(k), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100 reset=0;j=0; k=0;
		#100 j=0;k=1;
		#100 j=1;k=0;
		#100 j=1;k=1;
        
		// Add stimulus here

	end
	always
	#30 clk=~clk;
      
endmodule

