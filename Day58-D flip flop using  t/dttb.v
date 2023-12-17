`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:31:03 12/17/2023
// Design Name:   dt
// Module Name:   D:/100 days/srd/dttb.v
// Project Name:  srd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dttb;

	// Inputs
	reg clk;
	reg rst;
	reg D;

	// Outputs
	wire Q;
	wire Q_bar;

	// Instantiate the Unit Under Test (UUT)
	dt uut (
		.clk(clk), 
		.rst(rst), 
		.D(D), 
		.Q(Q), 
		.Q_bar(Q_bar)
	);

	initial begin
clk = 1'b1; 
forever #5 clk = ~clk;
end

initial begin
rst = 1'b1; #5;
rst = 1'b0;
end

initial begin
D = 1'b0;
 forever #10 D = ~D;
end
endmodule

