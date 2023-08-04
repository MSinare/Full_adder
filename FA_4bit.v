`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2022 04:06:06 PM
// Design Name: 
// Module Name: FA_4bit
// Project Name: four bit adder
// Target Devices: 
// Tool Versions: 
// Description: This module includes a design for 4 bit adder
//              Four one bit full adders are designed and used as components to add 4 bits of the input data indivudually
//              The carry out bit of each 1 bit full adder is used as carry in for the next bit full adder                 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FA_4bit(
    input [3:0] A,          //4 bit input A 
    input [3:0] B,          //4 bit input B
    input Cin,              //Carry input
    output [3:0] Sum,       //4 bit sum output
    output Cout             //carry output
    );
    
    wire Cout0, Cout1, Cout2;
    full_1bit FA0(A[0],B[0], Cin, Sum[0], Cout0);       //1 bit full adder for adding bit 0
    full_1bit FA1(A[1],B[1], Cout0, Sum[1], Cout1);     //1 bit full adder for adding bit 1
    full_1bit FA2(A[2],B[2], Cout1, Sum[2], Cout2);     //1 bit full adder for adding bit 2
    full_1bit FA3(A[3],B[3], Cout2, Sum[3], Cout);      //1 bit full adder for adding bit 3
endmodule
