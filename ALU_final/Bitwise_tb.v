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
module bitwise_tb;

   // signal declaration			
	reg [7:0] test_a, test_b;
	wire [7:0] test_x;


   // instantiate the circuit under test
   Bitwise uut
      (.a(test_a), .b(test_b),  .x(test_x));

   //  test vector generator
   initial
   begin
	
      // test vector 1
		test_a = 00000000;
		test_b = 00000000;
      # 200;
		
		// test vector 2
		test_a = 00000001;
		test_b = 00000100;
      # 200;
		
		// test vector 3
		test_a = 10000001;
		test_b = 10000100;
      # 200;		

		// test vector 4
		test_a = 00000001;
		test_b = 00000101;
      # 200;
		
		// test vector 5
		test_a = 10000001;
		test_b = 10000101;
      # 200;
		
		// test vector 6
		test_a = 10000101;
		test_b = 00000101;
      # 200;
		
		// test vector 7
		test_a = 00000101;
		test_b = 10000101;
      # 200;
		
		// test vector 8
		test_a = 11111111;
		test_b = 10000001;
      # 200;
		
		// test vector 9
		test_a = 11111111;
		test_b = 01111110;
      # 200;
		
		// test vector 10
		test_a = 011111111;
		test_b = 01000001;
      # 200;
		
		
      // stop simulation
      $stop;
   end
   initial $monitor(test_a,, test_b,,, test_x);


endmodule
