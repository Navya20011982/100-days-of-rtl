`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:29 11/07/2023 
// Design Name: 
// Module Name:    decoder 
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
module decoder(a, b, c, out);
    input a,b,c;
    output [7:0] out ;
    assign out [0] = (~a&~b&~c) ;
    assign out [1] =(~a&~b&c) ;
    assign out [2] =(~a&b&~c);
    assign out [3] = (~a&b&c);
    assign out [4] = (a&~b&~c);
    assign out [5] = (a&~b&c);
    assign out [6] = (a&b&~c);
    assign out [7] = (a&b&c);
    endmodule
