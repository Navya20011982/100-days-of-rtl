`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:25:07 12/21/2023
// Design Name:   dsr
// Module Name:   N:/100 days rtl/dsr/dsrtb.v
// Project Name:  dsr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dsr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dsrtb;

	// Inputs
	reg clk;
	reg D;

	// Outputs
	wire Q;
	wire Q_bar;

	// Instantiate the Unit Under Test (UUT)
	dsr uut (
		.clk(clk), 
		.D(D), 
		.Q(Q), 
		.Q_bar(Q_bar)
	);

	initial begin
	clk = 1'b0; 
forever #10 clk = ~clk;
end

initial begin
D = 1'b0;
 forever #20 D = ~D;
end
      
endmodule

