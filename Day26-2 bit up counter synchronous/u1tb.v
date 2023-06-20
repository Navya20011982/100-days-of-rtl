`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:27 06/20/2023
// Design Name:   u1
// Module Name:   D:/100 days/u1/u1tb.v
// Project Name:  u1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: u1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module u1tb;

	// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire [1:0] count_out;

	// Instantiate the Unit Under Test (UUT)
	u1 uut (
		.reset(reset), 
		.clk(clk), 
		.count_out(count_out)
	);
	initial begin
	$monitor("clk=%b,reset=%b,count_out=%b",clk,reset,count_out);
	end

	initial begin
		// Initialize Inputs
		reset = 1;
		clk=0;

		// Wait 100 ns for global reset to finish
		#200;reset = 0;
        
		// Add stimulus here

	end
	always 
	#5 clk=~clk;
      
endmodule

