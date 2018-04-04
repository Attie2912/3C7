`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:48 04/03/2018 
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

	reg clk, reset, pedestrian;
	wire red, yellow, green, walk, dont_walk;
   // instantiate the circuit under test
	FSM uut
  (.clk(clk), .reset(reset), .pedestrian(pedestrian),  .red(red), .yellow(yellow), .green(green), .walk(walk), .dont_walk(dont_walk));
   //  test vector generator
	initial		
   begin
		clk = 1'b1;
	end
	always
		begin
			#20 clk = ~clk;
		end	
	initial
	begin
		reset = 1'b1;
		pedestrian = 1'b0;
		#80
		reset = ~reset;
		#700
		pedestrian = 1'b1;
		#10
		pedestrian = 1'b0;
		
	end
   initial $monitor(clk,, reset,,red,,yellow,,green);
endmodule

