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
	input wire reset,
	output reg red, green, yellow
    );

	// signal declaration
	reg [3:0] timer;
	reg [1:0] state_next, state_reg; 
	
	//define local parameters
		localparam [2:0] Red = 3'b000;
		localparam [2:0] Green = 3'b010;
		localparam [2:0] Yellow = 3'b001;
		
		always @(posedge clk, posedge reset)
		if (reset)
		state_reg <= Red;
		else
		state_reg <= state_next;
		
	// state register
		// next-state logic and output logic
		always @*
			begin
			state_next = state_reg; // default state: the same

		case(state_reg)
			 Red : if (timer < 4'b1010)   //keep red on for 10 seconds, then move to green
			 begin								//if timer is less than 10 continue in red state
				state_next <= Red;
				timer <= timer + 4'b0001;
			end
				else
				begin									//else move to green amd reset timer 	
					timer <= 4'b0000;
					state_next <= Green;
				end
			
			 Green : if (timer < 4'b0100)  //keep red on for 4 seconds, then move to yellow
			 begin
				 state_next <= Green;			//if timer is less than 4 continue in red state
				 timer <= timer + 4'b0001;
				 end
				 else
				begin
				timer <= 4'b0000;
				 state_next <= Yellow;
				end
			 Yellow : if(timer < 4'b0011) //keep red on for 3 seconds, then move to red
					begin							//if timer is less than 10 continue in red state
						state_next <= Yellow;
						timer <= timer + 4'b0001;
					end
				  else    
				  begin
				  state_next = Red;
				  timer <= 4'b0000;
				  end
			 
			 default :               
						begin
						state_next = Red ;
						end
		endcase
	end
	
	  always @* 
	  begin
    case(state_reg)
      Red: 		begin red=1; yellow=0; green=0; end
		Green: 	begin red=0; yellow=0; green=1; end
      Yellow: begin red=0; yellow=1; green=0; end
      default:  begin red=1; yellow=0; green=0; end
    endcase
  end
endmodule
