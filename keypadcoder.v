`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:13 02/01/2018 
// Design Name: 
// Module Name:    keypadcoder 
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
module keypadcoder(row_a, row_b, row_c, row_d, col_x, col_y, col_z, key_valid, key_value);
		
		input wire row_a, row_b, row_c, row_d,  col_x, col_y, col_z;

		output reg [3:0]key_value; 
		output reg key_valid;


		always@*
		begin

			case({row_a, row_b, row_c, row_d, col_x, col_y, col_z})//concatinate all inputs to a 7 bit value
					7'b0010100: key_value = 4'b0001; //row c & col x value = 1
					7'b0010010: key_value = 4'b0010; //row c & col y value = 2
					7'b0010001: key_value = 4'b0011; //row c & col z value = 3
					7'b0100100: key_value = 4'b0100; //row b & col x value = 4
					7'b0100010: key_value = 4'b0101; //row b & col y value = 5
					7'b0100001: key_value = 4'b0110; //row b & col z value = 6
					7'b1000100: key_value = 4'b0111; //row a & col x value = 7
					7'b1000010: key_value = 4'b1000; //row a & col y value = 8
					7'b1000001: key_value = 4'b1001; //row a & col x value = 9
					7'b0001100: key_value = 4'b0000; //row d & col x value = 0
					7'b0001010: key_value = 4'b1111; //row d & col x value = # ie 15
					7'b0001010: key_value = 4'b1010; //row d & col x value = * ie 10
					default: key_value = 4'b1011; //default set to 11 as it is used above. 
			endcase
		
			key_valid = (((row_a + row_b + row_c + row_d)== 3'b001) && ((col_x + col_y + col_z)== 3'b001));
		end
endmodule
