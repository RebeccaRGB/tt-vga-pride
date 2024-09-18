`include "flag.vh"
module flag_voidpunk `FLAG;
  wire [7:0] cir_x = (pix_x < 320) ? (64 - pix_x[7:0]) : (pix_x[7:0] - 64);
  wire [7:0] cir_y = (pix_y < 240) ? (240 - pix_y[7:0]) : (pix_y[7:0] - 240);
  wire [14:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    (pix_x >= 192 && pix_x < 448 && cir_y < 128 && cir_r < 10240) ? (cir_r >= 4096 ? `WHITE : `BLACK) :
    pix_y < (480*1/5) ? `DITHER50(6'b010001,6'b000001) :
    pix_y < 220 ? `DITHER50(6'b100110,6'b010110) :
    pix_y < 260 ? `WHITE :
    pix_y < (480*4/5) ? 6'b011001 :
    6'b000100
  );
endmodule
