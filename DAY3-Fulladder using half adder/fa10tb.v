`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:53:17 05/27/2023
// Design Name:   fa10
// Module Name:   D:/100 days/fa10/fa10tb.v
// Project Name:  fa10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa10
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa10tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	fa10 uut (
		.a(a),  
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.carry(carry)
	);
	initial begin
	$monitor("time=%b,a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;a=0;b=0;cin=1;
		#100;a=0;b=1;cin=0;
		#100;a=0;b=1;cin=1;
		#100;a=1;b=0;cin=0;
		#100;a=1;b=0;cin=1;
      #100;a=1;b=1;cin=0;
		#100;a=1;b=1;cin=1;
        
        
        
        
        
        
		// Add stimulus here

	end
      
endmodule

