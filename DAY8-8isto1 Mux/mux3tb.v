`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:52 05/28/2023
// Design Name:   mux3
// Module Name:   D:/100 days/mux3/mux3tb.v
// Project Name:  mux3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux3tb;

	// Inputs
	reg [7:0] din;
	reg [2:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux3 uut (
		.din(din), 
		.s(s), 
		.y(y)
	);
	initial begin
	$monitor("time=$g,din=%b,s=%b,y=%b",$time,din,s,y);
	end

	initial begin
		// Initialize Inputs
		din = 8'b10101011;
		s = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;s = 3'b001;
		#100;s = 3'b010;
		#100;s = 3'b011;
		#100;s = 3'b100;
		#100;s = 3'b101;
		#100;s = 3'b110;
		#100;s = 3'b111;
        
		// Add stimulus here

	end
      
endmodule

