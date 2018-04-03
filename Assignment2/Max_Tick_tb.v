`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:06 04/03/2018 
// Design Name: 
// Module Name:    Max_Tick_tb 
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
module Max_Tick_tb;

	//declaration
	localparam T=40;
	reg clk, reset;
	wire [5:0] q;
		
	//uut instantiation
	Max_Tick #(.M(15)) uut 
		(.clk(clk), .reset(reset), .q(q));
	
	//clock
	//10ns clock running forever
	 initial
		begin
			clk = 1'b1;
		end
	always
		begin
			#10 clk = ~clk; //clock signal has period of 20ns
		end
	
	//reset for first half cycle
	initial
	begin
		reset = 1'b1;
		#(T/2);
		reset = 1'b0;
	end

endmodule
