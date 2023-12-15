`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:54:56 12/15/2023
// Design Name:   srt
// Module Name:   D:/100 days/srt/srttb.v
// Project Name:  srt
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module srttb;

	// Inputs
	reg clk;
	reg rst;
	reg S;
	reg R;

	// Outputs
	wire Q;
	wire Q_bar;

	// Instantiate the Unit Under Test (UUT)
	srt uut (
		.clk(clk), 
		.rst(rst), 
		.S(S), 
		.R(R), 
		.Q(Q), 
		.Q_bar(Q_bar)
	);

	initial begin
	clk=1'b1;
     forever #5 clk = ~clk;  
end 

initial begin
rst = 1'b1;#5;
rst = 1'b0;
end

initial begin
  S = 1'b0; R = 1'b0; #10; //Initial memory
  
  S = 1'b0; R = 1'b1; #10; //Reset State
  S = 1'b0; R = 1'b0; #10; //Memory State
  
  S = 1'b1; R = 1'b0; #10; //Set State
  S = 1'b0; R = 1'b0; #10; //Memory State
  
  S = 1'b1; R = 1'b1; #10; //Forbidden State
  S = 1'b0; R = 1'b0; #10; //Memory State
end
      
endmodule

