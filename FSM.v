// Listing 5.4
module FSM
(
input wire clk, reset,
input wire level,
output reg tick
);
	// symbolic state declaration
	localparam A = 2'b00, B = 2'b01, C = 2'b10;
	
	// signal declaration
	reg [1:0] state_next, state_reg;
	
		always @(posedge clk)
		if (reset)
		state_reg <= A;
		else
		state_reg <= state_next;

		
	// state regist
		// next-state logic and output logic
		always @*
			begin
			state_next = state_reg; // default state: the same
			tick = 1'b0; // default output: 0
		
		case(state_reg)
			 A : if (level)   
			 begin
			 state_next = B ;
				//tick = 1'b1 ;
			end
			 B : if (~level)  
			 begin
			 state_next = C ;
			 //tick = 1'b1 ;
			 end
			 C : 
				  begin
				  //tick = 1'b1;
				  
				  if(level)
						begin
						tick = 1'b1 ;
						state_next = B ;
						end
						
				  else    state_next = A ;
				  
				  end
			 default :               
						begin
						tick = 1'b0 ;
						state_next = A ;
						end
		endcase
	end
endmodule
