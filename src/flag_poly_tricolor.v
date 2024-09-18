`include "flag.vh"
module flag_poly_tricolor `FLAG;
  wire [8:0] tri_y = (pix_y < 160) ? (pix_y[8:0] + 160) : (479 - pix_y[8:0]);
  wire [5:0] cir_x = (pix_x < 110) ? (46 - pix_x[5:0]) : (pix_x[5:0] - 46);
  wire [5:0] cir_y1 = (pix_y < 120) ? (56 - pix_y[5:0]) : (pix_y[5:0] - 56);
  wire [5:0] cir_y2 = (pix_y < 200) ? (8 - pix_y[5:0]) : (pix_y[5:0] - 8);
  wire [5:0] cir_y = (pix_y < 160) ? cir_y1 : cir_y2;
  wire [12:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    (pix_x >= 60 && tri_y > 224 && (pix_x + 100) < tri_y && (
      (pix_x > 128 && tri_y > 240) || (cir_r < 2400)
    )) ? 6'b111000 :
    (pix_x < tri_y) ? `WHITE :
    pix_y < (480*1/3) ? `LTBLUE :
    pix_y < (480*2/3) ? `DITHER50(`MAGENTA,`RED) :
    6'b00001
  );
endmodule
