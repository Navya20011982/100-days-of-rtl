`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:39:26 06/06/2023
// Design Name:   priorityen
// Module Name:   D:/100 days/priorityen/priorityentb.v
// Project Name:  priorityen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priorityen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module priorityentb;

	// Inputs
	reg [7:0] din;
	reg en;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	priorityen uut (
		.din(din), 
		.y(y), 
		.en(en)
	);
	initial begin
	$monitor("$time=$g,din=%b,y=%b,en=%b",$time,din,y,en);
	end

	initial begin
		// Initialize Inputs
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;din=8'b00000001;en=1;
		#100;din=8'b0000001x;
		#100;din=8'b000001xx;
		#100;din=8'b00001xxx;
		#100;din=8'b0001xxxx;
		#100;din=8'b001xxxxx;
		#100;din=8'b01xxxxxx;
		#100;din=8'b1xxxxxxx;
		
        
		// Add stimulus here

	end
      
endmodule

