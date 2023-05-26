`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:58 05/26/2023
// Design Name:   fulladder1
// Module Name:   D:/100 days/fulladder1/fulladder1tb.v
// Project Name:  fulladder1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder1tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	fulladder1 uut (
		.sum(sum), 
		.carry(carry), 
		.a(a), 
		.b(b), 
		.c(c)
	);
	initial begin
	$monitor("time=$g,a=%b,b=%b,c=%b,sum=%b,carry=%b",$time,a,b,c,sum,carry);
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100 a = 0;b = 0;c = 1;
		#100 a = 0;b = 1;c = 0;
		#100 a = 0;b = 1;c = 1;
		#100 a = 1;b = 0;c = 0;
		#100 a = 1;b = 0;c = 1;
		#100 a = 1;b = 1;c = 0;
		#100 a = 1;b = 1;c = 1;
      // Add stimulus here

	end
      
endmodule

