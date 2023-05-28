`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:17:27 05/27/2023
// Design Name:   hs
// Module Name:   D:/100 days/hs/hst.v
// Project Name:  hs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hst;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire diff;
	wire borrow;

	// Instantiate the Unit Under Test (UUT)
	hs uut (
		.a(a), 
		.b(b), 
		.diff(diff), 
		.borrow(borrow)
	);
	initial begin
	$monitor($time,"a=%b,b=%b,diff=%b,borrow=%b",$time,a,b,diff,borrow);
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;a = 0;
		b = 1;
		#100;a = 1;
		b = 0;
		#100;a = 1;
		b = 1;
		
        
		// Add stimulus here

	end
      
endmodule

