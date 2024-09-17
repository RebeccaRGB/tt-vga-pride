`include "flag.vh"
module flag_intersex_v1 `FLAG;
  wire [9:0] cir_x = (pix_x < 320) ? (320 - pix_x) : (pix_x - 320);
  wire [9:0] cir_y = (pix_y < 240) ? (240 - pix_y) : (pix_y - 240);
  wire [17:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    cir_r < 10000 ? `DITHER50(6'b111100,6'b111000) :
    cir_r < 20000 ? `PURPLE :
    `DITHER50(6'b111100,6'b111000)
  );
endmodule
