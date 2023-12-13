`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:47:25 12/13/2023
// Design Name:   jkd
// Module Name:   D:/100 days/jkd/jkdtb.v
// Project Name:  jkd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jkd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jkdtb;

	// Inputs
	reg clk;
	reg rst;
	reg J;
	reg K;

	// Outputs
	wire Q;
	wire Q_bar;

	// Instantiate the Unit Under Test (UUT)
	jkd uut (
		.clk(clk), 
		.rst(rst), 
		.J(J), 
		.K(K), 
		.Q(Q), 
		.Q_bar(Q_bar)
	);

	initial begin
	 clk=1'b1;
     forever #5 clk = ~clk;  
end
initial begin
  rst=1'b1;#5;
  rst = 1'b0;  
end
initial begin
  J = 1'b0; K = 1'b0; #10; //Initial memory
  
  J = 1'b0; K = 1'b1; #10; //Reset State
  J = 1'b0; K = 1'b0; #10; //Memory State
  
  J = 1'b1; K = 1'b0; #10; //Set State
  J = 1'b0; K = 1'b0; #10; //Memory State
  
  J = 1'b1; K = 1'b1; #10; //Toggle State
end

      
endmodule

