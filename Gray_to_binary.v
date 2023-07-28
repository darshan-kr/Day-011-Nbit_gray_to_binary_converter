module Nbitgray2binary#(parameter n = 32)
  (
    input [n-1:0]g,
    output [n-1:0]b);
  assign b = {g[n-1], b[n-1:1]^g[n-2:0]};

endmodule
