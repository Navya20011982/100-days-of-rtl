`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:24 06/28/2023
// Design Name:   upas
// Module Name:   D:/100 days/bitasythree/upastb.v
// Project Name:  bitasythree
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: upas
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module upastb;
// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire [2:0] count_out;

	// Instantiate the Unit Under Test (UUT)
	syup uut (
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
		clk = 0;

		// Wait 100 ns for global reset to finish
	  #50;reset = 0;
        
		// Add stimulus here

	end
	always 
	#5 clk=~clk; 
      
endmodule

