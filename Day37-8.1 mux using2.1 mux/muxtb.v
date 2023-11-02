`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:49:43 11/01/2023
// Design Name:   mux
// Module Name:   D:/100 days/mux9/muxtb.v
// Project Name:  mux9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtb;

	// Inputs
	reg [7:0] i;
	reg [2:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.o(o), 
		.i(i), 
		.s(s)
	);

	initial begin
		// Initialize Input
		i=10110101;
		 #100 s = 3'b000;
		 #100 s = 3'b001;
		 #100 s = 3'b010;
		 #100 s = 3'b011;
		 #100 s = 3'b100;
		 #100 s = 3'b101;
		 #100 s = 3'b110;
		 #100 s = 3'b111;
		 end
		 
endmodule

