`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:32:34 11/04/2023
// Design Name:   encoder8
// Module Name:   D:/100 days/encorder8.3/encoder8tb.v
// Project Name:  encorder8.3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder8tb;

	// Inputs
	reg en;
	reg [7:0] din;

	// Outputs
	wire [2:0] dout;

	// Instantiate the Unit Under Test (UUT)
	encoder8 uut (
		.en(en), 
		.din(din), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		en = 1;
		din = 3'bZZZ;

		// Wait 100 ns for global reset to finish
		#100 en=0;
		#100 din=8'b00000001;
      #100 din=8'b0000001X;
      #100 din=8'b000001XX;
      #100 din=8'b00001XXX;
		#100 din=8'b0001XXXX;
		#100 din=8'b001XXXXX;
		#100 din=8'b01XXXXXX;
		#100 din=8'b1XXXXXXX;
        
		// Add stimulus here

	end
      
endmodule

