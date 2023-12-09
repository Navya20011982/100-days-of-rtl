`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:19 12/08/2023
// Design Name:   rt
// Module Name:   D:/100 days/rt/rttb.v
// Project Name:  rt
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rttb;

	// Inputs
	reg clk;
	reg rst;
	reg T;

	// Outputs
	wire Q;
	wire Q_bar;

	// Instantiate the Unit Under Test (UUT)
	rt uut (
		.clk(clk), 
		.rst(rst), 
		.T(T), 
		.Q(Q), 
		.Q_bar(Q_bar)
	);

	initial begin
	clk = 1'b1; 
forever #5 clk = ~clk;
end

initial begin
rst = 1'b1;#5;
rst = 1'b0;
end
initial begin
T = 1'b0;
 forever #50 T = ~T;

	end
      
endmodule

