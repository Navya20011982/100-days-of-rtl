`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:24:06 06/08/2023
// Design Name:   alu
// Module Name:   D:/100 days/alu/alutb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alutb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg en;
	reg [31:0] op;

	// Outputs
	wire [31:0] res;
	wire ach;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.en(en), 
		.res(res), 
		.op(op), 
		.ach(ach)
	);
	initial begin
	$monitor("$time=$g,a=%b,b=%b,en=%b,res=%b,op=%b,ach=%b",$time,a,b,en,res,op,ach);
	end

	initial begin
		// Initialize Inputs

		en = 0;
		

		// Wait 100 ns for global reset to finish
		#30;a =32'h000000ff;
		b = 32'h0000000f;
		en = 1;
		op = 3'b000;
		#30;op = 3'b000;
		#30;op = 3'b001;
		#30;op = 3'b010;
		#30;op = 3'b011;
		#30;op = 3'b100;
		#30;op = 3'b101;
		#30;op = 3'b110;
		#30;op = 3'b111;
        
		// Add stimulus here

	end
      
endmodule

