`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:52:14 12/24/2023
// Design Name:   bit4_divider
// Module Name:   N:/100 days rtl/DIVIDER/fatb.v
// Project Name:  DIVIDER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit4_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fatb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [3:0] Q;
	wire [3:0] R;

	// Instantiate the Unit Under Test (UUT)
	bit4_divider uut (
		.A(A), 
		.B(B), 
		.Q(Q), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

