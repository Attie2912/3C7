`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:11 02/15/2018 
// Design Name: 
// Module Name:    Bitwise 
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
module Bitwise(a, b, x);
	input wire [7:0] a;
	input wire [7:0] b;
	output wire [7:0] x;
	
	assign x[0] = a[0]^b[0];
	assign x[1] = a[0]^b[0];
	assign x[2] = a[0]^b[0];
	assign x[3] = a[0]^b[0];
	assign x[4] = ~in[4];
	assign x[5] = ~in[5];
	assign x[6] = ~in[6];
	assign x[7] = ~in[7];
	 

endmodule
