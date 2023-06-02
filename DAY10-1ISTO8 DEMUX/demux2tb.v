`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:50 05/28/2023
// Design Name:   demux2
// Module Name:   D:/100 days/demux2/demux2tb.v
// Project Name:  demux2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux2tb;

	// Inputs
	reg din;
	reg s2;
	reg s1;
	reg s0;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire d7;

	// Instantiate the Unit Under Test (UUT)
	demux2 uut (
		.din(din), 
		.s2(s2), 
		.s1(s1), 
		.s0(s0), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7)
	);
	initial begin
	$monitor("time=$g,din=%b,s2=%b,s1=%b,s0=%b,d0=%b,d%b,d2=%b,d3=%b,d4=%b,d5=%b,d6=%b,d7=%b",$time,din,s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7);
	end

	initial begin
		// Initialize Inputs
		din = 1;
		s2 = 0;
		s1 = 0;
		s0 = 0;

		// Wait 100 ns for global reset to finish
		#100;s2 = 0;
		s1 = 0;
		s0 = 1;
		#100;s2 = 0;
		s1 = 1;
		s0 = 0;
		#100;s2 = 0;
		s1 = 1;
		s0 = 1;
		#100;s2 = 1;
		s1 = 0;
		s0 = 0;
		#100;s2 =1;
		s1 = 0;
		s0 = 1;
		#100;s2 = 1;
		s1 = 1;
		s0 = 0;
		#100;s2 = 1;
		s1 = 1;
		s0 = 1;
		
		
		
		
		
		
        
		// Add stimulus here

	end
      
endmodule

