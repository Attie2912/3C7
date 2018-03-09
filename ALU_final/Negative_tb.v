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
module negative_tb;

   // signal declaration			
	reg [7:0] test_a;
	wire [7:0] test_x;


   // instantiate the circuit under test
   Negative uut
      (.in(test_a), .x(test_x));

   //  test vector generator
   initial
   begin
	
      // test vector 1
		test_a = 00000000;

      # 200;
		
		// test vector 2
		test_a = 00000001;

      # 200;
		
		// test vector 3
		test_a = 10000001;
      # 200;		

		// test vector 4
		test_a = 11000001;
      # 200;
		
		// test vector 5
		test_a = 10000111;
      # 200;
		
		// test vector 6
		test_a = 10000101;
      # 200;
		
		// test vector 7
		test_a = 00000101;
      # 200;
		
		// test vector 8
		test_a = 11111111;
      # 200;
		
		// test vector 9
		test_a = 11111110;
      # 200;
		
		// test vector 10
		test_a = 011111111;
      # 200;
		
		
      // stop simulation
      $stop;
   end
   initial $monitor(test_a,, test_x);


endmodule
