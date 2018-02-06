`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:45 02/06/2018 
// Design Name: 
// Module Name:    BarrelShift_tb 
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
`timescale 1 ns/10 ps

module BarrelShift_tb;


   // signal declaration			
	reg [7:0] a_test;
	reg [2:0] amt_test;
	wire [7:0] y_test;
	reg direction_test;
		//reg [3:0] key;

   // instantiate the circuit under test
   BarrelShift uut
      (.a(a_test), .amt(amt_test), .y(y_test), .direction(direction_test));

   //  test vector generator
   initial
   begin
      // test vector 1, testing case 7 is pressed
		a_test = 10011001;
		amt_test = 000;
		direction_test = 1;
      # 200;
		
		a_test = 10011001;
		amt_test = 000;
		direction_test = 0;
      # 200;
		
      // test vector 2, testing case 5 is pressed
		a_test = 10011001;
		amt_test = 001;
		direction_test = 1;
      # 200;
		
		a_test = 10011001;
		amt_test = 001;
		direction_test = 0;
      # 200;
		
      // test vector 3, testing case 3 is pressed
		a_test = 10011001;
		amt_test = 010;
		direction_test = 1;
      # 200;
		
		a_test = 10011001;
		amt_test = 010;
		direction_test = 0;
      # 200;
		
      // test vector 4, testing case 9 is pressed
 		a_test = 10011001;
		amt_test = 100;
		direction_test = 1;
      # 200;
		
		a_test = 10011001;
		amt_test = 100;
		direction_test = 0;
      # 200;

      // test vector 5, testing case # is pressed
		a_test = 10011001;
		amt_test = 111;
		direction_test = 1;
      # 200;
	
		a_test = 10011001;
		amt_test = 111;
		direction_test = 0;
      # 200;
		

      // stop simulation
      $stop;
   end
   initial $monitor(direction_test,, a_test,,, amt_test,, y_test);


endmodule