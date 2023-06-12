`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:45:57 06/12/2023
// Design Name:   tffasy
// Module Name:   D:/100 days/tffasyn/tffasytb.v
// Project Name:  tffasyn
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tffasy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tffasytb;

	// Inputs
	reg t;
	reg reset;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	tffasy uut (
		.t(t), 
		.reset(reset), 
		.clk(clk), 
		.q(q)
	);
	initial begin
	$monitor("reset=%b,clk=%b,q=%b,t=%b",reset,clk,q,t);
	end
	
   initial begin
		// Initialize Input
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;t=1;reset=0;
        
		// Add stimulus here

	end
	always
	#30 clk=~clk;  
endmodule

