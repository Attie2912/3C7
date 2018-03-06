`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:26 02/15/2018 
// Design Name: 
// Module Name:    Subtract 
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
module Subtract(a, b, c_in, overflow, c_out, sum);
	input wire [7:0] x, y;
	input wire c_in;
	output wire overflow, c_out; 
	output wire [7:0]sum;
	
	wire c_out_1, c_out_2, c_out_3, c_out_4, c_out_5, c_out_6, c_out_7, c_out_8;
	wire sum_0, sum_1, sum_2, sum_3, sum_4, sum_5, sum_6, sum_7; 
	/*wire [7:0] xor 
	Bitwise y_0(.a(8), b[0], .x[b[0]]);
	Bitwise y_1(.a[1], b[1], .x[b[1]]);
	Bitwise y_2(.a[2], b[2], .x[b[2]]);
	Bitwise y_3(.a[3], b[3], .x[b[3]]);
	Bitwise y_4(.a[4], b[4], .x[b[4]]);
	Bitwise y_5(.a[5], b[5], .x[b[5]]);
	Bitwise y_6(.a[6], b[6], .x[b[6]]);
	Bitwise y_7(.a[7], b[7], .x[b[7]]);*/
	b[0] = b[0]^(1'b1);
	b[1] = b[1]^(1'b1);
	b[2] = b[2]^(1'b1);
	b[3] = b[3]^(1'b1);
	b[4] = b[4]^(1'b1);
	b[5] = b[5]^(1'b1);
	b[6] = b[6]^(1'b1);
	b[7] = b[7]^(1'b1);
	
	FullAdder bit_0(.a(a[0]), .b(b[0]), .cin(c_in), .s(sum_0), .cout(c_out_1)); 
	FullAdder bit_1(.a(a[1]), .b(b[1]), .cin(c_out_1), .s(sum_1), .cout(c_out_2)); 
	FullAdder bit_2(.a(a[2]), .b(b[2]), .cin(c_out_2), .s(sum_2), .cout(c_out_3));
	FullAdder bit_3(.a(a[3]), .b(b[3]), .cin(c_out_3), .s(sum_3), .cout(c_out_4));
	FullAdder bit_4(.a(a[4]), .b(b[4]), .cin(c_out_4), .s(sum_4), .cout(c_out_5));
	FullAdder bit_5(.a(a[5]), .b(b[5]), .cin(c_out_5), .s(sum_5), .cout(c_out_6));
	FullAdder bit_6(.a(a[6]), .b(b[6]), .cin(c_out_6), .s(sum_6), .cout(c_out_7));
	FullAdder bit_7(.a(a[7]), .b(b[7]), .cin(c_out_7), .s(sum_7), .cout(c_out_8));
	
	assign overflow = c_out_7 ^ c_out_8;
	assign c_out = c_out_8;
	assign sum = {sum_7, sum_6, sum_5, sum_4, sum_3, sum_2, sum_1, sum_0};


endmodule
