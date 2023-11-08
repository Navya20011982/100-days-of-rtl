`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:25:19 11/07/2023
// Design Name:   encoder
// Module Name:   D:/100 days/encoderwithoutpriority/encodertb.v
// Project Name:  encoderwithoutpriority
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encodertb;

	// Inputs
	reg [7:0] din;

	// Outputs
	wire [2:0] dout;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.din(din), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		din = 8'b10000000;
		#100 		din = 8'b10000000;
		#100 		din = 8'b01000000;
		#100 		din = 8'b00100000;
		#100 		din = 8'b00010000;
		#100 		din = 8'b00001000;
		#100 		din = 8'b00000100;
		#100 		din = 8'b00000010;
		#100 		din = 8'b00000001;
		// Add stimulus here

	end
      
endmodule

