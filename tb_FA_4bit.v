`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2022 04:20:32 PM
// Design Name: 
// Module Name: tb_FA_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module includes a testbench to test a 4 bit adder
//              two for loops are used to use 1 to 15 for both inputs to test the output of adder    
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_FA_4bit(

    );
    
    reg[3:0] A,B;
    reg Cin;
    wire[3:0] Sum;
    wire Cout;
    
    integer i,j;
    
    FA_4bit tb_FA(A,B,Cin,Sum,Cout);        //component to be tested
    
    initial
    begin
    A <= 0;
    B <= 0;
    Cin <= 0;
    
    #10;
    for(i = 0; i<16; i=i+1)             //for loop to generate 0 to 15 input data for first input
    begin
      for(j=0;j<16;j=j+1)               // for loop to generate 0 to 15 input data for second input
      begin
      A = i;
      B = j;
      #10;
      end
    end
   
   
    
    
    
    
    
    end
    
endmodule
