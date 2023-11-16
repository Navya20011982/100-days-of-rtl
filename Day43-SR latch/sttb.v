`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:15 11/09/2023
// Design Name:   sr
// Module Name:   D:/100 days/sr1/sttb.v
// Project Name:  sr1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sttb;

	// Inputs
	reg S;
	reg R;

	// Outputs
	wire Q;
	wire Qnot;

	// Instantiate the Unit Under Test (UUT)
	sr uut (
		.S(S), 
		.R(R), 
		.Q(Q), 
		.Qnot(Qnot)
	);

	initial begin
		// Initialize Inputs
		S=0;  R=0; 
		#100 S=0;R=1 ;
		#100  S=1;  R=0; 
		#100 S=1;  R=1; 		// Add stimulus here
        
		// Add stimulus here

	end
      
endmodule

