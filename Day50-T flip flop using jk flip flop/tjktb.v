`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:41:52 12/09/2023
// Design Name:   tjk
// Module Name:   D:/100 days/tjk/tjktb.v
// Project Name:  tjk
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tjk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tjktb;

	// Inputs
	reg clk;
	reg rst;
	reg T;

	// Outputs
	wire Q;
	wire Q_bar;

	// Instantiate the Unit Under Test (UUT)
	tjk uut (
		.clk(clk), 
		.rst(rst), 
		.T(T), 
		.Q(Q), 
		.Q_bar(Q_bar)
	);

	initial begin
		// Initialize Inputs
		clk = 1'b1; 
forever #5 clk = ~clk;
end

initial begin
rst = 1'b1;#5;
rst = 1'b0;
end
initial begin
T = 1'b0;
 forever #20 T = ~T;
		// Add stimulus here

	end
      
endmodule

