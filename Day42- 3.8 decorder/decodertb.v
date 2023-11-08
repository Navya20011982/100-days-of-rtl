`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:34 11/07/2023
// Design Name:   decoder
// Module Name:   D:/100 days/decoder3.8/decodertb.v
// Project Name:  decoder3.8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decodertb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100 a=0;b=0;c=1;
		#100 a=0;b=1;c=0;
		#100 a=0;b=1;c=1;
		#100 a=1;b=0;c=0;
		#100 a=1;b=0;c=1;
		#100 a=1;b=1;c=0;
		#100 a=1;b=1;c=1;
        
		// Add stimulus here

	end
      
endmodule

