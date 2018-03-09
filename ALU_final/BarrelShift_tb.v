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
	reg [31:0] a_test;
	reg [4:0] amt_test;
	wire [31:0] y_test;
	reg direction_test;
		//reg [3:0] key;

   // instantiate the circuit under test
   BarrelShift uut
      (.a(a_test), .amt(amt_test), .y(y_test), .direction(direction_test));

   //  test vector generator
   initial
   begin
      // test vector 1, testing case 7 is pressed
		a_test = 00000000000000000000000010011001;
		amt_test = 00000;
		direction_test = 1;
      # 200;
		
		a_test = 00000000000000000000000010011001;
		amt_test = 00000;
		direction_test = 0;
      # 200;
		
      // test vector 2, testing case 5 is pressed
		a_test = 00000000000000000000000010011001;
		amt_test = 00001;
		direction_test = 1;
      # 200;
		
		a_test = 00000000000000000000000010011001;
		amt_test = 00001;
		direction_test = 0;
      # 200;
		
      // test vector 3, testing case 3 is pressed
		a_test = 00000000000000000000000010011001;
		amt_test = 00010;
		direction_test = 1;
      # 200;
		
		a_test = 00000000000000000000000010011001;
		amt_test = 00010;
		direction_test = 0;
      # 200;
		
      // test vector 4, testing case 9 is pressed
 		a_test = 00000000000000000000000010011001;
		amt_test = 00100;
		direction_test = 1;
      # 200;
		
		a_test = 00000000000000000000000010011001;
		amt_test = 00100;
		direction_test = 0;
      # 200;

      // test vector 5, testing case # is pressed
		a_test = 00000000000000000000000010011001;
		amt_test = 00111;
		direction_test = 1;
      # 200;
	
		a_test = 00000000000000000000000010011001;
		amt_test = 00111;
		direction_test = 0;
      # 200;
		

      // stop simulation
      $stop;
   end
   initial $monitor(direction_test,, a_test,,, amt_test,, y_test);


endmodule