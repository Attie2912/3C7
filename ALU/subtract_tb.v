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
module subtract_tb;

   // signal declaration			
	reg [7:0] test_x, test_y;
	reg test_cin;
	wire [7:0] test_sum;
	wire test_cout, test_overflow; 

   // instantiate the circuit under test
   Subtract uut
      (.a(test_x), .b(test_y), .c_in(test_cin), .overflow(test_overflow), .c_out(test_cout), .sum(test_sum));

   //  test vector generator
   initial
   begin
	
      // test vector 1
		test_x = 00000000;
		test_y = 00000000;
		test_cin = 0;
      # 200;
		
		// test vector 2
		test_x = 00000001;
		test_y = 00000100;
		test_cin = 0;
      # 200;
		
		// test vector 3
		test_x = 10000001;
		test_y = 10000100;
		test_cin = 0;
      # 200;		

		// test vector 4
		test_x = 00000001;
		test_y = 00000101;
		test_cin = 0;
      # 200;
		
		// test vector 5
		test_x = 10000001;
		test_y = 10000101;
		test_cin = 0;
      # 200;
		
		// test vector 6
		test_x = 10000101;
		test_y = 00000101;
		test_cin = 0;
      # 200;
		
		// test vector 7
		test_x = 00000101;
		test_y = 10000101;
		test_cin = 0;
      # 200;
		
		// test vector 8
		test_x = 11111111;
		test_y = 10000001;
		test_cin = 0;
      # 200;
		
		// test vector 9
		test_x = 11111111;
		test_y = 01111110;
		test_cin = 0;
      # 200;
		
		// test vector 10
		test_x = 011111111;
		test_y = 01000001;
		test_cin = 0;
      # 200;
		
		
      // stop simulation
      $stop;
   end
   initial $monitor(test_x,, test_y,,, test_cin,, test_overflow,, test_cout,,, test_sum);


endmodule
