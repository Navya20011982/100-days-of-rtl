`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:53:33 12/24/2023
// Design Name:   bit4_divider
// Module Name:   N:/100 days rtl/DIVIDER/bit4_dividertb.v
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

module bit4_dividertb;

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
		 A=4'b1100;  B=4'b10; #50;
     A=4'b1111;  B=4'b10; #50;
     A=4'b1111;  B=4'b11; #50;
     A=4'b1110;  B=4'b111; #50;
     A=4'b1010;  B=4'b100; #50;
     A=4'b1111;  B=4'b1000; #50;

        
		// Add stimulus here

	end
      
endmodule

