`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:27:40 06/13/2023
// Design Name:   jksy
// Module Name:   D:/100 days/jksy/jksytb.v
// Project Name:  jksy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jksy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jksytb;

	// Inputs
	reg clk;
	reg reset;
	reg j;
	reg k;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	jksy uut (
		.clk(clk), 
		.reset(reset), 
		.j(j), 
		.k(k), 
		.q(q)
	);
	initial begin
	$monitor("clk=%b,reset=%b,j=%b,k=%b,q=%b",clk,reset,j,k,q);
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;reset = 0;clk=1;
		#100;j = 0;k = 0;
		#100;j = 0;k = 1;
		#100;j = 1;k = 0;
		#100;j = 1;k = 1;
		
        
		// Add stimulus here

	end
	always
	#50 clk=~clk;
      
endmodule

