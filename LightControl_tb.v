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
	  wire red, yellow, green, tick;
	  reg clk, reset;
	  reg [3:0] timer;
	  reg [2:0] state_next, state_reg; 
	  
	  parameter Red=3'b000;
	  parameter Yellow=3'b010;
	  parameter Green=3'b100;
	  
	  LightControl uut (.clk(clk), .reset(reset), .tick(tick), .red(red), .yellow(yellow), .green(green));
	  
	  initial 
	  begin     
	    //timer = 4'b0000;
		  clk = 0;
		  reset = 1'b1;
		 //state_reg = Red;
	  end
	  
	  always
	  begin
	  		 #100 reset = 1'b1;
		 #20 reset = 1'b0;
		#1000;
	  end
	  
	  
	  always #10 clk = ~clk;
	  
	  /*initial s
	  begin
	  state_reg = Red;
	  #10 reset = 1;
	  clk = 0;
	  end
	  
	  always #5 clk = ~clk;*/
	  
	  
endmodule

	
	
