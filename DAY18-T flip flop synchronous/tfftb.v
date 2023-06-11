`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:33 06/11/2023
// Design Name:   tff
// Module Name:   D:/100 days/tff/tfftb.v
// Project Name:  tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tfftb;

	// Inputs
	reg t;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	tff uut (
		.t(t), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);
	initial begin
	$monitor("t=%b,reset=%b,clk=%b,q=%b",t,reset,clk,q);
	end

	initial begin
		// Initialize Inputs
		reset = 1;
		clk=0;

		// Wait 100 ns for global reset to finish
		#100;t=0;reset=0;
		#100;t=1;
	
		
        
		// Add stimulus here

	end
	always
	#30 clk=~clk;
      
endmodule

