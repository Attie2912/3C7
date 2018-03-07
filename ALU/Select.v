`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:02 02/15/2018 
// Design Name: 
// Module Name:    Negative 
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
module Select(select, a, b, x);
	input wire [3:0] select;
	input wire [7:0] a, b /*negative_A, negative_B, ror_A, ror_B, LT, bitwise, not_A, not_B, subtract, add*/;
	output reg[7:0] x;
	wire [7:0] negative_A, negative_B, ror_A, ror_B, LT, bitwise, not_A, not_B, subtract, add;
  
  Negative negative_a(.in(a), .x(negative_A));
  Negative negative_b(.in(b), .x(negative_B));
  BarrelShift rorA(.a(a), .amt(3'b100), .y(ror_A), .direction(1'b0));
  BarrelShift rorB(.a(b), .amt(3'b100), .y(ror_B), .direction(1'b0));
  lt2 lessthan(.a(a), .b(b), .aeqb2(LT));
  Bitwise bitwise1(.a(a), .b(b), .x(bitwise));
  Not not1(.in(a), .x(not_A));
  Not not2(.in(b), .x(not_B));
  //Subtract(.a(a), .b(b), .x(subtract));
  
  
  //this is not the right syntax for case statement
   always@*
	begin
    case(select)
      4'b0000: x = 8'b00000000;
      4'b0001: x = a;
		4'b0010: x = b;
		4'b0011: x = negative_A;
		4'b0100: x = negative_B;
		4'b0101: x = ror_A;
		4'b0110: x = ror_B;
		4'b0111: x = LT;
		4'b1000: x = bitwise;
		4'b1001: x = not_A;
		4'b1010: x = not_B;
		4'b1011: x = subtract;
		4'b1100: x = add;
		4'b1111: x = 8'b11111111;
		default: x = 8'b10000001;
		endcase
	end
endmodule
