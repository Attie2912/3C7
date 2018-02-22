`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:48 02/15/2018 
// Design Name: 
// Module Name:    Not 
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
module Not(in, x);
	input wire [7:0] in;
	output wire [7:0] x;

	assign x[0] = ~in[0];
	assign x[1] = ~in[1];
	assign x[2] = ~in[2];
	assign x[3] = ~in[3];
	assign x[4] = ~in[4];
	assign x[5] = ~in[5];
	assign x[6] = ~in[6];
	assign x[7] = ~in[7];
	
	
endmodule
