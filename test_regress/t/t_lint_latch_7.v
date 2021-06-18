module test
  (input  logic       a,
   input  logic [7:0] b,
   output logic [7:0] c);

   always_comb begin : p
      c = b;
      if (a) begin : x
         logic [7:0] n;
         n = b;
         n += 8'h01;
         c = n;
      end : x
   end : p
endmodule