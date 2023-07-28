module nbitgraytobinnary_tb;
parameter n = 32;
  reg [n-1:0]g;
  wire [n-1:0]bin;

  Nbitgray2binary a1(g, bin);

initial
begin
  $dumpfile("dump.vcd"); $dumpvars;
  $monitor($time,"G=%b,B=%b",g,bin);
  repeat(20) begin
    g = $random;
    #3;
  end
end
