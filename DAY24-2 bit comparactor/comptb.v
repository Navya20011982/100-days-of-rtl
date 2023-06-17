`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:50 06/17/2023
// Design Name:   comp
// Module Name:   D:/100 days/comp/comptb.v
// Project Name:  comp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comptb;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire e;
	wire l;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	comp uut (
		.a(a), 
		.b(b), 
		.e(e), 
		.l(l), 
		.g(g)
	);
	initial begin
	$monitor("a=%b,b=%b,e=%b,l=%b,g=%b",a,b,e,l,g);
	end

	initial begin
		// Initialize Inputs
		a = 2'b00;
		b = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;a = 2'b10;b = 2'b11;
		#100;a = 2'b11;b = 2'b00;
		#100;a = 2'b01;b = 2'b01;



        
		// Add stimulus here

	end
      
endmodule

