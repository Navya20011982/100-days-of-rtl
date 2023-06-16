`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:43:25 06/16/2023
// Design Name:   jkasy
// Module Name:   D:/100 days/jkasy/jkasytb.v
// Project Name:  jkasy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jkasy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jkasytb;

	// Inputs
	reg clk;
	reg reset;
	reg j;
	reg k;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	jkasy uut (
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
		#100;reset = 0;j = 0;k = 0;
		#100;j = 0;k = 1;
		#100;j = 1;k = 0;
		#100;j = 1;k = 1;  
		// Add stimulus here

	end
	always
	#50 clk=~clk;
      
endmodule


