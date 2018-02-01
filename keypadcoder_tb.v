//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:18 02/01/2018 
// Design Name: 
// Module Name:    keypadcoder_tb 
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
// Listing 1.7
// The `timescale directive specifies that
// the simulation time unit is 1 ns  and
// the simulation timestep is 10 ps
`timescale 1 ns/10 ps

module keypadcoder_tb;


   // signal declaration			
	reg testA, testB, testC, testD,  testX, testY, testZ;
	wire [3:0]testValue; 
	wire testValid;
		//reg [3:0] key;

   // instantiate the circuit under test
   keypadcoder uut
      (.row_a(testA), .row_b(testB), .row_c(testC), .row_d(testD), .col_x(testX), .col_y(testY), .col_z(testZ),  .key_value(testValue), .key_valid(testValid));

   //  test vector generator
   initial
   begin
      // test vector 1, testing case 7 is pressed
      testA = 1'b1;
		testB = 1'b0;
		testC = 1'b0;
		testD = 1'b0;
		testX = 1'b1;
		testY = 1'b0;
		testZ = 1'b0;
      # 200;
		
      // test vector 2, testing case 5 is pressed
      testA = 1'b0;
		testB = 1'b1;
		testC = 1'b0;
		testD = 1'b0;
		testX = 1'b0;
		testY = 1'b1;
		testZ = 1'b0;
      # 200;
		
      // test vector 3, testing case 3 is pressed
      testA = 1'b0;
		testB = 1'b0;
		testC = 1'b1;
		testD = 1'b0;
		testX = 1'b0;
		testY = 1'b0;
		testZ = 1'b1;
      # 200;
		
      // test vector 4, testing case 9 is pressed
      testA = 1'b1;
		testB = 1'b0;
		testC = 1'b0;
		testD = 1'b0;
		testX = 1'b0;
		testY = 1'b0;
		testZ = 1'b1;
      # 200;

      // test vector 5, testing case # is pressed
      testA = 1'b0;
		testB = 1'b0;
		testC = 1'b0;
		testD = 1'b1;
		testX = 1'b0;
		testY = 1'b1;
		testZ = 1'b0;
      # 200;

      // test vector 6, testing case 5 + 6 is pressed
      testA = 1'b0;
		testB = 1'b1;
		testC = 1'b0;
		testD = 1'b0;
		testX = 1'b0;
		testY = 1'b1;
		testZ = 1'b1;
      # 200;
		
      // test vector 7, testing case 1 + 2 is pressed
      testA = 1'b0;
		testB = 1'b0;
		testC = 1'b1;
		testD = 1'b0;
		testX = 1'b1;
		testY = 1'b1;
		testZ = 1'b0;
      # 200;
		
		// test vector 8, testing case 7 + 4 is pressed
      testA = 1'b1;
		testB = 1'b1;
		testC = 1'b0;
		testD = 1'b0;
		testX = 1'b1;
		testY = 1'b0;
		testZ = 1'b0;
      # 200;

      // stop simulation
      $stop;
   end
   initial $monitor(testA, testB, testC, testD,  testX, testY, testZ, testValue, testValid);


endmodule
