`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Trinity College Dublin
// Engineer: Sophie Hegarty
// 
// Create Date:    14:27:13 02/01/2018 
// Design Name: key pad decoder, lab C, week3	
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
		
		input wire row_a, row_b, row_c, row_d,  col_x, col_y, col_z; //input all rows and columns as 1-bits

		output reg [3:0]key_value; //key_value 4 bit output
		output reg key_valid; //key_valid, 1-bit boolean value 1 = true, 0 = false


		always@*
		begin

			case({row_a, row_b, row_c, row_d, col_x, col_y, col_z})//concatinate all inputs to a 7 bit value with row a being MSB etc.
					//iterate through all if's, ie all possible button presses and a default
					7'b0010100: key_value = 4'b0001; //row c & col x value = 1, keyvalue set using case satatement
					7'b0010010: key_value = 4'b0010; //row c & col y value = 2
					7'b0010001: key_value = 4'b0011; //row c & col z value = 3
					7'b0100100: key_value = 4'b0100; //row b & col x value = 4
					7'b0100010: key_value = 4'b0101; //row b & col y value = 5
					7'b0100001: key_value = 4'b0110; //row b & col z value = 6
					7'b1000100: key_value = 4'b0111; //row a & col x value = 7
					7'b1000010: key_value = 4'b1000; //row a & col y value = 8
					7'b1000001: key_value = 4'b1001; //row a & col x value = 9
					7'b0001100: key_value = 4'b0000; //row d & col x value = 0
					7'b0001010: key_value = 4'b1111; //row d & col x value = # ie key_value = 15
					7'b0001010: key_value = 4'b1010; //row d & col x value = * ie key_value = 10
					default: key_value = 4'b1011; //default set to 11 as it isn't used above. 
			endcase
			//key_valid, if the input values of 'rows' = 1 when added up and value of 'cols' = 1 when added up then keyvalid = 1, 0 otherwise
			key_valid = (((row_a + row_b + row_c + row_d)== 3'b001) && ((col_x + col_y + col_z)== 3'b001));
		end
endmodule
