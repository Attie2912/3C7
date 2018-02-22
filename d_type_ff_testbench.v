`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:38 02/22/2018 
// Design Name: 
// Module Name:    d_type_ff_testbench 
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
module d_type_ff_testbench();

	localparam T=40; // clock period
	reg clk, reset;
	reg d;
   wire q;
	
		d_ff_reset uut (.clk(clk), .reset(reset), .d(d), .q(q));
		
	//clock generator
	initial
		begin
			clk = 1'b0;
			forever #(T/2) clk = !clk; // negate to oscillate 20ns
		end
	
	//reset generator
	initial 
		begin
			 reset = 1'b1; // reset set to high for 10ns initially 
			
			#75 reset = 1'b0;
		end 
		always
		begin
			#(4*T) reset = !reset; //low for 160ns
			
			#75 reset = 1'b0;
		end
		
		initial 
		begin
			 d = 1'b0; // reset set to high for 10ns initially 
			
			#50 d = 1'b0;
			
			#50 d = 1'b1; //low for 160ns
			
			#50 d = 1'b0; //low for 160ns
			
			#160 d = 1'b1;
			
			d = !d;
			
		end

endmodule
