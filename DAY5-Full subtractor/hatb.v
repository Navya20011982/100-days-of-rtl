`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:02 05/27/2023
// Design Name:   fs
// Module Name:   D:/100 days/fs/hatb.v
// Project Name:  fs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hatb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire diff;
	wire borrow;

	// Instantiate the Unit Under Test (UUT)
	fs uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.diff(diff), 
		.borrow(borrow)
	);
	initial begin
	$monitor("time=$g,a=%b,b=%b,c=%b,diff=%b,borrow=%b",$time,a,b,c,diff,borrow);
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;a = 0;b = 0;c = 1;
      #100;a = 0;b = 1;c = 0;
		#100;a = 0;b = 1;c = 1;
      #100;a = 1;b = 0;c = 0;
      #100;a = 1;b = 0;c = 1;
      #100;a = 1;b = 1;c = 0;
      #100;a = 1;b = 1;c = 1;
		// Add stimulus here

	end
      
endmodule

