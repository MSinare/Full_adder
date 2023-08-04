`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2022 03:35:35 PM
// Design Name: 
// Module Name: half_add
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module includes a verilog code for half adder, it generates sum and carry 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_add(
    input a,        //input a
    input b,        //input b
    output s_h,     // sum output
    output c_h      //carry output
    );
    
    xor x0(s_h, a, b);  //xor gate to perfrom one bit sum
    and x1(c_h, a, b);  //and gate to generate carry bit
    
endmodule
