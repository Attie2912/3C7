`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:41 03/14/2018 
// Design Name: 
// Module Name:    FSM_tb 
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
module FSM_tb;

	//Signals
	reg clk, reset ;
	reg level ;
	wire tick ;
   // instantiate the circuit under test
   FSM uut
      ( .clk(clk), .reset(reset), .level(level), .tick(tick));



	//Initialise reg ports 
	initial
	begin
	clk = 1'b0 ;
	level = 1'b0;
	end

	always #20 clk = ~clk ;
	
	//Set initial reset
	initial     
	begin
	reset = 1'b1 ;
	#20 reset = 1'b0 ;
	#200 reset = 1'b1;
	#20 reset = 1'b0;
	end

	//Set occurance of sequence
		initial
		begin
		#20     level = 1'b0 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b0 ; 
		#20     level = 1'b1 ; 
		#40     level = 1'b0 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b1 ; 
		#20     level = 1'b0 ; 
		#20     level = 1'b1 ; 

		end
endmodule 

