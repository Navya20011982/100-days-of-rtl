`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:18 11/01/2023 
// Design Name: 
// Module Name:    mux 
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
module mux(o,i,s);
input[7:0]i;
input[2:0]s;
output o;
wire [6:1]k;
muxcase v1(k[1],i[1:0],s[0]);
muxcase v2(k[2],i[3:2],s[0]);
muxcase v3(k[3],i[5:4],s[0]);
muxcase v4(k[4],i[7:6],s[0]);
muxcase v5(k[5],k[2:1],s[1]);
muxcase v6(k[6],k[4:3],s[1]);
muxcase v7(o,k[6:5],s[2]);
endmodule
module muxcase(out ,in,s);
output reg out;
input [1:0]in;
input s;
always @(*)
casex(s)
1'b0:out=in[0];
1'b1:out=in[1];
default: out=1'bx;
endcase
endmodule

