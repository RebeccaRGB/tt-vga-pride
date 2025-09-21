module cool_crab_rom (
  input wire [9:0] x,
  input wire [8:0] y,
  output wire [6:0] pixel
);

  wire [6:0] bpixel;
  cool_crab_rom_b b(x[9:1], (y[8:1] - 8'd38), bpixel);
  assign pixel = ((bpixel == 7'b1110011) ? {(x[0] ^ y[0]), 6'b000000} : bpixel);

endmodule
