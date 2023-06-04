`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:37 06/04/2023
// Design Name:   d2
// Module Name:   D:/100 days/d2/d2tb.v
// Project Name:  d2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module d2tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y1;
	wire y2;
	wire y3;
	wire y4;

	// Instantiate the Unit Under Test (UUT)
	d2 uut (
		.a(a), 
		.b(b), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4)
	);
	initial begin
	$monitor("time=$g,a=%b,b=%b,y1=%b,y2=%b,y3=%b,y4=%b",$time,a,b,y1,y2,y3,y4);
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;a = 0;
		b = 1;
		#100;a = 1;
		b = 0;
		#100;a = 1;
		b = 1;
		
		

        
		// Add stimulus here

	end
      
endmodule

