`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:18 05/27/2023 
// Design Name: 
// Module Name:    fa10 
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
module fa10(a,,b,cin,sum,carry);
    input a;
    input b;
    input cin;
    output sum;
    output carry;
assign x=a ^ b;
assign sum=x^cin;
assign y=x & cin;
assign z=a & b;
assign carry= y | z;
endmodule

module full_adder(a,b,c,Sum,Carry);
     input a,b,c;
     output Sum,Carry;
     wire ha1_sum;
     wire ha2_sum;
     wire ha1_carry;
     wire ha2_carry;
     wire Sum,Carry;

     //Instantiate the half adder 1
    half_adder  ha1(
        .a(a),
        .b(b),
        .Sum(ha1_sum),
        .Carry(ha1_carry)
    );
    
    //Instantiate the half adder 2
    half_adder  ha2(
        .a(c),
        .b(ha1_sum),
        .Sum(ha2_sum),
        .Carry(ha2_carry)
    );
    assign Sum = ha2_sum;  
    assign Carry = ha1_carry | ha2_carry;
    
endmodule
