`include "flag.vh"
module flag_intersex_v1 `FLAG;
  wire [7:0] cir_x = (pix_x < 320) ? (64 - pix_x[7:0]) : (pix_x[7:0] - 64);
  wire [7:0] cir_y = (pix_y < 240) ? (240 - pix_y[7:0]) : (pix_y[7:0] - 240);
  wire [14:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    (pix_x >= 176 && pix_x < 464 && cir_y < 144 && cir_r >= 10240 && cir_r < 20480) ? `PURPLE :
    `DITHER50(6'b111100,6'b111000)
  );
endmodule
