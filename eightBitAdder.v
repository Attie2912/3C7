`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:50 02/08/2018 
// Design Name: 
// Module Name:    eightBitAdder 
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
module eightBitAdder(x, y, c_in, overflow, c_out, sum);
	input wire [7:0] x, y;
	input wire c_in;
	output wire overflow, c_out; 
	output wire [7:0]sum;
	
	wire c_out_1, c_out_2, c_out_3, c_out_4, c_out_5, c_out_6, c_out_7, c_out_8;
	wire sum_0, sum_1, sum_2, sum_3, sum_4, sum_5, sum_6, sum_7; 
	
	FullAdder bit_0(.a(x[0]), .b(y[0]), .cin(c_in), .s(sum_0), .cout(c_out_1)); 
	FullAdder bit_1(.a(x[1]), .b(y[1]), .cin(c_out_1), .s(sum_1), .cout(c_out_2)); 
	FullAdder bit_2(.a(x[2]), .b(y[2]), .cin(c_out_2), .s(sum_2), .cout(c_out_3));
	FullAdder bit_3(.a(x[3]), .b(y[3]), .cin(c_out_3), .s(sum_3), .cout(c_out_4));
	FullAdder bit_4(.a(x[4]), .b(y[4]), .cin(c_out_4), .s(sum_4), .cout(c_out_5));
	FullAdder bit_5(.a(x[5]), .b(y[5]), .cin(c_out_5), .s(sum_5), .cout(c_out_6));
	FullAdder bit_6(.a(x[6]), .b(y[6]), .cin(c_out_6), .s(sum_6), .cout(c_out_7));
	FullAdder bit_7(.a(x[7]), .b(y[7]), .cin(c_out_7), .s(sum_7), .cout(c_out_8));
	
	assign overflow = c_out_7 ^ c_out_8;
	assign c_out = c_out_8;
	assign sum = {sum_7, sum_6, sum_5, sum_4, sum_3, sum_2, sum_1, sum_0};

endmodule
