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
	reg [7:0] test_x, test_y;
	wire [7:0] test_sum;

   // instantiate the circuit under test
   Select uut
      (.select(test_select), .a(test_x), .b(test_y), .x(test_sum));

   //  test vector generator
   initial
   begin
	
      // test vector 1

		test_select = 0000;
		test_x = 00000000;
		test_y = 00000000;
      # 200;
		
		// test vector 2
		test_select = 0001;
		test_x = 00000001;
		test_y = 00000100;
      # 200;
		
		// test vector 3

		test_select = 0010;
		test_x = 10000001;
		test_y = 10000100;
      # 200;		

		// test vector 4

		test_select = 0011;
		test_x = 00000001;
		test_y = 00000101;
      # 200;
		
		// test vector 5

		test_select = 0100;
		test_x = 10000001;
		test_y = 10000101;
      # 200;
		
		// test vector 6

		test_select = 0101;
		test_x = 10000101;
		test_y = 00000101;
      # 200;
		
		// test vector 7

		test_select = 0110;
		test_x = 00000101;
		test_y = 10000101;
      # 200;
		
		// test vector 8

		test_select = 0111;
		test_x = 11111111;
		test_y = 10000001;

      # 200;
		
		// test vector 9

		test_select = 1000;
		test_x = 11111111;
		test_y = 01111110;
      # 200;
		
		// test vector 10

		test_select = 1001;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 11

		test_select = 1010;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 12

		test_select = 1011;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 13

		test_select = 1100;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
		// test vector 14

		test_select = 1111;
		test_x = 011111111;
		test_y = 01000001;
      # 200;
		
      // stop simulation
      $stop;
   end
   initial $monitor(test_select,, test_x,, test_y,,,test_sum);


endmodule
