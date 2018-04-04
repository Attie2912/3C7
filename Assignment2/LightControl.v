`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:02 03/22/2018 
// Design Name: 
// Module Name:    LightControl 
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
module LightControl(
	input wire clk,
	input wire reset, max_r, max_y, max_g, pedestrian, 
	//output reg tick, 
	output reg red, green, yellow, walk, dont_walk
    );

	// signal declaration
	//reg [3:0] timer = 4'b0000;	
	reg [2:0] state_next, state_reg;
	
	//define local parameters
localparam [1:0] Red = 2'b00,	
	Green = 2'b01,
	Yellow = 2'b10;
		
		// state register
		reg reset_next, reset_count;
	always @(posedge clk)
	if(reset)		//reset sets state back to red 
	begin				//and counter to 0
		state_reg <= Red;
		reset_count <= 1'b1;
	end
	else
	begin
		state_reg <= state_next;
		//reset_count = 1'b0;
		reset_count <= reset_next;	
	end
		
		// next-state logic and output logic
		always @*
			begin
			state_next = state_reg; // default state: the same
			//tick <= 1'b1;
			reset_next = 1'b0;
	
			//timer <= timer + 1; 
		case(state_reg)
			// Red : if (max_r)   //keep red on for 10 seconds, then move to green
			// begin								//if timer is less than 10 continue in red state
			//	state_next <= Red;
				//timer <= timer + 4'b0001;
			//	 red=1; yellow=0; green=0; 
			 //tick <= 1'b1;
			//end
			//	else
			//	begin									//else move to green amd reset timer 	
				//	timer <= 4'b0000;
			//		state_next <= Green;
			//	end
				
				Red:	//red for 6
		//if(clk)
			begin
				green = 1'b0;
				red = 1'b1;
				yellow = 1'b0;
				dont_walk = 1'b0;
				walk = 1'b1;
				
			//	if (q < 4'b0101)
				//if(ped)
				//	state_reg <=R;
				//else
			if(pedestrian)
				state_reg <=Red;
				
			else
				begin
				if (max_r)
					begin
						state_next = Green;	//if more than 6, go to Yellow
						reset_next = 1'b1;
					end
				else
					state_next = Red;
				end
			end
			
			 //Green : if (timer < 4'b0100)  //keep red on for 4 seconds, then move to yellow
			 //begin
			//	 state_next <= Green;			//if timer is less than 4 continue in red state
			//	 timer <= timer + 4'b0001;
			//end
			//	 else
			//	begin
			//	timer <= 4'b0000;
			//	 state_next <= Yellow;
				  
				//end
				
				Green:	//green for 4
			//if(clk)
			begin
				green = 1'b1;
				red = 1'b0;
				yellow = 1'b0;
				dont_walk = 1'b1;
				walk = 1'b0;
			//if(ped)
			//	state_reg <=R;
			//else
			if(pedestrian)
				state_reg <=Yellow;
			else
			
			begin
				if (max_g)	
					begin
						state_next = Yellow;
						reset_next = 1'b1;
					end
				else	
					state_next = Green;
			end
			end

			 //Yellow : if(timer < 4'b0011) //keep red on for 3 seconds, then move to red
			//		begin							//if timer is less than 10 continue in red state
			//			state_next <= Yellow;
			//			timer <= timer + 4'b0001;
			//		end
			//	  else    
			//	  begin
			//	  state_next = Red;
			//	  timer <= 4'b0000
			//	  end
				  
				  Yellow:	//yellow for 2
		//if(clk)
			begin
					green = 1'b0;
					red = 1'b0;
					yellow = 1'b1;
					dont_walk = 1'b0;
					walk = 1'b1;
				//if (q < 4'b0001)
				//if(ped)
				//	state_reg <=R;	
				//else
				if(pedestrian)
				state_reg <=Yellow;
				else
				begin
					if (max_y)
						begin
							state_next = Red;
							reset_next = 1'b1;
						end
					else		//if more than 2, go to Green
						state_next = Yellow;
				end
			end
			 
			 default :               
						begin
						state_next = Green ;
						end
		endcase
		end
	
	//  always @* 
	  //begin
    //case(state_reg)
    //  Red: 		begin red=1; yellow=0; green=0; end
	//	Green: 	begin red=0; yellow=0; green=1; end
    //  Yellow: begin red=0; yellow=1; green=0; end
    //  default:  begin red=1; yellow=0; green=0; end
    //endcase
  //end
endmodule
