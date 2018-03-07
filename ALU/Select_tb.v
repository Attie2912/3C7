`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:26 02/08/2018 
// Design Name: 
// Module Name:    eightBitAdder_tb 
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
module select_tb;

   // signal declaration
	reg [3:0] test_select;	
	reg [7:0] test_x, test_y,  t_negative_A, t_negative_B, t_ror_A, t_ror_B, t_LT, t_bitwise, t_not_A, t_not_B, t_subtract, t_add;
	wire [7:0] test_sum;

   // instantiate the circuit under test
   Select uut
      (.select(test_select), .a(test_x), .b(test_y), .negative_A(t_negative_A), .negative_B(t_negative_B), .ror_A(t_ror_A), .ror_B(t_ror_B), .LT(t_LT), .bitwise(t_bitwise), .not_A(t_not_A), .not_B(t_not_B), .subtract(t_subtract), .add(t_add), .x(test_sum));

   //  test vector generator
   initial
   begin
	
      // test vector 1
		t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0000;
		test_x = 00000000;
		test_y = 00000000;
      # 200;
		
		// test vector 2
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0001;
		test_x = 00000001;
		test_y = 00000100;
      # 200;
		
		// test vector 3
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0010;
		test_x = 10000001;
		test_y = 10000100;
      # 200;		

		// test vector 4
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0011;
		test_x = 00000001;
		test_y = 00000101;
      # 200;
		
		// test vector 5
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0100;
		test_x = 10000001;
		test_y = 10000101;
      # 200;
		
		// test vector 6
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0101;
		test_x = 10000101;
		test_y = 00000101;
      # 200;
		
		// test vector 7
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0110;
		test_x = 00000101;
		test_y = 10000101;
      # 200;
		
		// test vector 8
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 0111;
		test_x = 11111111;
		test_y = 10000001;

      # 200;
		
		// test vector 9
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 1000;
		test_x = 11111111;
		test_y = 01111110;
      # 200;
		
		// test vector 10
				t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 1001;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 11
		t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 1010;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 12
		t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 1011;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 13
		t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 1100;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 14
		t_negative_A = 00000001;
		t_negative_B = 00000011;
		t_ror_A = 00000111;
		t_ror_B = 00001111;
		t_LT = 00011111;
		t_bitwise = 00111111;
		t_not_A = 01111111;
		t_not_B = 10000000;
		t_subtract = 11000000;
		t_add = 11100000;
		test_select = 1111;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
      // stop simulation
      $stop;
   end
   initial $monitor(test_select,, test_x,, test_y,,,test_sum);


endmodule
