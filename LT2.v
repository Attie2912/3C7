//LESS THAN 
module lt2
   (
    input  wire[7:0] a, b,
    output wire [7:0] aeqb2
   );

   // internal signal declaration
   wire e4, e1, e2, e3;
	wire eq, eqq;
	wire lt11, lt2, lt3, lt4, lt5, lt6, lt7, lt;

   // body
   // instantiate two 1-bit comparators
	lt1 lt_bit0_unit (.i0(a[7:6]), .i1(b[7:6]), .lt(lt11));
	eq2 lt_2bit0_unit (.a(a[7:6]), .b(b[7:6]), .aeqb(e1));
	
	lt1 lt_bit1_unit (.i0(a[5:4]), .i1(b[5:4]), .lt(lt2));
	eq2 lt_2bit1_unit (.a(a[5:4]), .b(b[5:4]), .aeqb(e2));

	lt1 lt_bit2_unit (.i0(a[3:2]), .i1(b[3:2]), .lt(lt3));
	eq2 lt_2bit2_unit (.a(a[3:2]), .b(b[3:2]), .aeqb(e3));
	
	lt1 lt_bit3_unit (.i0(a[1:0]), .i1(b[1:0]), .lt(lt4));
	eq2 lt_2bit3_unit (.a(a[1:0]), .b(b[1:0]), .aeqb(e4));
	
   // a and b are equal if individual bits are equal
	assign eq = e4 & e1 & e2 & e3;
	
	assign lt5 = e1 & lt2;
	assign lt6 = e1 & e2 &lt3;
	assign lt7 = e1 & e2 & e3 & lt4;
	assign lt = lt11 | lt5 | lt6 | lt7;
	
   assign aeqb2 = eq & lt;
   

endmodule