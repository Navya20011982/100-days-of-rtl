`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:55:20 06/04/2023
// Design Name:   encoder
// Module Name:   D:/100 days/encoder/encordertb.v
// Project Name:  encoder
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

module encordertb;

	// Inputs
	reg [7:0] din;
	reg en;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.din(din), 
		.y(y), 
		.en(en)
	);
	initial begin
	$monitor("time=$g,din,y,en",$time,din,y,en);
	end

	initial begin
		// Initialize Inputs
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;din = 8'b00000001;
		en = 1;
		#100 ;din = 8'b00000010;
		#100 ;din = 8'b00000100;
		#100 ;din = 8'b00001000;
		#100 ;din = 8'b00010000;
		#100 ;din = 8'b00100000;
		#100 ;din = 8'b01000000;
		#100 ;din = 8'b10000000;
	
	
	
	
	
	
	


        
		// Add stimulus here

	end
      
endmodule

