`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:42 03/27/2018 
// Design Name: 
// Module Name:    LightControl_tb 
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
module LightControl_tb;
		//Signals
	  wire red, yellow, green;
	  reg clk, reset;
	  reg [3:0] timer;
	  reg [1:0] state_next, state_reg; 
	  
	  parameter Red=3'b000;
	  parameter Yellow=3'b010;
	  parameter Green=3'b100;
	  
	  LightControl uut (.clk(clk), .reset(reset), .red(red), .yellow(yellow), .green(green));
	  
	  initial 
	  begin     
		 clk = 0;
		 reset = 0;
		 state_reg = Red;
		 #40;
	  end
	  
	  always #10 clk = ~clk;
	  
endmodule

	
	
