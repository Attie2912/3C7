//Less than or equal to 
module eq1   // I/O ports
   (
    input wire[1:0] i0, i1,
    output wire lt
   );

   // signal declaration
   wire p0, p1, p2;  

   // body
   // sum of two product terms
   assign lt = p0 | p1 | p2;
   // product terms
   assign p0 = ~i0[0] & i1[0];
   assign p1 = ~i0[0] & ~i0[1] & i1[1];
	assign p2 = ~i0[1] & i1[0] & i1[1];
	endmodule 
