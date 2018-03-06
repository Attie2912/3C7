`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:02 02/15/2018 
// Design Name: 
// Module Name:    Negative 
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
module Negative(select, a, b, negative_A, negative_B, ror_A, ror_B, LT, bitwise, not_A, not_B, subtract, add, x);
	input wire [3:0] select;
  input wire [7:0] a, b, negative_A, negative_B, ror_A, ror_B, LT, bitwise, not_A, not_B, subtract, add;
  output wire [7:0] x;
  
  //this is not the right syntax for case statement
    case(select)
    begin 
      4'b0000: x = 8'b00000000;
      4'b0001  x = 

endmodule
