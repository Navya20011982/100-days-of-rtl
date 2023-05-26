`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:50:43 05/26/2023
// Design Name:   halfadder
// Module Name:   D:/100 days/halfadder/halfaddertb.v
// Project Name:  halfadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfaddertb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	halfadder uut (
		.sum(sum), 
		.cout(cout), 
		.a(a), 
		.b(b)
	);
	initial begin
	$monitor("time=$g,a=%b,b=%b,sum=%b,cout=%b",$time,a,b,sum,cout);
	
end
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;	a = 0;
		b = 1;
		#100;	a = 1;
		b = 0;
		#100;	a = 1;
		b = 1;
        
		// Add stimulus here

	end
      
endmodule

