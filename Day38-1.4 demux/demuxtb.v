`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:24:04 05/28/2023
// Design Name:   demux
// Module Name:   D:/100 days/demux/demuxtb.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demuxtb;

	// Inputs
	reg i;
	reg s;

	// Outputs
	wire y0;
	wire y1;

	// Instantiate the Unit Under Test (UUT)
	demux uut (
		.i(i), 
		.s(s), 
		.y0(y0), 
		.y1(y1)
	);
	initial begin
	$monitor("time=$g,i=%b,s=%b,y0=%b,y1=%b",$time,i,s,y0,y1);
	end

	initial begin
		// Initialize Inputs
		i = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;s=0;i=1;
		#100;s=1;i=0;
		#100;s=1;i=1;
		
        
		// Add stimulus here

	end
      
endmodule

