`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:27:23 11/04/2023 
// Design Name: 
// Module Name:    encoder8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module encoder8(en,din,dout);
input en;
input [ 7 : 0 ] din;
output [ 2 : 0 ] dout;
reg [ 2 : 0 ] dout;
always@(en,din)
begin
if(en == 1) // Active high enable
begin
dout = 3'bZZZ; // Initializing dout to
end
else
begin
casex(din)
8'b00000001 :dout = 3'b000;
8'b0000001X :dout = 3'b001;
8'b000001XX :dout = 3'b010;
8'b00001XXX :dout = 3'b011;
8'b0001XXXX :dout = 3'b100;
8'b001XXXXX :dout = 3'b101;
8'b01XXXXXX :dout = 3'b110;
8'b1XXXXXXX :dout = 3'b111;
endcase
end
end
endmodule