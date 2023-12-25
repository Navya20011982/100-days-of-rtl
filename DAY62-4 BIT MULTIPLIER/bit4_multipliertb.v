`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:44:51 12/25/2023
// Design Name:   bit4_multiplier
// Module Name:   N:/100 days rtl/multiplier/bit4_multipliertb.v
// Project Name:  multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit4_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bit4_multipliertb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	bit4_multiplier uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs A=5;  B=11; #50;
     A=7;  B=15; #50;
     A=10; B=12; #50;
     A=13; B=2;  #50;
   end 
      
endmodule

