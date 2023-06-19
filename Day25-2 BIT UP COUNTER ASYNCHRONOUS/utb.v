`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:11:15 06/19/2023
// Design Name:   u
// Module Name:   D:/100 days/u/utb.v
// Project Name:  u
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: u
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module utb;

	// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire [1:0] count_out;

	// Instantiate the Unit Under Test (UUT)
	u uut (
		.reset(reset), 
		.clk(clk), 
		.count_out(count_out)
	);
	initial begin 
	$monitor("reset=%b,clk=%b,count_out=%b",reset,clk,count_out);
	end

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;reset=1;
        
		// Add stimulus here

	end
      always
		#5 clk=~clk;
		
endmodule

