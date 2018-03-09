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
module Negative(in, x);
	input wire [7:0] in;
	wire [7:0] x_1;
	output wire [7:0] x;
	
	assign y = 8'b00000001;
	wire cout, overflow, sum;
	
	Not negative_unit (.in(in), .x(x_1));
	//eightBitAdder negative_total(.x(x_1), .y(y), .cin(), .overflow(overflow), .cout(cout), .sum(sum));
	assign x = x_1 + 1'b1;

endmodule
