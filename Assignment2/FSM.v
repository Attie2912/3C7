`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:47 04/03/2018 
// Design Name: 
// Module Name:    FSM 
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
module FSM(
	input wire clk, reset, pedestrian, 
	output wire red, yellow, green, clk_out, dont_walk, walk
);
wire [5:0] q_r, q_y, q_g;
wire reset_count, max_tick, tick_r, tick_y, tick_g;

clock clock_unit (.CCLK(clk), .clk(clk_out));

Max_Tick #(.M(10)) red_tick (.clk(clk_out), .max_tick(max_r), .q(q_r), .reset(reset_count));
Max_Tick #(.M(3)) yellow_tick(.clk(clk_out), .max_tick(max_y), .q(q_y), .reset(reset_count));
Max_Tick #(.M(4)) green_tick (.clk(clk_out), .max_tick(max_g), .q(q_g), .reset(reset_count));

//Max_Tick #(.M(5)) counter_ped(.clk(out_clk), .max_tick(max_ped), .q(q_ped), .reset(reset_count));
//counter count_unit (.clk(clk), .reset(reset_count), .max_tick(max_tick), .q(q));

LightControl light (.clk(clk), .reset(reset), .max_r(max_r), .max_y(max_y), .max_g(max_g), .pedestrian(pedestrian),  .red(red), .yellow(yellow), .green(green), .walk(walk), .dont_walk(dont_walk));


endmodule
